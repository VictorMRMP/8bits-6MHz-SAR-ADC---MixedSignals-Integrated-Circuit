v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -160 0 -90 0 {lab=SEL}
N 400 0 400 220 {lab=SEL}
N -120 230 400 220 {lab=SEL}
N -120 -0 -120 230 {lab=SEL}
N 270 -10 270 0 {lab=#net1}
N 270 0 270 10 {lab=#net1}
N -50 -50 -50 -30 {lab=COM}
N -50 -50 70 -50 {lab=COM}
N 70 -50 70 -30 {lab=COM}
N 0 -80 0 -50 {lab=COM}
N -50 30 -50 50 {lab=V2}
N -50 50 70 50 {lab=V2}
N 70 30 70 50 {lab=V2}
N -0 50 -0 80 {lab=V2}
N 270 -110 270 -70 {lab=VDD}
N 440 -110 440 -30 {lab=COM}
N 560 -110 560 -30 {lab=COM}
N 440 -110 560 -110 {lab=COM}
N 0 -190 0 -80 {lab=COM}
N 0 -190 500 -190 {lab=COM}
N 500 -190 500 -110 {lab=COM}
N 440 30 440 50 {lab=V1}
N 440 50 560 50 {lab=V1}
N 560 30 560 50 {lab=V1}
N 510 50 510 80 {lab=V1}
N 310 -40 340 -40 {lab=SEL}
N 310 40 340 40 {lab=SEL}
N 340 0 340 40 {lab=SEL}
N 340 -40 340 -0 {lab=SEL}
N 270 70 270 100 {lab=GND}
N 340 0 400 -0 {lab=SEL}
N 110 10 270 10 {lab=#net1}
N 110 0 110 10 {lab=#net1}
N 600 -0 620 0 {lab=#net1}
N 620 0 620 170 {lab=#net1}
N 140 170 620 170 {lab=#net1}
N 140 10 140 170 {lab=#net1}
N 270 -70 270 -40 {lab=VDD}
N 270 -70 460 -70 {lab=VDD}
N 440 -0 460 -0 {lab=VDD}
N 460 -70 460 -0 {lab=VDD}
N 50 0 70 0 {lab=VDD}
N 50 -100 50 -0 {lab=VDD}
N 50 -100 270 -100 {lab=VDD}
N 270 100 560 0 {lab=GND}
N -50 0 270 100 {lab=GND}
N 270 40 270 100 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -70 0 0 0 {name=M1
W=4
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 290 40 0 1 {name=M2
W=4
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 90 0 0 1 {name=M3
W=4
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 290 -40 0 1 {name=M4
W=4
L=0.15
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
C {ipin.sym} -160 0 0 0 {name=p2 lab=SEL}
C {iopin.sym} 270 -110 0 0 {name=p3 lab=VDD}
C {iopin.sym} 270 100 0 0 {name=p4 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} 580 0 0 1 {name=M5
W=4
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 420 0 0 0 {name=M6
W=4
L=0.15
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
C {ipin.sym} 0 80 0 0 {name=p1 lab=V2}
C {ipin.sym} 510 80 0 0 {name=p6 lab=V1}
C {opin.sym} 0 -80 0 0 {name=p7 lab=COM}
