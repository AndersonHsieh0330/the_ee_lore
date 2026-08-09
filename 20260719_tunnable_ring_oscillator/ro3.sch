v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 310 -390 310 -340 {lab=#net1}
N 270 -390 270 -310 {lab=#net2}
N 310 -560 310 -500 {lab=VDD}
N 310 -280 310 -220 {lab=GND}
N 510 -390 510 -340 {lab=#net3}
N 470 -390 470 -310 {lab=#net1}
N 510 -560 510 -500 {lab=VDD}
N 510 -280 510 -220 {lab=GND}
N 710 -390 710 -340 {lab=#net2}
N 670 -390 670 -310 {lab=#net3}
N 710 -560 710 -500 {lab=VDD}
N 710 -280 710 -220 {lab=GND}
N 510 -560 710 -560 {lab=VDD}
N 310 -560 510 -560 {lab=VDD}
N 510 -220 710 -220 {lab=GND}
N 310 -220 510 -220 {lab=GND}
N 310 -390 470 -390 {lab=#net1}
N 310 -440 310 -390 {lab=#net1}
N 470 -470 470 -390 {lab=#net1}
N 510 -390 670 -390 {lab=#net3}
N 510 -440 510 -390 {lab=#net3}
N 670 -470 670 -390 {lab=#net3}
N 710 -390 810 -390 {lab=#net2}
N 710 -440 710 -390 {lab=#net2}
N 810 -390 810 -160 {lab=#net2}
N 210 -160 810 -160 {lab=#net2}
N 210 -390 210 -160 {lab=#net2}
N 210 -390 270 -390 {lab=#net2}
N 270 -470 270 -390 {lab=#net2}
N 310 -470 330 -470 {lab=VDD}
N 330 -500 330 -470 {lab=VDD}
N 310 -500 330 -500 {lab=VDD}
N 510 -470 530 -470 {lab=VDD}
N 530 -500 530 -470 {lab=VDD}
N 510 -500 530 -500 {lab=VDD}
N 710 -470 730 -470 {lab=VDD}
N 730 -500 730 -470 {lab=VDD}
N 710 -500 730 -500 {lab=VDD}
N 310 -310 330 -310 {lab=GND}
N 330 -310 330 -280 {lab=GND}
N 310 -280 330 -280 {lab=GND}
N 510 -310 530 -310 {lab=GND}
N 530 -310 530 -280 {lab=GND}
N 510 -280 530 -280 {lab=GND}
N 710 -310 730 -310 {lab=GND}
N 730 -310 730 -280 {lab=GND}
N 710 -280 730 -280 {lab=GND}
N 900 -390 900 -310 {lab=#net2}
N 940 -440 940 -340 {lab=#net4}
N 940 -470 960 -470 {lab=VDD}
N 960 -500 960 -470 {lab=VDD}
N 940 -500 960 -500 {lab=VDD}
N 940 -310 960 -310 {lab=GND}
N 960 -310 960 -280 {lab=GND}
N 940 -280 960 -280 {lab=GND}
N 810 -390 900 -390 {lab=#net2}
N 900 -470 900 -390 {lab=#net2}
N 710 -560 940 -560 {lab=VDD}
N 940 -560 940 -500 {lab=VDD}
N 710 -220 940 -220 {lab=GND}
N 940 -280 940 -220 {lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 290 -310 0 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 290 -470 0 0 {name=M2
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 490 -310 0 0 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 490 -470 0 0 {name=M4
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 690 -310 0 0 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 690 -470 0 0 {name=M6
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {opin.sym} 110 -560 0 0 {name=p2 lab=out}
C {iopin.sym} 110 -540 0 0 {name=p3 lab=VDD}
C {iopin.sym} 110 -520 0 0 {name=p4 lab=GND
}
C {lab_pin.sym} 460 -560 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 470 -220 3 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} 940 -390 2 0 {name=p6 sig_type=std_logic lab=out}
C {sg13g2_pr/sg13_lv_nmos.sym} 920 -310 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 920 -470 0 0 {name=M8
l=0.13u
w=0.3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
