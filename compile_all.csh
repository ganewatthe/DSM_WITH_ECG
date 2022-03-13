\rm -rf *.ini ams_lib 

valib ams_lib 
vmap ams_lib ams_lib
vmap WORK ams_lib

#	connect rules compilation
# valog connectRules/a2d.vams
# valog connectRules/d2a.vams
# valog connectRules/connectRules.vams

#	compile all source files
# valog src/clock.vams
# valog src/resistor.vams
# valog src/vcvs.vams
# valog src/switch.vams
# valog src/vsin.vams
# valog src/unityGainSampler.vams
# valog src/unityGainSamplerTb.vams
# valog src/nonInvertingAmp.vams
# valog src/nonInvertingAmpTb.vams
# valog src/singleEndedToDiffConverter.vams
# valog src/singleEndedToDiffConverterTb.vams
# valog src/nonInvFullyDiffAmp.vams
# valog src/nonInvFullyDiffAmpTb.vams
# valog src/fullyDiffIntegrator.vams
# valog src/fullyDiffIntegratorTb.vams
# valog src/ctrlSigGen.vams
# valog src/ctrlSigGenTb.vams
# valog src/SCMOD2_1Tb.vams
# valog src/SCMOD2_2Tb.vams
# valog src/comparatorTb.vams
# valog src/dflipflopTb.vams
# valog src/SCMOD2.vams
# valog src/dec256sinc24bTb.vams
valog src/SCMOD2_SINC.vams

# to run eldo and ezwave
#eldo adc_compile.cmd
#ezwave adc_compile.wdb

#eldo simpleCct.cmd
#ezwave res_div_test.wdb

# vasim -cmd ./cmd/top.cmd SCMOD2_SINC -connectrules ams_lib.MyRules -do ./gui/gui.do
# vasim -eldoopt "-use_proc 4" -cmd ./cmd/top.cmd SCMOD2_SINC -connectrules ams_lib.MyRules -do ./gui/gui.do
vasim -eldoopt "-use_proc 4" -cmd ./cmd/top.cmd SCMOD2_SINC -do ./gui/gui.do
# vasim -cmd ./cmd/top.cmd dec256sinc24bTb -connectrules ams_lib.MyRules 

# to run in command line add "-c" after vasim