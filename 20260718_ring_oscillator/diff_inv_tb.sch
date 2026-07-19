v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 860 -440 1660 -40 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.01e-10
x2=2.121e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=vin
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/diff_inv_tran.raw
sim_type=tran
autoload=1}
B 2 860 -870 1660 -470 {flags=graph
y1=-0.52
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.01e-10
x2=2.121e-09
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/diff_inv_tran.raw
sim_type=tran
autoload=1
color="12 10 4 8"
node="vin_p
vin_n
vout_p
vout_n"}
N 160 -220 160 -180 {lab=VDD}
N 80 -120 80 -80 {lab=GND}
N 160 -120 160 -80 {lab=GND}
N 240 -730 240 -690 {lab=VDD}
N 240 -530 240 -490 {lab=GND}
N 310 -570 480 -570 {lab=vout_n}
N 310 -650 560 -650 {lab=vout_p}
N 480 -570 480 -550 {lab=vout_n}
N 560 -650 560 -550 {lab=vout_p}
N 480 -490 480 -450 {lab=GND}
N 560 -490 560 -450 {lab=GND}
N 120 -550 160 -550 {lab=vin_p}
N 120 -670 160 -670 {lab=vin_n}
N 570 -120 570 -80 {lab=GND}
N 570 -220 570 -180 {lab=#net1}
N 570 -220 690 -220 {lab=#net1}
N 690 -220 690 -200 {lab=#net1}
N 690 -240 690 -220 {lab=#net1}
N 690 -340 690 -300 {lab=vin_p}
N 690 -140 690 -100 {lab=vin_n}
N 320 -120 320 -80 {lab=GND}
N 320 -220 320 -180 {lab=vin}
C {diff_inv.sym} 240 -610 0 0 {name=x1}
C {vsource.sym} 160 -150 0 0 {name=V1 value=1.2 savecurrent=false}
C {lab_wire.sym} 80 -120 0 0 {name=p1 sig_type=std_logic lab=GND}
C {lab_wire.sym} 160 -220 0 0 {name=p2 sig_type=std_logic lab=VDD
value="PULSE(0 1.2 0 0 10p 10p 1n 2n 2)"}
C {gnd.sym} 80 -80 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 160 -80 2 1 {name=p3 sig_type=std_logic lab=GND}
C {lab_wire.sym} 240 -730 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 240 -490 2 1 {name=p5 sig_type=std_logic lab=GND}
C {lab_wire.sym} 360 -650 0 1 {name=p6 sig_type=std_logic lab=vout_p}
C {lab_wire.sym} 360 -570 0 1 {name=p7 sig_type=std_logic lab=vout_n}
C {capa.sym} 560 -520 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 480 -520 0 0 {name=C2
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 480 -450 2 1 {name=p8 sig_type=std_logic lab=GND}
C {lab_wire.sym} 560 -450 2 1 {name=p9 sig_type=std_logic lab=GND}
C {lab_wire.sym} 120 -670 0 0 {name=p10 sig_type=std_logic lab=vin_n}
C {lab_wire.sym} 120 -550 0 0 {name=p11 sig_type=std_logic lab=vin_p}
C {vsource.sym} 570 -150 0 0 {name=V2 value=0.6 savecurrent=false}
C {lab_wire.sym} 570 -80 2 1 {name=p12 sig_type=std_logic lab=GND}
C {lab_wire.sym} 690 -340 0 1 {name=p13 sig_type=std_logic lab=vin_p}
C {lab_wire.sym} 690 -100 2 0 {name=p14 sig_type=std_logic lab=vin_n}
C {vsource.sym} 320 -150 0 0 {name=V5 value="PULSE(0 1.2 1n 10p 10p 1n 2020p)" savecurrent=false}
C {lab_wire.sym} 320 -80 2 1 {name=p15 sig_type=std_logic lab=GND}
C {lab_wire.sym} 320 -220 0 0 {name=p16 sig_type=std_logic lab=vin
value="PULSE(0 1.2 0 0 10p 10p 1n 2n 2)"}
C {devices/code_shown.sym} 100 -1190 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 100 -1060 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=127
.control
save all 

tran 5p 2020p
write diff_inv_tran.raw
.endc
"}
C {vsource_arith.sym} 690 -170 0 0 {name=E1 VOL="0.5*v(vin)"}
C {vsource_arith.sym} 690 -270 0 0 {name=E2 VOL="0.5*v(vin)"}
C {launcher.sym} 930 -920 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/diff_inv_tb.raw tran"
}
