clean: rm -rf xcelium.d *.log *.history *.key

compile: xmvlog -MESS -linedebug ./*.v

elab: xmelab -MESS -access +rwc tb_sn74ls11

all: xmsim -MESS tb_sn74ls11 -gui
