module sar_adc (
    input  wire       clk,
    input  wire       rst_n,   
    input  wire       d_in,      // Decisão do Comparador
    output wire [7:0] d_out,     // Vai para as chaves b7 a b0 do DAC
    output wire       AmpOp_SW,  // Chave de Auto-Zero do Comparador
    output wire       C_SW,      // Chave do Capacitor Dummy (1C)
    output wire       V_SW,      // Chave Mestra Roteadora (Vin vs Vref)
    output wire       eoc        // End of Conversion (Flag de Término)
);

    // --- Definição dos Estados ---
    localparam ST_SAMPLE = 2'b00; // Fase 1: Amostragem
    localparam ST_HOLD   = 2'b01; // Fase 2: Assentamento da carga (Hold)
    localparam ST_CONV   = 2'b10; // Fase 3: Bit Cycling
    localparam ST_DONE   = 2'b11; // Fim

    reg [1:0] state;
    reg [7:0] result; 
    reg [7:0] mask;   

    // --- Lógica Combinacional das Chaves ---
    // Apenas na FASE 1 os switches vão para 1 (ligando no VIN e fechando o AmpOp).
    // Nas FASES 2 e 3, todos caem para 0 (ligando no VREF, VSS e abrindo o AmpOp).
    assign AmpOp_SW = (state == ST_SAMPLE);
    assign V_SW     = (state == ST_SAMPLE);
    assign C_SW     = (state == ST_SAMPLE);
    
    // Flag de Fim de Conversão
    assign eoc      = (state == ST_DONE);

    // --- Multiplexador do Barramento do DAC ---
    assign d_out    = (state == ST_SAMPLE) ? 8'hFF :           // FASE 1: VIN na matriz
                      (state == ST_HOLD)   ? 8'h00 :           // FASE 2: VSS na matriz (puxa o net8 pra baixo)
                      (state == ST_CONV)   ? (result | mask) : // FASE 3: Injeta VREF bit a bit
                                             result;           // Final

    // --- Máquina de Estados ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state  <= ST_SAMPLE;
            result <= 8'b0;
            mask   <= 8'b1000_0000;
        end 
        else begin
            case (state)
                ST_SAMPLE: begin
                    result <= 8'b0;
                    mask   <= 8'b1000_0000;
                    state  <= ST_HOLD;  // Sai da FASE 1 e vai para a FASE 2
                end
                
                ST_HOLD: begin
                    // Segura o sistema com as chaves em 0 por 1 ciclo de clock
                    // Isso estabiliza a mola capacitiva do DAC antes de testar o MSB.
                    state <= ST_CONV;   // Vai para a FASE 3
                end
                
                ST_CONV: begin
                    // Se o comparador aprovar, salva o bit
                    if (d_in) begin
                        result <= result | mask;
                    end
                    
                    // Desloca a máscara
                    mask <= mask >> 1;
                    
                    // Se terminou o LSB, encerra
                    if (mask == 8'b0000_0001) begin
                        state <= ST_DONE;
                    end
                end
                
                ST_DONE: begin
                    state <= ST_SAMPLE;
                end
                
                default: state <= ST_SAMPLE;
            endcase
        end
    end

endmodule
