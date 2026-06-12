v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -200 100 -140 {lab=#net1}
N 280 -200 280 -130 {lab=#net2}
N 60 -230 60 -180 {lab=#net1}
N 60 -180 100 -180 {lab=#net1}
N 100 -310 100 -260 {lab=VDD}
N 100 -310 280 -310 {lab=VDD}
N 280 -310 280 -260 {lab=VDD}
N 100 -80 100 -50 {lab=#net3}
N 280 -80 280 -50 {lab=#net3}
N 100 -50 280 -50 {lab=#net3}
N 190 150 190 160 {lab=#net4}
N 60 -230 320 -230 {lab=#net1}
N 320 -110 340 -110 {lab=VP}
N 30 -110 60 -110 {lab=VN}
N -120 -310 100 -310 {lab=VDD}
N -390 -230 -130 -230 {lab=#net5}
N -170 -310 -170 -260 {lab=VDD}
N -350 -310 -120 -310 {lab=VDD}
N -350 -310 -350 -260 {lab=VDD}
N -390 -230 -390 -190 {lab=#net5}
N -350 -200 -350 -180 {lab=#net5}
N -390 -190 -350 -190 {lab=#net5}
N -350 -60 -350 -20 {lab=VSS}
N -390 -120 -390 -90 {lab=#net5}
N -390 -120 -350 -120 {lab=#net5}
N -350 -180 -350 -120 {lab=#net5}
N -390 -90 -130 -90 {lab=#net5}
N -170 -200 -170 -120 {lab=#net6}
N -190 30 -190 60 {lab=VSS}
N -190 60 -170 60 {lab=VSS}
N -540 -120 -540 -80 {lab=#net7}
N -540 -200 -540 -180 {lab=#net8}
N -580 -180 -580 -150 {lab=#net8}
N -580 -180 -540 -180 {lab=#net8}
N -580 -80 -580 -50 {lab=#net7}
N -580 -80 -540 -80 {lab=#net7}
N -580 -230 -390 -230 {lab=#net5}
N 190 150 190 190 {lab=#net4}
N -580 -50 -580 200 {lab=#net7}
N -580 220 150 220 {lab=#net7}
N -580 200 -580 220 {lab=#net7}
N -580 -150 -460 -150 {lab=#net8}
N -460 -150 -460 120 {lab=#net8}
N -460 120 150 120 {lab=#net8}
N -540 -310 -540 -260 {lab=VDD}
N -540 -310 -350 -310 {lab=VDD}
N 280 -180 460 -180 {lab=#net2}
N 500 -150 570 -150 {lab=VOUT}
N 500 70 570 70 {lab=VOUT}
N 430 150 430 160 {lab=#net9}
N 430 150 430 190 {lab=#net9}
N 430 70 430 90 {lab=VOUT}
N 430 70 500 70 {lab=VOUT}
N 150 120 390 120 {lab=#net8}
N 150 220 390 220 {lab=#net7}
N 500 -310 500 -210 {lab=VDD}
N 280 -310 500 -310 {lab=VDD}
N 570 -150 570 -120 {lab=VOUT}
N 570 -120 570 -50 {lab=VOUT}
N 570 -50 570 70 {lab=VOUT}
N 190 -50 190 90 {lab=#net3}
N -170 -60 -170 -0 {lab=#net10}
N 190 300 200 300 {lab=VSS}
N 190 250 190 300 {lab=VSS}
N 200 -380 200 -310 {lab=VDD}
N -170 60 -170 290 {lab=VSS}
N -170 300 200 300 {lab=VSS}
N -170 290 -170 300 {lab=VSS}
N -550 300 -170 300 {lab=VSS}
N -540 -20 -540 300 {lab=VSS}
N -350 -20 -350 300 {lab=VSS}
N 190 300 430 250 {lab=VSS}
C {ipin.sym} 30 -110 0 0 {name=p1 lab=VN}
C {ipin.sym} 340 -110 0 1 {name=p2 lab=VP}
C {sky130_fd_pr/pfet3_01v8.sym} 80 -230 0 0 {name=M2
W=10
L=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 300 -230 0 1 {name=M3
W=10
L=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 80 -110 0 0 {name=M1
W=4
L=0.5
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 300 -110 0 1 {name=M4
W=4
L=0.5
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 170 120 0 0 {name=M5
W=10
L=2
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -370 -230 0 0 {name=M6
W=10
L=1
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -150 -230 0 1 {name=M7
W=10
L=1
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -370 -90 0 0 {name=M8
W=2
L=1
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -150 -90 0 1 {name=M9
W=2
L=1
body=GND
nf=1
mult=4
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/res_high_po.sym} -170 30 0 0 {name=R1
W=1
L=21.5
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/nfet3_01v8.sym} -560 -150 0 0 {name=M12
W=5
L=2
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} -560 -50 0 0 {name=M13
W=5
L=2
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -560 -230 0 0 {name=M14
W=10
L=1
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 170 220 0 0 {name=M10
W=10
L=2
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 480 -180 0 0 {name=M11
W=10
L=2
body=VDD
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 410 120 0 0 {name=M15
W=10
L=2
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8.sym} 410 220 0 0 {name=M20
W=10
L=2
body=GND
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {iopin.sym} 200 -380 0 0 {name=p4 lab=VDD}
C {opin.sym} 570 -40 0 0 {name=p3 lab=VOUT}
C {iopin.sym} 200 300 0 0 {name=p6 lab=VSS}
