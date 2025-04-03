v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 570 -980 1370 -580 {flags=graph
y1=-0.1095
y2=-0.102
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=100
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout"
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=-1
rawfile=$netlist_dir/ptat_bjt_nmos-curr-mirror-mc.raw}
N 850 -390 850 -370 {lab=#net1}
N 850 -290 850 -270 {lab=#net2}
N 850 -190 850 -170 {lab=#net3}
N 890 -340 890 -290 {lab=#net2}
N 850 -290 890 -290 {lab=#net2}
N 850 -310 850 -290 {lab=#net2}
N 890 -240 890 -190 {lab=#net3}
N 850 -190 890 -190 {lab=#net3}
N 850 -210 850 -190 {lab=#net3}
N 1290 -440 1370 -440 {lab=GND}
N 1290 -260 1370 -260 {lab=Vdd}
N 850 -90 850 -70 {lab=GND}
N 1110 -110 1110 -70 {lab=GND}
N 770 -140 850 -140 {lab=GND}
N 770 -240 850 -240 {lab=GND}
N 770 -340 850 -340 {lab=GND}
N 770 -440 850 -440 {lab=GND}
N 1030 -440 1110 -440 {lab=GND}
N 1110 -310 1110 -170 {lab=Vout}
N 1200 -440 1250 -440 {lab=#net1}
N 1200 -440 1200 -390 {lab=#net1}
N 1150 -440 1200 -440 {lab=#net1}
N 850 -410 850 -390 {lab=#net1}
N 890 -440 890 -390 {lab=#net1}
N 890 -390 1200 -390 {lab=#net1}
N 850 -510 850 -470 {lab=Vdd}
N 1110 -510 1290 -510 {lab=Vdd}
N 1290 -510 1290 -470 {lab=Vdd}
N 1110 -510 1110 -470 {lab=Vdd}
N 850 -510 1110 -510 {lab=Vdd}
N 1290 -410 1290 -370 {lab=#net4}
N 1230 -370 1290 -370 {lab=#net4}
N 1230 -370 1230 -260 {lab=#net4}
N 1230 -260 1250 -260 {lab=#net4}
N 1290 -310 1290 -290 {lab=Vout}
N 1110 -310 1290 -310 {lab=Vout}
N 1110 -410 1110 -310 {lab=Vout}
N 1290 -230 1290 -140 {lab=#net5}
N 1150 -140 1290 -140 {lab=#net5}
N 980 -300 980 -280 {lab=Vdd}
N 1030 -140 1110 -140 {lab=Vdd}
N 890 -140 890 -90 {lab=GND}
N 850 -90 890 -90 {lab=GND}
N 850 -110 850 -90 {lab=GND}
N 850 -390 890 -390 {lab=#net1}
C {sg13g2_pr/sg13_lv_nmos.sym} 870 -440 0 1 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 870 -340 0 1 {name=M2
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 870 -240 0 1 {name=M3
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 870 -140 0 1 {name=M4
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1130 -440 0 1 {name=M5
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1130 -140 0 1 {name=M6
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1270 -440 0 0 {name=M7
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1270 -260 0 0 {name=M8
l=0.13u
w=0.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {gnd.sym} 850 -70 0 0 {name=l1 lab=GND}
C {gnd.sym} 1110 -70 0 0 {name=l2 lab=GND}
C {gnd.sym} 770 -140 1 0 {name=l4 lab=GND}
C {gnd.sym} 770 -240 1 0 {name=l5 lab=GND}
C {gnd.sym} 770 -340 1 0 {name=l6 lab=GND}
C {gnd.sym} 770 -440 1 0 {name=l7 lab=GND}
C {gnd.sym} 1030 -440 1 0 {name=l8 lab=GND}
C {gnd.sym} 1370 -440 3 0 {name=l10 lab=GND}
C {vsource.sym} 980 -250 0 0 {name=V1 value=1 savecurrent=false}
C {gnd.sym} 980 -220 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 980 -300 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 1050 -510 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 1030 -140 0 0 {name=p3 sig_type=std_logic lab=Vdd}
C {devices/launcher.sym} 630 -550 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/ptat_nmos_only.raw dc"
}
C {devices/launcher.sym} 630 -520 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/code_shown.sym} 110 -710 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt_stat
.include ptat_nmos_only-mc.save
"}
C {lab_wire.sym} 1290 -310 0 0 {name=p4 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 1370 -260 0 1 {name=p5 sig_type=std_logic lab=Vdd}
C {devices/code_shown.sym} 110 -610 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.param mm_ok=1
.param mc_ok=1
.temp 27

.control
set wr_vecnames
set wr_singlescale

shell rm -rf ./ptat_nmos_only-mc
shell mkdir ./ptat_nmos_only-mc

let mc_runs = 50
let run = 0

**** loop ****
dowhile run < mc_runs

  save all
  dc temp 0 100 1

  wrdata ptat_nmos_only-mc/ptat_nmos_only-mc\{$&run\}.csv vout
  write ptat_nmos_only-mc.raw
  reset

  let run = run+1
end
**** loop ****

.endc
"}
C {title.sym} 170 0 0 0 {name=l9 author="D. Hunter"}
