v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 540 -450 1340 -50 {flags=graph
y1=-36
y2=0
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6
x2=16
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="vout db20()"
color=4
dataset=-1
unitx=1
logx=1
logy=0
autoload=1
rawfile=$netlist_dir/rc1.raw
sim_type=ac
hcursor1_y=-3.0763799}
P 4 1 130 -200 {}
N 200 -220 260 -220 {lab=vout}
N 260 -220 260 -160 {lab=vout}
N 80 -220 80 -160 {lab=#net1}
N 80 -220 140 -220 {lab=#net1}
N 80 -100 80 -60 {lab=GND}
N 80 -60 260 -60 {lab=GND}
N 260 -100 260 -60 {lab=GND}
C {res.sym} 170 -220 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 260 -130 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 260 -60 0 0 {name=l1 lab=GND}
C {vsource.sym} 80 -130 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {lab_wire.sym} 260 -220 0 1 {name=p1 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 40 -540 0 0 {name=NGSPICE only_toplevel=true 
value="
.control
save all 
ac dec 1000 1 10G 

write rc1.raw

let vout_db = db(v(vout))
let cutoff_level = vout_db[0] - 3.0102999566
meas ac f_3db when vout_db=$&cutoff_level fall=1

.endc
"}
C {launcher.sym} 600 -570 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/rc1.raw tran"
}
