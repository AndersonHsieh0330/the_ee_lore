v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 300 -200 420 -200 {lab=#net1}
N 420 -240 420 -200 {lab=#net1}
N 180 -240 180 -200 {lab=#net1}
N 180 -400 180 -300 {lab=vout_p}
N 180 -270 200 -270 {lab=#net1}
N 200 -270 200 -240 {lab=#net1}
N 180 -240 200 -240 {lab=#net1}
N 400 -270 420 -270 {lab=#net1}
N 400 -270 400 -240 {lab=#net1}
N 400 -240 420 -240 {lab=#net1}
N 420 -400 420 -300 {lab=vout_n}
N 300 -200 300 -160 {lab=#net1}
N 180 -200 300 -200 {lab=#net1}
N 300 -100 300 -60 {lab=GND}
N 460 -270 500 -270 {lab=vin_p}
N 100 -270 140 -270 {lab=vin_n}
N 180 -500 180 -460 {lab=VDD}
N 180 -500 420 -500 {lab=VDD}
N 420 -500 420 -460 {lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 160 -270 0 0 {name=M1
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 440 -270 0 1 {name=M2
l=0.13u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {res.sym} 180 -430 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 420 -430 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {isource.sym} 300 -130 0 0 {name=I0 value=1m}
C {opin.sym} 70 -550 0 0 {name=p2 lab=vout_p}
C {iopin.sym} 70 -530 0 0 {name=p3 lab=VDD}
C {iopin.sym} 70 -510 0 0 {name=p4 lab=GND
}
C {lab_wire.sym} 300 -60 2 1 {name=p1 sig_type=std_logic lab=GND}
C {lab_wire.sym} 100 -270 0 0 {name=p5 sig_type=std_logic lab=vin_n
}
C {lab_wire.sym} 500 -270 0 1 {name=p6 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} 300 -500 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 180 -340 0 0 {name=p8 sig_type=std_logic lab=vout_p
}
C {lab_wire.sym} 420 -340 0 1 {name=p9 sig_type=std_logic lab=vout_n
}
C {opin.sym} 70 -570 0 0 {name=p10 lab=vout_n}
C {ipin.sym} 90 -590 0 0 {name=p11 lab=vin_p}
C {ipin.sym} 90 -610 0 0 {name=p12 lab=vin_n}
