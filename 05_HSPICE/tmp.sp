.TITLE Ex_5_1

** setting Library 

.protect
.include './08_TECH/LIB/7nm_TT.pm'
.include './08_TECH/LIB/asap7sc7p5t_SIMPLE_RVT.sp '
.include './08_TECH/LIB/asap7sc7p5t_SEQ_RVT.sp    '
.include './08_TECH/LIB/asap7sc7p5t_INVBUF_RVT.sp '
.include './08_TECH/LIB/asap7sc7p5t_AO_RVT.sp     '
.include './08_TECH/LIB/asap7sc7p5t_OA_RVT.sp     '
.unprotect

.include "Maxpooling_SYN_new.sp"
.VEC "Pattern_Maxpooling_SYN_new.vec"

* Set Voltage and buffer

*** Voltage: 1.8V ***
.PARAM supply=0.4v

*** Temperature: 25C ***
.TEMP 25

***********************************
* Transition Analysis             *
***********************************
.TRAN 1ps 20ns 

***********************************
* HSPICE Options                  *
***********************************
.OPTION POST PROBE
.OPTION NOMOD BRIEF MEASDGT=7 
.OPTION CAPTAB NOTOP AUTOSTOP

***********************************
* Output Signals                  *
***********************************
.probe tran v(*) i(*)

***********************************
* Define Global Nets              *
***********************************
.GLOBAL VDD GND

***********************************
* Voltage Sources                 *
***********************************
vdd     VDD   0  DC supply
vss     VSS   0  DC 0

***********************************
* Measurement Commands            *
***********************************
.meas pwr avg POWER
** Measure

.meas TRAN worstdelay_rf0 Trig V(IN_3[1]) VAL='supply*0.5' RISE=1 TD=0.2n
+                         Targ V(Output[0]) VAL='supply*0.5' FALL=1 TD=0.2n

* * 0 -> 1 0-> 1 
* .meas TRAN worstdelay_rr0 Trig V(IN_3[1]) VAL='supply*0.5' RISE=1 TD=0.9n
* +                         Targ V(Output[0]) VAL='supply*0.5' RISE=1 TD=1.2n



************************************
********  INPUT ********************

Xbuf_IFM_00 IN_00[1] IN_0[1] inv_buffer
Xbuf_IFM_01 IN_00[0] IN_0[0] inv_buffer
Xbuf_IFM_02 IN_10[1] IN_1[1] inv_buffer
Xbuf_IFM_03 IN_10[0] IN_1[0] inv_buffer

Xbuf_INW_00 IN_20[1] IN_2[1] inv_buffer
Xbuf_INW_01 IN_20[0] IN_2[0] inv_buffer
Xbuf_INW_02 IN_30[1] IN_3[1] inv_buffer
Xbuf_INW_03 IN_30[0] IN_3[0] inv_buffer

XMaxpooling GND VDD IN_0[1] IN_0[0] IN_1[1] IN_1[0] IN_2[1] IN_2[0] IN_3[1] IN_3[0] Output[1] Output[0] Maxpooling

Cload0 Output[0] GND 5f
Cload1 Output[1] GND 5f

***********************************
* Sub Circuit                     *
***********************************

*** circuit buffer ***

.SUBCKT inverter in out 
Mp1 out in VDD x pmos_lvt m=3
Mn1 out in GND x nmos_lvt m=3
.ENDS

.SUBCKT inv_buffer in out 
Xinv1 in mid inverter
Xinv2 mid out inverter
.ENDS

.end