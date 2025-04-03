v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 800 -890 1360 -590 {flags=graph
y1=-0.11
y2=-0.102
ypos1=0
ypos2=1
divy=5
subdivy=1
unity=1
x1=0
x2=100
divx=5
subdivx=1
node="vout"
color=9
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1
hilight_wave=-1
rawfile=$netlist_dir/ptat_bjt_nmos-curr-mirror-mc.raw}
N 1060 -160 1060 -100 {lab=GND}
N 1060 -100 1100 -100 {lab=GND}
N 1100 -100 1100 -90 {lab=GND}
N 1100 -130 1100 -100 {lab=GND}
N 1380 -160 1380 -100 {lab=GND}
N 1340 -100 1380 -100 {lab=GND}
N 1340 -100 1340 -90 {lab=GND}
N 1340 -130 1340 -100 {lab=GND}
N 1180 -310 1300 -310 {lab=#net1}
N 1100 -380 1100 -340 {lab=#net1}
N 1100 -380 1180 -380 {lab=#net1}
N 1180 -380 1180 -310 {lab=#net1}
N 1140 -310 1180 -310 {lab=#net1}
N 1340 -400 1340 -340 {lab=VDD}
N 1340 -310 1400 -310 {lab=GND}
N 1040 -310 1100 -310 {lab=GND}
N 1100 -460 1100 -440 {lab=GND}
N 1340 -280 1340 -190 {lab=vl}
N 1100 -280 1100 -190 {lab=vh}
C {devices/code_shown.sym} 100 -670 0 0 {name=NGSPICE only_toplevel=true 
value="
*.param mm_ok=1
.param mc_ok=1
.temp 27

.control
set wr_vecnames
set wr_singlescale

shell rm -rf ./ptat_bjt_nmos-curr-mirror-mc
shell mkdir ./ptat_bjt_nmos-curr-mirror-mc

let mc_runs = 50
let run = 0

**** loop ****
dowhile run < mc_runs

  save all
  dc temp 0 100 1

  let vout = vh - vl

  wrdata ptat_bjt_nmos-curr-mirror-mc/ptat_bjt_nmos-curr-mirror-mc\{$&run\}.csv vout vh vl
  write ptat_bjt_nmos-curr-mirror-mc.raw
  reset

  let run = run+1
end
**** loop ****

.endc
"}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="D. Hunter"}
C {devices/launcher.sym} 1040 -570 0 0 {name=h5
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/pptat_bjt_nmos-curr-mirror-mc.raw dc"
}
C {devices/launcher.sym} 1040 -540 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/gnd.sym} 1100 -90 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 1340 -90 0 0 {name=l7 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 1120 -310 0 1 {name=M2
l=0.25u
w=0.25u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1320 -310 0 0 {name=M3
l=1u
w=10u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {isource.sym} 1100 -410 0 0 {name=I0 value=10u}
C {devices/gnd.sym} 1100 -460 3 0 {name=l8 lab=GND}
C {devices/vsource.sym} 1240 -470 0 0 {name=Vgs1 value=1.2}
C {devices/gnd.sym} 1240 -440 0 0 {name=l9 lab=GND}
C {vdd.sym} 1340 -400 0 0 {name=l10 lab=VDD}
C {vdd.sym} 1240 -500 0 0 {name=l11 lab=VDD}
C {devices/gnd.sym} 1400 -310 3 0 {name=l1 lab=GND}
C {devices/gnd.sym} 1040 -310 1 0 {name=l2 lab=GND}
C {code_shown.sym} 100 -810 0 0 {
name=TT_MODELS
only_toplevel=true
value="
** IHP models
.lib cornerMOSlv.lib mos_tt_stat
.lib cornerHBT.lib hbt_typ_stat
.include ptat_bjt_nmos-curr-mirror-mc.save
"
spice_ignore=false
      }
C {lab_pin.sym} 1100 -240 2 0 {name=p3 sig_type=std_logic lab=vh}
C {lab_pin.sym} 1340 -240 2 0 {name=p1 sig_type=std_logic lab=vl}
C {sg13g2_pr/pnpMPA.sym} 1360 -160 0 1 {name=Q2
model=pnpMPA
spiceprefix=X
w=1.0e-6
l=2.0e-6
m=1
}
C {sg13g2_pr/pnpMPA.sym} 1080 -160 0 0 {name=Q1
model=pnpMPA
spiceprefix=X
w=1.0e-6
l=2.0e-6
m=1
}
