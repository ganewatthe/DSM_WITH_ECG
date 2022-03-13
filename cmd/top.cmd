*.VERILOG top.vams
*.MODEL resistor MACRO LANG=veriloga LIB=adc_lib
*.MODEL inductor MACRO LANG=veriloga LIB=adc_lib
*.MODEL voltageSource MACRO LANG=veriloga LIB=adc_lib
*.MODEL simpleCct MACRO LANG=veriloga LIB=ams_lib

*YsimpleCkt simpleCct

*vdc	YsimpleCkt.gnd 0 dc 0		* connect simpleCct ground with spice ground

.TRAN 1n 10
.option simudiv=100
.option  premier
.option premier_remove_trap_ringing
.option hmin=200e-9

*.PLOT tran V(YsimpleCkt.p) 
*.PLOT tran V(YsimpleCkt.q)

*.print tran V(YsimpleCkt.p) 
*.print tran V(YsimpleCkt.q) 

* .option eps = 1e-9 *abstol = 1e-9

.END