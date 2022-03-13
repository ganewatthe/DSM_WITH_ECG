############################################################
## EZwave - Saved Window File
## Friday, September 2, 2016 at 10:24:49 AM IST
##
## Note: This is an auto-generated file.
##
## In case of modification, Do not remove this comment
############################################################

onerror {resume}

# ===== Open required Database =====
dataset open /work/chanaka/QuestaADMS/DSM_WITH_ECG/cmd/top.wdb top

# ====== Create the expressions =====
wfc {V_DATA_=dtoa(wf(":SCMOD2_SINC:DATA", " -show TRAN.V   -signals  "),0.0,1.0,0,1,0.004096,10)}
wfc {wf0=(wf("V_DATA_", " -show none.V  -notop  ")/16777216)*3}


# ===== Open the window =====
wave addwindow -x 0  -y 0 -width 1909  -height 925 -divider 0.87

# ===== Create row #1 =====
add wave  -show none.v -notop  -height 197 -zoomy -0.0525438027381897 0.11 -color -256 wf0


# ===== Create row #2 =====
add wave  -show TRAN.v -height 200 -color -16711936 -separator : -terminals  :SCMOD2_SINC:signal_in


# ===== Create row #3 =====
add wave  -show TRAN.v -color -256 -separator : -terminals  :SCMOD2_SINC:scm1_p

# ===== Create row #4 =====
add wave  -show TRAN.v -color -16744193 -separator : -terminals  :SCMOD2_SINC:scm1_n

# ===== Create row #5 =====
add wave  -show TRAN.v -color -32768 -separator : -terminals  :SCMOD2_SINC:scm2_p

# ===== Create row #6 =====
add wave  -show TRAN.v -color -65281 -separator : -terminals  :SCMOD2_SINC:scm2_n

# ===== Create row #7 =====
add wave  -show TRAN.v -separator : -signals  :SCMOD2_SINC:comp_out

# ===== Create row #8 =====
add wave  -show TRAN.v -separator : -signals  :SCMOD2_SINC:phi1

# ===== Create row #9 =====
add wave  -show TRAN.v -separator : -signals  :SCMOD2_SINC:phi2

# ===== Create row #10 =====
add wave  -show TRAN.v -separator : -signals  :SCMOD2_SINC:ctrl1

# ===== Create row #11 =====
add wave  -show TRAN.v -separator : -signals  :SCMOD2_SINC:ctrl1_bar

# ===== Create row #12 =====
add wave  -show TRAN.v -separator : -signals  :SCMOD2_SINC:ctrl2

# ===== Create row #13 =====
add wave  -show TRAN.v -separator : -signals  :SCMOD2_SINC:ctrl2_bar

# ===== Create row #14 =====
add wave  -show TRAN.v -separator : -signals  :SCMOD2_SINC:s

# ===== Create row #15 =====
add wave  -show TRAN.v -unsigned  -separator : -signals  :SCMOD2_SINC:DATA

# ===== Create row #16 =====
add wave  -show TRAN.v -separator : -signals  :SCMOD2_SINC:data_en

# ===== Create row #17 =====
add wave  -show TRAN.v -unsigned  -separator : -signals  :SCMOD2_SINC:sincFilter1:acc1

# ===== Create row #18 =====
add wave  -show TRAN.v -unsigned  -separator : -signals  :SCMOD2_SINC:sincFilter1:acc2

# ===== Create row #19 =====
add wave  -show TRAN.v -unsigned  -separator : -signals  :SCMOD2_SINC:sincFilter1:acc3

# ===== Create row #20 =====
add wave  -show TRAN.v -unsigned  -separator : -signals  :SCMOD2_SINC:sincFilter1:diff1

# ===== Create row #21 =====
add wave  -show TRAN.v -unsigned  -separator : -signals  :SCMOD2_SINC:sincFilter1:diff2

# ===== Create row #22 =====
add wave  -show TRAN.v -unsigned  -separator : -signals  :SCMOD2_SINC:sincFilter1:diff3

# ===== Create row #23 =====
add wave  -show none.v -notop  -height 153 -color -16711936 -label V(DATA) V_DATA_


# ====== Create the cursors, markers and measurements =====
measure average -average -maxy -miny -wf wf0
measure average -average -maxy -miny -wf <TRAN>V(:SCMOD2_SINC:signal_in)
