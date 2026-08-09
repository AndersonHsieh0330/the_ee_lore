v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 640 -520 1440 -120 {flags=graph
y1=1.8e-05
y2=0.59
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7231644e+09
x2=1.1315247e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Vtune = 1.0;out"
color=4
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
sim_type=spectrum
rawfile=$netlist_dir/ro3_tran_fft_1.raw}
B 2 640 -960 1440 -560 {flags=graph
y1=1.5e-10
y2=0.65
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7231644e+09
x2=1.1315247e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Vtune = 1.1;out"
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/ro3_tran_fft_1.1.raw
autoload=1
sim_type=spectrum
}
B 2 640 -1400 1440 -1000 {flags=graph
y1=1.7e-11
y2=0.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.7231644e+09
x2=1.1315247e+10
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="Vtune = 1.2;out"
color=4
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/ro3_tran_fft_1.2.raw
autoload=1
sim_type=spectrum
}
N 140 -200 140 -160 {lab=VDD}
N 60 -100 60 -60 {lab=GND}
N 140 -100 140 -60 {lab=GND}
N 280 -100 280 -80 {lab=GND}
N 280 -220 280 -200 {lab=VDD}
N 400 -150 460 -150 {lab=out}
N 460 -150 460 -120 {lab=out}
N 460 -60 460 -40 {lab=GND}
C {ro3.sym} 280 -150 0 0 {name=x1}
C {vsource.sym} 140 -130 0 0 {name=V1 value="\{Vtune\}" savecurrent=false}
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
C {devices/code_shown.sym} 50 -860 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 50 -750 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=127
.param Vtune = 0
.control

let sweep_start = 0.1 
let sweep_stop = 1.2
let sweep_step = 0.1
let sweep_value = sweep_start

while sweep_value <= sweep_stop
	alterparam Vtune = $&sweep_value
	reset
	
	save v(out)
	tran 5p 20n

	linearize v(out)
	set specwindow=blackman
	fft v(out)
	write ro3_tran_fft_\{$&sweep_value\}.raw v(out)

	let sweep_value = sweep_value + sweep_step
end
.endc
"}
C {lab_wire.sym} 460 -150 0 1 {name=p7 sig_type=std_logic lab=out}
C {launcher.sym} 700 -1430 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/ro3_tran.raw tran"
}
