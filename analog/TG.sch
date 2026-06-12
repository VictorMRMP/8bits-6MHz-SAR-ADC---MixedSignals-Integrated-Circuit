v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 210 290 210 310 {lab=#net1}
N 250 260 250 340 {lab=SEL}
N -110 330 10 330 {lab=VIN}
N 250 300 270 300 {lab=SEL}
N -220 300 -150 300 {lab=SEL}
N -110 270 10 270 {lab=COM}
N 210 370 210 400 {lab=GND}
N 210 190 210 230 {lab=VDD}
N -60 210 -60 270 {lab=COM}
N 50 300 210 300 {lab=#net1}
N -60 330 -60 380 {lab=VIN}
N 270 300 410 300 {lab=SEL}
N -220 300 -220 480 {lab=SEL}
N -220 480 410 480 {lab=SEL}
N 410 300 410 480 {lab=SEL}
N -110 300 210 400 {lab=GND}
N 10 300 210 190 {lab=VDD}
N 210 230 210 260 {lab=VDD}
N 210 340 210 370 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -130 300 0 0 {name=M1
W=0.5
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
C {sky130_fd_pr/nfet_01v8.sym} 230 340 0 1 {name=M2
W=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 30 300 0 1 {name=M3
W=0.5
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
C {sky130_fd_pr/pfet_01v8.sym} 230 260 0 1 {name=M4
W=0.5
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
C {ipin.sym} -220 300 0 0 {name=p2 lab=SEL}
C {iopin.sym} 210 190 0 0 {name=p3 lab=VDD}
C {iopin.sym} 210 400 0 0 {name=p4 lab=GND}
C {iopin.sym} -60 210 0 0 {name=p5 lab=COM}
C {iopin.sym} -60 380 0 0 {name=p6 lab=VIN}
