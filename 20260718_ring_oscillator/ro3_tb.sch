v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 650 -520 1450 -120 {flags=graph
y1=-0.28
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="V(out);out"
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/ro3_tran.raw
autoload=1
sim_type=tran
}
B 2 650 -940 1450 -540 {flags=graph
y1=1.7e-11
y2=0.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.3283992e+09
x2=1.4716593e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/ro3_tran_fft.raw
autoload=1
sim_type=spectrum
color=4
node="fft of V(out); out"}
N 140 -200 140 -160 {lab=VDD}
N 60 -100 60 -60 {lab=GND}
N 140 -100 140 -60 {lab=GND}
N 280 -100 280 -80 {lab=GND}
N 280 -220 280 -200 {lab=VDD}
N 400 -150 460 -150 {lab=out}
N 460 -150 460 -120 {lab=out}
N 460 -60 460 -40 {lab=GND}
C {ro3.sym} 280 -150 0 0 {name=x1}
C {vsource.sym} 140 -130 0 0 {name=V1 value=1.2 savecurrent=false}
C {lab_wire.sym} 60 -100 0 0 {name=p1 sig_type=std_logic lab=GND}
C {lab_wire.sym} 140 -200 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} 60 -60 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 140 -60 2 1 {name=p3 sig_type=std_logic lab=GND}
C {lab_wire.sym} 280 -80 2 1 {name=p4 sig_type=std_logic lab=GND}
C {lab_wire.sym} 280 -220 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {capa.sym} 460 -90 0 0 {name=C1
m=1
value=1f
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 460 -40 2 1 {name=p6 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 90 -860 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 60 -670 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=127
.control
save all 

tran 5p 20n
write ro3_tran.raw

linearize v(out)
set specwindow=blackman
fft v(out)
write ro3_tran_fft.raw v(out)
.endc
"}
C {lab_wire.sym} 460 -150 0 1 {name=p7 sig_type=std_logic lab=out}
C {launcher.sym} 710 -980 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ro3_tran.raw tran"
}
