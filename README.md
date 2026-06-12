# 8-Bit Mixed-Signal SAR ADC in SkyWater 130nm

![Status](https://img.shields.io/badge/Status-Active_Development-brightgreen)
![Technology](https://img.shields.io/badge/Node-SkyWater_130nm-blue)
![Verification](https://img.shields.io/badge/Verification-AMS_Co--simulation-orange)

## 📌 Project Overview
This repository contains the design and verification of an 8-bit Successive Approximation Register (SAR) Analog-to-Digital Converter (ADC), targeted for the open-source SkyWater 130nm process node. 

The primary focus of this project is to bridge the gap between Digital Design and Analog Physics through a robust **Analog Mixed-Signal (AMS) Co-simulation environment**. By closely coupling the digital Verilog state machine with the analog SPICE solver, the design successfully maps and mitigates deep-submicron physical phenomena such as charge injection, kickback noise, and parasitic substrate conduction.

## 🧠 Key Architectural Decisions

To ensure silicon-level reliability and commercial-grade performance, several critical design choices were implemented:

### Analog Domain (Xschem / SPICE)
* **Custom Capacitive Array Sizing:** The DAC matrix capacitance was carefully balanced ($\approx 2pF$ total) to be large enough to resist kickback noise from the comparator, yet small enough to maintain a fast settling time for the RC time constant, enabling a reliable 5+ MHz operation frequency.
* **Charge Injection Mitigation:** The Transmission Gate (TG) used for the comparator's Auto-Zero switch was aggressively downsized to minimize the channel charge deposited onto the DAC's floating top plate during the Hold phase, effectively neutralizing dynamic offset errors.
* **Self-Contained Reference (MOSCAP):** Instead of relying on external ideal sources, the common-mode voltage ($V_{CM}$) is generated internally and stabilized against high-frequency switching transients using a large internal MOSCAP array, ensuring a high-impedance, isolated reference.

### Digital Domain (Verilog)
* **VCM-Bounded Switching Algorithm:** The standard SAR switching logic was upgraded to prevent severe Gain Errors caused by parasitic diodes. During the Hold phase, the state machine asserts `8'h80` (driving the MSB high and the rest low) rather than `8'h00`. This bounds the top plate voltage fluctuation within the $0V$ to $1.8V$ range, preventing the substrate PN junction from becoming forward-biased during high-voltage samples.
* **Synchronous 3-Phase FSM:** The controller utilizes a strict Sample, Hold, and Bit-Cycling sequence, ensuring the analog components have dedicated clock cycles to settle charge before quantizing.

## 🔬 AMS Verification Environment
A custom co-simulation pipeline was built to perform rigorous, automated validation. The testbench does not rely on ideal behavioral models; it stimulates the actual transistor-level netlist in tandem with the RTL.

* **Toolchain Integration:** Icarus Verilog is tightly coupled with the Xyce parallel SPICE simulator via a C/VPI wrapper (`.c`, `.sh`), allowing cycle-accurate interaction between the digital FSM and the analog continuous-time nodes.
* **Automated Data Logger & Scoreboard:** The Verilog testbench features an automated parametric sweep that tests the ADC across multiple frequencies and input voltages. 
* **Dynamic Metric Extraction:** Post-simulation routines automatically calculate and report key data converter metrics natively in the terminal:
  * Differential Non-Linearity (**DNL**)
  * Integral Non-Linearity (**INL**)
  * Gain Error
  * Offset Error

## 🚧 Current Status & Future Work
The architectural design and AMS verification are complete, achieving commercial-grade DNL and INL parameters. The project is currently transitioning into the physical implementation phase:

1. **Analog Layout:** Custom, hierarchical physical layout of the analog components (SPDT, TG, Comparator, and the Common-Centroid DAC array) is actively being drawn and verified (DRC/LVS) using **Magic VLSI**.
2. **Digital Implementation:** The Verilog controller is being synthesized and routed using the **OpenLane/LibreLane** digital flow.
3. **Top-Level Integration:** Final mixed-signal top-level routing and post-layout parasitic extraction (PEX) validation.

## 🛠️ Tool Stack
* **Schematic Capture:** Xschem
* **Analog Simulation:** Xyce / Ngspice
* **Digital Simulation & Testbench:** Icarus Verilog
* **Physical Layout:** Magic VLSI
* **LVS/DRC:** Netgen / Magic
* **Digital Flow:** OpenLane / LibreLane
