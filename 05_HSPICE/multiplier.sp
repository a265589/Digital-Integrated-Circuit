.TITLE DIC_Final

***-----------------------***
***        setting        ***
***-----------------------***

.protect
.include '../08_TECH/LIB/7nm_TT.pm'
.include '../08_TECH/LIB/16mos.pm'
.include '../08_TECH/LIB/asap7sc7p5t_SIMPLE_RVT.sp' 
.include '../08_TECH/LIB/asap7sc7p5t_SEQ_RVT.sp'    
.include '../08_TECH/LIB/asap7sc7p5t_INVBUF_RVT.sp' 
.include '../08_TECH/LIB/asap7sc7p5t_AO_RVT.sp'     
.include '../08_TECH/LIB/asap7sc7p5t_OA_RVT.sp'     
.include './Adder_tree_SYN_new.sp'
.include './Accumulator_SYN_new.sp'
.include './Control_SYN_new.sp'
.unprotect

.VEC "mul.vec" 

*** Voltage: 0.7V ***
.PARAM supply=0.45v

*** Temperature: 25C ***
.TEMP 25

***********************************
* Transition Analysis             *
***********************************
.TRAN 100ps 36ns 

***********************************
* HSPICE Options                  *
***********************************
.OPTION POST PROBE
.OPTION NOMOD BRIEF MEASDGT=7 
.OPTION CAPTAB NOTOP AUTOSTOP

***********************************
* Output Signals                  *
***********************************
.probe tran v(clk)
.probe tran v(rst_n)
.probe tran v(in_valid)
.probe tran v(Out_1[0])
.probe tran v(Out_1[1])
.probe tran v(Out_1[2])
.probe tran v(Out_1[3])
.probe tran v(Out_1[4])
.probe tran v(Out_1[5])
.probe tran v(Out_1[6])
.probe tran v(Out_1[7])
.probe tran v(Out_1[8])
.probe tran v(Out_1[9])
.probe tran v(Out_1[10])
.probe tran v(Out_1[11])
.probe tran v(Out_1[12])

.probe tran v(Out_2[0])
.probe tran v(Out_2[1])
.probe tran v(Out_2[2])
.probe tran v(Out_2[3])
.probe tran v(Out_2[4])
.probe tran v(Out_2[5])
.probe tran v(Out_2[6])
.probe tran v(Out_2[7])
.probe tran v(Out_2[8])
.probe tran v(Out_2[9])
.probe tran v(Out_2[10])
.probe tran v(Out_2[11])
.probe tran v(Out_2[12])

.probe tran v(Out_3[0])
.probe tran v(Out_3[1])
.probe tran v(Out_3[2])
.probe tran v(Out_3[3])
.probe tran v(Out_3[4])
.probe tran v(Out_3[5])
.probe tran v(Out_3[6])
.probe tran v(Out_3[7])
.probe tran v(Out_3[8])
.probe tran v(Out_3[9])
.probe tran v(Out_3[10])
.probe tran v(Out_3[11])
.probe tran v(Out_3[12])

.probe tran v(Out_4[0])
.probe tran v(Out_4[1])
.probe tran v(Out_4[2])
.probe tran v(Out_4[3])
.probe tran v(Out_4[4])
.probe tran v(Out_4[5])
.probe tran v(Out_4[6])
.probe tran v(Out_4[7])
.probe tran v(Out_4[8])
.probe tran v(Out_4[9])
.probe tran v(Out_4[10])
.probe tran v(Out_4[11])
.probe tran v(Out_4[12])

.probe tran v(out_valid)



***********************************
* Define Global Nets              *
***********************************
.GLOBAL VDD GND BL BLB

***********************************
* Voltage Sources                 *
***********************************
vdd     VDD   0  DC supply
vss     VSS   0  DC 0
vbl     BL    0   DC supply/2
vblb    BLB   0   DC supply/2

***********************************
* Measurement Commands            *
***********************************
.meas pwr avg POWER



***-----------------------***
***        circuit        ***
***-----------------------***


* // Xbuf Input In_bar INV
* // ADD INPUT BUFFER
* // WEIGHT IS INITIALIZE IN THE SRAM
* // SO CIM OPERATION IS READ THE WEIGHT AND THEN DO DOT PRODUCT 

XOUT GND VDD clk rst_n out_valid Control

XI11 I1 I1_buf Buffer
XB11 I1_buf I1_inv INV

XI15 I2 I2_buf Buffer
XB15 I2_buf I2_inv INV

XI19 I3 I3_buf Buffer
XB19 I3_buf I3_inv INV

XI23 I4 I4_buf Buffer
XB23 I4_buf I4_inv INV

XI27 I5 I5_buf Buffer
XB27 I5_buf I5_inv INV

XI31 I6 I6_buf Buffer
XB31 I6_buf I6_inv INV

XI35 I7 I7_buf Buffer
XB35 I7_buf I7_inv INV

XI39 I8 I8_buf Buffer
XB39 I8_buf I8_inv INV

XI43 I9 I9_buf Buffer
XB43 I9_buf I9_inv INV

XI47 I10 I10_buf Buffer
XB47 I10_buf I10_inv INV

XI51 I11 I11_buf Buffer
XB51 I11_buf I11_inv INV

XI55 I12 I12_buf Buffer
XB55 I12_buf I12_inv INV

XI59 I13 I13_buf Buffer
XB59 I13_buf I13_inv INV

XI63 I14 I14_buf Buffer
XB63 I14_buf I14_inv INV

XI67 I15 I15_buf Buffer
XB67 I15_buf I15_inv INV

XI71 I16 I16_buf Buffer
XB71 I16_buf I16_inv INV

XI75 I17 I17_buf Buffer
XB75 I17_buf I17_inv INV

XI79 I18 I18_buf Buffer
XB79 I18_buf I18_inv INV

XI83 I19 I19_buf Buffer
XB83 I19_buf I19_inv INV

XI87 I20 I20_buf Buffer
XB87 I20_buf I20_inv INV

XI91 I21 I21_buf Buffer
XB91 I21_buf I21_inv INV

XI95 I22 I22_buf Buffer
XB95 I22_buf I22_inv INV

XI99 I23 I23_buf Buffer
XB99 I23_buf I23_inv INV

XI103 I24 I24_buf Buffer
XB103 I24_buf I24_inv INV

XI107 I25 I25_buf Buffer
XB107 I25_buf I25_inv INV

XI111 I26 I26_buf Buffer
XB111 I26_buf I26_inv INV

XI115 I27 I27_buf Buffer
XB115 I27_buf I27_inv INV

XI119 I28 I28_buf Buffer
XB119 I28_buf I28_inv INV

XI123 I29 I29_buf Buffer
XB123 I29_buf I29_inv INV

XI127 I30 I30_buf Buffer
XB127 I30_buf I30_inv INV

XI131 I31 I31_buf Buffer
XB131 I31_buf I31_inv INV

XI135 I32 I32_buf Buffer
XB135 I32_buf I32_inv INV

X1 I1_inv O_1_1_1 WL_1_1 BL BLB W_1_1_1 W_1_1_1_bar CIM_cell
X2 I1_inv O_1_1_2 WL_1_2 BL BLB W_1_1_2 W_1_1_2_bar CIM_cell
X3 I1_inv O_1_1_3 WL_1_3 BL BLB W_1_1_3 W_1_1_3_bar CIM_cell
X4 I1_inv O_1_1_4 WL_1_4 BL BLB W_1_1_4 W_1_1_4_bar CIM_cell
X5 I2_inv O_1_2_1 WL_1_1 BL BLB W_1_2_1 W_1_2_1_bar CIM_cell
X6 I2_inv O_1_2_2 WL_1_2 BL BLB W_1_2_2 W_1_2_2_bar CIM_cell
X7 I2_inv O_1_2_3 WL_1_3 BL BLB W_1_2_3 W_1_2_3_bar CIM_cell
X8 I2_inv O_1_2_4 WL_1_4 BL BLB W_1_2_4 W_1_2_4_bar CIM_cell
X9 I3_inv O_1_3_1 WL_1_1 BL BLB W_1_3_1 W_1_3_1_bar CIM_cell
X10 I3_inv O_1_3_2 WL_1_2 BL BLB W_1_3_2 W_1_3_2_bar CIM_cell
X11 I3_inv O_1_3_3 WL_1_3 BL BLB W_1_3_3 W_1_3_3_bar CIM_cell
X12 I3_inv O_1_3_4 WL_1_4 BL BLB W_1_3_4 W_1_3_4_bar CIM_cell
X13 I4_inv O_1_4_1 WL_1_1 BL BLB W_1_4_1 W_1_4_1_bar CIM_cell
X14 I4_inv O_1_4_2 WL_1_2 BL BLB W_1_4_2 W_1_4_2_bar CIM_cell
X15 I4_inv O_1_4_3 WL_1_3 BL BLB W_1_4_3 W_1_4_3_bar CIM_cell
X16 I4_inv O_1_4_4 WL_1_4 BL BLB W_1_4_4 W_1_4_4_bar CIM_cell
X17 I5_inv O_1_5_1 WL_1_1 BL BLB W_1_5_1 W_1_5_1_bar CIM_cell
X18 I5_inv O_1_5_2 WL_1_2 BL BLB W_1_5_2 W_1_5_2_bar CIM_cell
X19 I5_inv O_1_5_3 WL_1_3 BL BLB W_1_5_3 W_1_5_3_bar CIM_cell
X20 I5_inv O_1_5_4 WL_1_4 BL BLB W_1_5_4 W_1_5_4_bar CIM_cell
X21 I6_inv O_1_6_1 WL_1_1 BL BLB W_1_6_1 W_1_6_1_bar CIM_cell
X22 I6_inv O_1_6_2 WL_1_2 BL BLB W_1_6_2 W_1_6_2_bar CIM_cell
X23 I6_inv O_1_6_3 WL_1_3 BL BLB W_1_6_3 W_1_6_3_bar CIM_cell
X24 I6_inv O_1_6_4 WL_1_4 BL BLB W_1_6_4 W_1_6_4_bar CIM_cell
X25 I7_inv O_1_7_1 WL_1_1 BL BLB W_1_7_1 W_1_7_1_bar CIM_cell
X26 I7_inv O_1_7_2 WL_1_2 BL BLB W_1_7_2 W_1_7_2_bar CIM_cell
X27 I7_inv O_1_7_3 WL_1_3 BL BLB W_1_7_3 W_1_7_3_bar CIM_cell
X28 I7_inv O_1_7_4 WL_1_4 BL BLB W_1_7_4 W_1_7_4_bar CIM_cell
X29 I8_inv O_1_8_1 WL_1_1 BL BLB W_1_8_1 W_1_8_1_bar CIM_cell
X30 I8_inv O_1_8_2 WL_1_2 BL BLB W_1_8_2 W_1_8_2_bar CIM_cell
X31 I8_inv O_1_8_3 WL_1_3 BL BLB W_1_8_3 W_1_8_3_bar CIM_cell
X32 I8_inv O_1_8_4 WL_1_4 BL BLB W_1_8_4 W_1_8_4_bar CIM_cell
X33 I9_inv O_1_9_1 WL_1_1 BL BLB W_1_9_1 W_1_9_1_bar CIM_cell
X34 I9_inv O_1_9_2 WL_1_2 BL BLB W_1_9_2 W_1_9_2_bar CIM_cell
X35 I9_inv O_1_9_3 WL_1_3 BL BLB W_1_9_3 W_1_9_3_bar CIM_cell
X36 I9_inv O_1_9_4 WL_1_4 BL BLB W_1_9_4 W_1_9_4_bar CIM_cell
X37 I10_inv O_1_10_1 WL_1_1 BL BLB W_1_10_1 W_1_10_1_bar CIM_cell
X38 I10_inv O_1_10_2 WL_1_2 BL BLB W_1_10_2 W_1_10_2_bar CIM_cell
X39 I10_inv O_1_10_3 WL_1_3 BL BLB W_1_10_3 W_1_10_3_bar CIM_cell
X40 I10_inv O_1_10_4 WL_1_4 BL BLB W_1_10_4 W_1_10_4_bar CIM_cell
X41 I11_inv O_1_11_1 WL_1_1 BL BLB W_1_11_1 W_1_11_1_bar CIM_cell
X42 I11_inv O_1_11_2 WL_1_2 BL BLB W_1_11_2 W_1_11_2_bar CIM_cell
X43 I11_inv O_1_11_3 WL_1_3 BL BLB W_1_11_3 W_1_11_3_bar CIM_cell
X44 I11_inv O_1_11_4 WL_1_4 BL BLB W_1_11_4 W_1_11_4_bar CIM_cell
X45 I12_inv O_1_12_1 WL_1_1 BL BLB W_1_12_1 W_1_12_1_bar CIM_cell
X46 I12_inv O_1_12_2 WL_1_2 BL BLB W_1_12_2 W_1_12_2_bar CIM_cell
X47 I12_inv O_1_12_3 WL_1_3 BL BLB W_1_12_3 W_1_12_3_bar CIM_cell
X48 I12_inv O_1_12_4 WL_1_4 BL BLB W_1_12_4 W_1_12_4_bar CIM_cell
X49 I13_inv O_1_13_1 WL_1_1 BL BLB W_1_13_1 W_1_13_1_bar CIM_cell
X50 I13_inv O_1_13_2 WL_1_2 BL BLB W_1_13_2 W_1_13_2_bar CIM_cell
X51 I13_inv O_1_13_3 WL_1_3 BL BLB W_1_13_3 W_1_13_3_bar CIM_cell
X52 I13_inv O_1_13_4 WL_1_4 BL BLB W_1_13_4 W_1_13_4_bar CIM_cell
X53 I14_inv O_1_14_1 WL_1_1 BL BLB W_1_14_1 W_1_14_1_bar CIM_cell
X54 I14_inv O_1_14_2 WL_1_2 BL BLB W_1_14_2 W_1_14_2_bar CIM_cell
X55 I14_inv O_1_14_3 WL_1_3 BL BLB W_1_14_3 W_1_14_3_bar CIM_cell
X56 I14_inv O_1_14_4 WL_1_4 BL BLB W_1_14_4 W_1_14_4_bar CIM_cell
X57 I15_inv O_1_15_1 WL_1_1 BL BLB W_1_15_1 W_1_15_1_bar CIM_cell
X58 I15_inv O_1_15_2 WL_1_2 BL BLB W_1_15_2 W_1_15_2_bar CIM_cell
X59 I15_inv O_1_15_3 WL_1_3 BL BLB W_1_15_3 W_1_15_3_bar CIM_cell
X60 I15_inv O_1_15_4 WL_1_4 BL BLB W_1_15_4 W_1_15_4_bar CIM_cell
X61 I16_inv O_1_16_1 WL_1_1 BL BLB W_1_16_1 W_1_16_1_bar CIM_cell
X62 I16_inv O_1_16_2 WL_1_2 BL BLB W_1_16_2 W_1_16_2_bar CIM_cell
X63 I16_inv O_1_16_3 WL_1_3 BL BLB W_1_16_3 W_1_16_3_bar CIM_cell
X64 I16_inv O_1_16_4 WL_1_4 BL BLB W_1_16_4 W_1_16_4_bar CIM_cell
X65 I17_inv O_1_17_1 WL_1_1 BL BLB W_1_17_1 W_1_17_1_bar CIM_cell
X66 I17_inv O_1_17_2 WL_1_2 BL BLB W_1_17_2 W_1_17_2_bar CIM_cell
X67 I17_inv O_1_17_3 WL_1_3 BL BLB W_1_17_3 W_1_17_3_bar CIM_cell
X68 I17_inv O_1_17_4 WL_1_4 BL BLB W_1_17_4 W_1_17_4_bar CIM_cell
X69 I18_inv O_1_18_1 WL_1_1 BL BLB W_1_18_1 W_1_18_1_bar CIM_cell
X70 I18_inv O_1_18_2 WL_1_2 BL BLB W_1_18_2 W_1_18_2_bar CIM_cell
X71 I18_inv O_1_18_3 WL_1_3 BL BLB W_1_18_3 W_1_18_3_bar CIM_cell
X72 I18_inv O_1_18_4 WL_1_4 BL BLB W_1_18_4 W_1_18_4_bar CIM_cell
X73 I19_inv O_1_19_1 WL_1_1 BL BLB W_1_19_1 W_1_19_1_bar CIM_cell
X74 I19_inv O_1_19_2 WL_1_2 BL BLB W_1_19_2 W_1_19_2_bar CIM_cell
X75 I19_inv O_1_19_3 WL_1_3 BL BLB W_1_19_3 W_1_19_3_bar CIM_cell
X76 I19_inv O_1_19_4 WL_1_4 BL BLB W_1_19_4 W_1_19_4_bar CIM_cell
X77 I20_inv O_1_20_1 WL_1_1 BL BLB W_1_20_1 W_1_20_1_bar CIM_cell
X78 I20_inv O_1_20_2 WL_1_2 BL BLB W_1_20_2 W_1_20_2_bar CIM_cell
X79 I20_inv O_1_20_3 WL_1_3 BL BLB W_1_20_3 W_1_20_3_bar CIM_cell
X80 I20_inv O_1_20_4 WL_1_4 BL BLB W_1_20_4 W_1_20_4_bar CIM_cell
X81 I21_inv O_1_21_1 WL_1_1 BL BLB W_1_21_1 W_1_21_1_bar CIM_cell
X82 I21_inv O_1_21_2 WL_1_2 BL BLB W_1_21_2 W_1_21_2_bar CIM_cell
X83 I21_inv O_1_21_3 WL_1_3 BL BLB W_1_21_3 W_1_21_3_bar CIM_cell
X84 I21_inv O_1_21_4 WL_1_4 BL BLB W_1_21_4 W_1_21_4_bar CIM_cell
X85 I22_inv O_1_22_1 WL_1_1 BL BLB W_1_22_1 W_1_22_1_bar CIM_cell
X86 I22_inv O_1_22_2 WL_1_2 BL BLB W_1_22_2 W_1_22_2_bar CIM_cell
X87 I22_inv O_1_22_3 WL_1_3 BL BLB W_1_22_3 W_1_22_3_bar CIM_cell
X88 I22_inv O_1_22_4 WL_1_4 BL BLB W_1_22_4 W_1_22_4_bar CIM_cell
X89 I23_inv O_1_23_1 WL_1_1 BL BLB W_1_23_1 W_1_23_1_bar CIM_cell
X90 I23_inv O_1_23_2 WL_1_2 BL BLB W_1_23_2 W_1_23_2_bar CIM_cell
X91 I23_inv O_1_23_3 WL_1_3 BL BLB W_1_23_3 W_1_23_3_bar CIM_cell
X92 I23_inv O_1_23_4 WL_1_4 BL BLB W_1_23_4 W_1_23_4_bar CIM_cell
X93 I24_inv O_1_24_1 WL_1_1 BL BLB W_1_24_1 W_1_24_1_bar CIM_cell
X94 I24_inv O_1_24_2 WL_1_2 BL BLB W_1_24_2 W_1_24_2_bar CIM_cell
X95 I24_inv O_1_24_3 WL_1_3 BL BLB W_1_24_3 W_1_24_3_bar CIM_cell
X96 I24_inv O_1_24_4 WL_1_4 BL BLB W_1_24_4 W_1_24_4_bar CIM_cell
X97 I25_inv O_1_25_1 WL_1_1 BL BLB W_1_25_1 W_1_25_1_bar CIM_cell
X98 I25_inv O_1_25_2 WL_1_2 BL BLB W_1_25_2 W_1_25_2_bar CIM_cell
X99 I25_inv O_1_25_3 WL_1_3 BL BLB W_1_25_3 W_1_25_3_bar CIM_cell
X100 I25_inv O_1_25_4 WL_1_4 BL BLB W_1_25_4 W_1_25_4_bar CIM_cell
X101 I26_inv O_1_26_1 WL_1_1 BL BLB W_1_26_1 W_1_26_1_bar CIM_cell
X102 I26_inv O_1_26_2 WL_1_2 BL BLB W_1_26_2 W_1_26_2_bar CIM_cell
X103 I26_inv O_1_26_3 WL_1_3 BL BLB W_1_26_3 W_1_26_3_bar CIM_cell
X104 I26_inv O_1_26_4 WL_1_4 BL BLB W_1_26_4 W_1_26_4_bar CIM_cell
X105 I27_inv O_1_27_1 WL_1_1 BL BLB W_1_27_1 W_1_27_1_bar CIM_cell
X106 I27_inv O_1_27_2 WL_1_2 BL BLB W_1_27_2 W_1_27_2_bar CIM_cell
X107 I27_inv O_1_27_3 WL_1_3 BL BLB W_1_27_3 W_1_27_3_bar CIM_cell
X108 I27_inv O_1_27_4 WL_1_4 BL BLB W_1_27_4 W_1_27_4_bar CIM_cell
X109 I28_inv O_1_28_1 WL_1_1 BL BLB W_1_28_1 W_1_28_1_bar CIM_cell
X110 I28_inv O_1_28_2 WL_1_2 BL BLB W_1_28_2 W_1_28_2_bar CIM_cell
X111 I28_inv O_1_28_3 WL_1_3 BL BLB W_1_28_3 W_1_28_3_bar CIM_cell
X112 I28_inv O_1_28_4 WL_1_4 BL BLB W_1_28_4 W_1_28_4_bar CIM_cell
X113 I29_inv O_1_29_1 WL_1_1 BL BLB W_1_29_1 W_1_29_1_bar CIM_cell
X114 I29_inv O_1_29_2 WL_1_2 BL BLB W_1_29_2 W_1_29_2_bar CIM_cell
X115 I29_inv O_1_29_3 WL_1_3 BL BLB W_1_29_3 W_1_29_3_bar CIM_cell
X116 I29_inv O_1_29_4 WL_1_4 BL BLB W_1_29_4 W_1_29_4_bar CIM_cell
X117 I30_inv O_1_30_1 WL_1_1 BL BLB W_1_30_1 W_1_30_1_bar CIM_cell
X118 I30_inv O_1_30_2 WL_1_2 BL BLB W_1_30_2 W_1_30_2_bar CIM_cell
X119 I30_inv O_1_30_3 WL_1_3 BL BLB W_1_30_3 W_1_30_3_bar CIM_cell
X120 I30_inv O_1_30_4 WL_1_4 BL BLB W_1_30_4 W_1_30_4_bar CIM_cell
X121 I31_inv O_1_31_1 WL_1_1 BL BLB W_1_31_1 W_1_31_1_bar CIM_cell
X122 I31_inv O_1_31_2 WL_1_2 BL BLB W_1_31_2 W_1_31_2_bar CIM_cell
X123 I31_inv O_1_31_3 WL_1_3 BL BLB W_1_31_3 W_1_31_3_bar CIM_cell
X124 I31_inv O_1_31_4 WL_1_4 BL BLB W_1_31_4 W_1_31_4_bar CIM_cell
X125 I32_inv O_1_32_1 WL_1_1 BL BLB W_1_32_1 W_1_32_1_bar CIM_cell
X126 I32_inv O_1_32_2 WL_1_2 BL BLB W_1_32_2 W_1_32_2_bar CIM_cell
X127 I32_inv O_1_32_3 WL_1_3 BL BLB W_1_32_3 W_1_32_3_bar CIM_cell
X128 I32_inv O_1_32_4 WL_1_4 BL BLB W_1_32_4 W_1_32_4_bar CIM_cell
X129 I1_inv O_2_1_1 WL_2_1 BL BLB W_2_1_1 W_2_1_1_bar CIM_cell
X130 I1_inv O_2_1_2 WL_2_2 BL BLB W_2_1_2 W_2_1_2_bar CIM_cell
X131 I1_inv O_2_1_3 WL_2_3 BL BLB W_2_1_3 W_2_1_3_bar CIM_cell
X132 I1_inv O_2_1_4 WL_2_4 BL BLB W_2_1_4 W_2_1_4_bar CIM_cell
X133 I2_inv O_2_2_1 WL_2_1 BL BLB W_2_2_1 W_2_2_1_bar CIM_cell
X134 I2_inv O_2_2_2 WL_2_2 BL BLB W_2_2_2 W_2_2_2_bar CIM_cell
X135 I2_inv O_2_2_3 WL_2_3 BL BLB W_2_2_3 W_2_2_3_bar CIM_cell
X136 I2_inv O_2_2_4 WL_2_4 BL BLB W_2_2_4 W_2_2_4_bar CIM_cell
X137 I3_inv O_2_3_1 WL_2_1 BL BLB W_2_3_1 W_2_3_1_bar CIM_cell
X138 I3_inv O_2_3_2 WL_2_2 BL BLB W_2_3_2 W_2_3_2_bar CIM_cell
X139 I3_inv O_2_3_3 WL_2_3 BL BLB W_2_3_3 W_2_3_3_bar CIM_cell
X140 I3_inv O_2_3_4 WL_2_4 BL BLB W_2_3_4 W_2_3_4_bar CIM_cell
X141 I4_inv O_2_4_1 WL_2_1 BL BLB W_2_4_1 W_2_4_1_bar CIM_cell
X142 I4_inv O_2_4_2 WL_2_2 BL BLB W_2_4_2 W_2_4_2_bar CIM_cell
X143 I4_inv O_2_4_3 WL_2_3 BL BLB W_2_4_3 W_2_4_3_bar CIM_cell
X144 I4_inv O_2_4_4 WL_2_4 BL BLB W_2_4_4 W_2_4_4_bar CIM_cell
X145 I5_inv O_2_5_1 WL_2_1 BL BLB W_2_5_1 W_2_5_1_bar CIM_cell
X146 I5_inv O_2_5_2 WL_2_2 BL BLB W_2_5_2 W_2_5_2_bar CIM_cell
X147 I5_inv O_2_5_3 WL_2_3 BL BLB W_2_5_3 W_2_5_3_bar CIM_cell
X148 I5_inv O_2_5_4 WL_2_4 BL BLB W_2_5_4 W_2_5_4_bar CIM_cell
X149 I6_inv O_2_6_1 WL_2_1 BL BLB W_2_6_1 W_2_6_1_bar CIM_cell
X150 I6_inv O_2_6_2 WL_2_2 BL BLB W_2_6_2 W_2_6_2_bar CIM_cell
X151 I6_inv O_2_6_3 WL_2_3 BL BLB W_2_6_3 W_2_6_3_bar CIM_cell
X152 I6_inv O_2_6_4 WL_2_4 BL BLB W_2_6_4 W_2_6_4_bar CIM_cell
X153 I7_inv O_2_7_1 WL_2_1 BL BLB W_2_7_1 W_2_7_1_bar CIM_cell
X154 I7_inv O_2_7_2 WL_2_2 BL BLB W_2_7_2 W_2_7_2_bar CIM_cell
X155 I7_inv O_2_7_3 WL_2_3 BL BLB W_2_7_3 W_2_7_3_bar CIM_cell
X156 I7_inv O_2_7_4 WL_2_4 BL BLB W_2_7_4 W_2_7_4_bar CIM_cell
X157 I8_inv O_2_8_1 WL_2_1 BL BLB W_2_8_1 W_2_8_1_bar CIM_cell
X158 I8_inv O_2_8_2 WL_2_2 BL BLB W_2_8_2 W_2_8_2_bar CIM_cell
X159 I8_inv O_2_8_3 WL_2_3 BL BLB W_2_8_3 W_2_8_3_bar CIM_cell
X160 I8_inv O_2_8_4 WL_2_4 BL BLB W_2_8_4 W_2_8_4_bar CIM_cell
X161 I9_inv O_2_9_1 WL_2_1 BL BLB W_2_9_1 W_2_9_1_bar CIM_cell
X162 I9_inv O_2_9_2 WL_2_2 BL BLB W_2_9_2 W_2_9_2_bar CIM_cell
X163 I9_inv O_2_9_3 WL_2_3 BL BLB W_2_9_3 W_2_9_3_bar CIM_cell
X164 I9_inv O_2_9_4 WL_2_4 BL BLB W_2_9_4 W_2_9_4_bar CIM_cell
X165 I10_inv O_2_10_1 WL_2_1 BL BLB W_2_10_1 W_2_10_1_bar CIM_cell
X166 I10_inv O_2_10_2 WL_2_2 BL BLB W_2_10_2 W_2_10_2_bar CIM_cell
X167 I10_inv O_2_10_3 WL_2_3 BL BLB W_2_10_3 W_2_10_3_bar CIM_cell
X168 I10_inv O_2_10_4 WL_2_4 BL BLB W_2_10_4 W_2_10_4_bar CIM_cell
X169 I11_inv O_2_11_1 WL_2_1 BL BLB W_2_11_1 W_2_11_1_bar CIM_cell
X170 I11_inv O_2_11_2 WL_2_2 BL BLB W_2_11_2 W_2_11_2_bar CIM_cell
X171 I11_inv O_2_11_3 WL_2_3 BL BLB W_2_11_3 W_2_11_3_bar CIM_cell
X172 I11_inv O_2_11_4 WL_2_4 BL BLB W_2_11_4 W_2_11_4_bar CIM_cell
X173 I12_inv O_2_12_1 WL_2_1 BL BLB W_2_12_1 W_2_12_1_bar CIM_cell
X174 I12_inv O_2_12_2 WL_2_2 BL BLB W_2_12_2 W_2_12_2_bar CIM_cell
X175 I12_inv O_2_12_3 WL_2_3 BL BLB W_2_12_3 W_2_12_3_bar CIM_cell
X176 I12_inv O_2_12_4 WL_2_4 BL BLB W_2_12_4 W_2_12_4_bar CIM_cell
X177 I13_inv O_2_13_1 WL_2_1 BL BLB W_2_13_1 W_2_13_1_bar CIM_cell
X178 I13_inv O_2_13_2 WL_2_2 BL BLB W_2_13_2 W_2_13_2_bar CIM_cell
X179 I13_inv O_2_13_3 WL_2_3 BL BLB W_2_13_3 W_2_13_3_bar CIM_cell
X180 I13_inv O_2_13_4 WL_2_4 BL BLB W_2_13_4 W_2_13_4_bar CIM_cell
X181 I14_inv O_2_14_1 WL_2_1 BL BLB W_2_14_1 W_2_14_1_bar CIM_cell
X182 I14_inv O_2_14_2 WL_2_2 BL BLB W_2_14_2 W_2_14_2_bar CIM_cell
X183 I14_inv O_2_14_3 WL_2_3 BL BLB W_2_14_3 W_2_14_3_bar CIM_cell
X184 I14_inv O_2_14_4 WL_2_4 BL BLB W_2_14_4 W_2_14_4_bar CIM_cell
X185 I15_inv O_2_15_1 WL_2_1 BL BLB W_2_15_1 W_2_15_1_bar CIM_cell
X186 I15_inv O_2_15_2 WL_2_2 BL BLB W_2_15_2 W_2_15_2_bar CIM_cell
X187 I15_inv O_2_15_3 WL_2_3 BL BLB W_2_15_3 W_2_15_3_bar CIM_cell
X188 I15_inv O_2_15_4 WL_2_4 BL BLB W_2_15_4 W_2_15_4_bar CIM_cell
X189 I16_inv O_2_16_1 WL_2_1 BL BLB W_2_16_1 W_2_16_1_bar CIM_cell
X190 I16_inv O_2_16_2 WL_2_2 BL BLB W_2_16_2 W_2_16_2_bar CIM_cell
X191 I16_inv O_2_16_3 WL_2_3 BL BLB W_2_16_3 W_2_16_3_bar CIM_cell
X192 I16_inv O_2_16_4 WL_2_4 BL BLB W_2_16_4 W_2_16_4_bar CIM_cell
X193 I17_inv O_2_17_1 WL_2_1 BL BLB W_2_17_1 W_2_17_1_bar CIM_cell
X194 I17_inv O_2_17_2 WL_2_2 BL BLB W_2_17_2 W_2_17_2_bar CIM_cell
X195 I17_inv O_2_17_3 WL_2_3 BL BLB W_2_17_3 W_2_17_3_bar CIM_cell
X196 I17_inv O_2_17_4 WL_2_4 BL BLB W_2_17_4 W_2_17_4_bar CIM_cell
X197 I18_inv O_2_18_1 WL_2_1 BL BLB W_2_18_1 W_2_18_1_bar CIM_cell
X198 I18_inv O_2_18_2 WL_2_2 BL BLB W_2_18_2 W_2_18_2_bar CIM_cell
X199 I18_inv O_2_18_3 WL_2_3 BL BLB W_2_18_3 W_2_18_3_bar CIM_cell
X200 I18_inv O_2_18_4 WL_2_4 BL BLB W_2_18_4 W_2_18_4_bar CIM_cell
X201 I19_inv O_2_19_1 WL_2_1 BL BLB W_2_19_1 W_2_19_1_bar CIM_cell
X202 I19_inv O_2_19_2 WL_2_2 BL BLB W_2_19_2 W_2_19_2_bar CIM_cell
X203 I19_inv O_2_19_3 WL_2_3 BL BLB W_2_19_3 W_2_19_3_bar CIM_cell
X204 I19_inv O_2_19_4 WL_2_4 BL BLB W_2_19_4 W_2_19_4_bar CIM_cell
X205 I20_inv O_2_20_1 WL_2_1 BL BLB W_2_20_1 W_2_20_1_bar CIM_cell
X206 I20_inv O_2_20_2 WL_2_2 BL BLB W_2_20_2 W_2_20_2_bar CIM_cell
X207 I20_inv O_2_20_3 WL_2_3 BL BLB W_2_20_3 W_2_20_3_bar CIM_cell
X208 I20_inv O_2_20_4 WL_2_4 BL BLB W_2_20_4 W_2_20_4_bar CIM_cell
X209 I21_inv O_2_21_1 WL_2_1 BL BLB W_2_21_1 W_2_21_1_bar CIM_cell
X210 I21_inv O_2_21_2 WL_2_2 BL BLB W_2_21_2 W_2_21_2_bar CIM_cell
X211 I21_inv O_2_21_3 WL_2_3 BL BLB W_2_21_3 W_2_21_3_bar CIM_cell
X212 I21_inv O_2_21_4 WL_2_4 BL BLB W_2_21_4 W_2_21_4_bar CIM_cell
X213 I22_inv O_2_22_1 WL_2_1 BL BLB W_2_22_1 W_2_22_1_bar CIM_cell
X214 I22_inv O_2_22_2 WL_2_2 BL BLB W_2_22_2 W_2_22_2_bar CIM_cell
X215 I22_inv O_2_22_3 WL_2_3 BL BLB W_2_22_3 W_2_22_3_bar CIM_cell
X216 I22_inv O_2_22_4 WL_2_4 BL BLB W_2_22_4 W_2_22_4_bar CIM_cell
X217 I23_inv O_2_23_1 WL_2_1 BL BLB W_2_23_1 W_2_23_1_bar CIM_cell
X218 I23_inv O_2_23_2 WL_2_2 BL BLB W_2_23_2 W_2_23_2_bar CIM_cell
X219 I23_inv O_2_23_3 WL_2_3 BL BLB W_2_23_3 W_2_23_3_bar CIM_cell
X220 I23_inv O_2_23_4 WL_2_4 BL BLB W_2_23_4 W_2_23_4_bar CIM_cell
X221 I24_inv O_2_24_1 WL_2_1 BL BLB W_2_24_1 W_2_24_1_bar CIM_cell
X222 I24_inv O_2_24_2 WL_2_2 BL BLB W_2_24_2 W_2_24_2_bar CIM_cell
X223 I24_inv O_2_24_3 WL_2_3 BL BLB W_2_24_3 W_2_24_3_bar CIM_cell
X224 I24_inv O_2_24_4 WL_2_4 BL BLB W_2_24_4 W_2_24_4_bar CIM_cell
X225 I25_inv O_2_25_1 WL_2_1 BL BLB W_2_25_1 W_2_25_1_bar CIM_cell
X226 I25_inv O_2_25_2 WL_2_2 BL BLB W_2_25_2 W_2_25_2_bar CIM_cell
X227 I25_inv O_2_25_3 WL_2_3 BL BLB W_2_25_3 W_2_25_3_bar CIM_cell
X228 I25_inv O_2_25_4 WL_2_4 BL BLB W_2_25_4 W_2_25_4_bar CIM_cell
X229 I26_inv O_2_26_1 WL_2_1 BL BLB W_2_26_1 W_2_26_1_bar CIM_cell
X230 I26_inv O_2_26_2 WL_2_2 BL BLB W_2_26_2 W_2_26_2_bar CIM_cell
X231 I26_inv O_2_26_3 WL_2_3 BL BLB W_2_26_3 W_2_26_3_bar CIM_cell
X232 I26_inv O_2_26_4 WL_2_4 BL BLB W_2_26_4 W_2_26_4_bar CIM_cell
X233 I27_inv O_2_27_1 WL_2_1 BL BLB W_2_27_1 W_2_27_1_bar CIM_cell
X234 I27_inv O_2_27_2 WL_2_2 BL BLB W_2_27_2 W_2_27_2_bar CIM_cell
X235 I27_inv O_2_27_3 WL_2_3 BL BLB W_2_27_3 W_2_27_3_bar CIM_cell
X236 I27_inv O_2_27_4 WL_2_4 BL BLB W_2_27_4 W_2_27_4_bar CIM_cell
X237 I28_inv O_2_28_1 WL_2_1 BL BLB W_2_28_1 W_2_28_1_bar CIM_cell
X238 I28_inv O_2_28_2 WL_2_2 BL BLB W_2_28_2 W_2_28_2_bar CIM_cell
X239 I28_inv O_2_28_3 WL_2_3 BL BLB W_2_28_3 W_2_28_3_bar CIM_cell
X240 I28_inv O_2_28_4 WL_2_4 BL BLB W_2_28_4 W_2_28_4_bar CIM_cell
X241 I29_inv O_2_29_1 WL_2_1 BL BLB W_2_29_1 W_2_29_1_bar CIM_cell
X242 I29_inv O_2_29_2 WL_2_2 BL BLB W_2_29_2 W_2_29_2_bar CIM_cell
X243 I29_inv O_2_29_3 WL_2_3 BL BLB W_2_29_3 W_2_29_3_bar CIM_cell
X244 I29_inv O_2_29_4 WL_2_4 BL BLB W_2_29_4 W_2_29_4_bar CIM_cell
X245 I30_inv O_2_30_1 WL_2_1 BL BLB W_2_30_1 W_2_30_1_bar CIM_cell
X246 I30_inv O_2_30_2 WL_2_2 BL BLB W_2_30_2 W_2_30_2_bar CIM_cell
X247 I30_inv O_2_30_3 WL_2_3 BL BLB W_2_30_3 W_2_30_3_bar CIM_cell
X248 I30_inv O_2_30_4 WL_2_4 BL BLB W_2_30_4 W_2_30_4_bar CIM_cell
X249 I31_inv O_2_31_1 WL_2_1 BL BLB W_2_31_1 W_2_31_1_bar CIM_cell
X250 I31_inv O_2_31_2 WL_2_2 BL BLB W_2_31_2 W_2_31_2_bar CIM_cell
X251 I31_inv O_2_31_3 WL_2_3 BL BLB W_2_31_3 W_2_31_3_bar CIM_cell
X252 I31_inv O_2_31_4 WL_2_4 BL BLB W_2_31_4 W_2_31_4_bar CIM_cell
X253 I32_inv O_2_32_1 WL_2_1 BL BLB W_2_32_1 W_2_32_1_bar CIM_cell
X254 I32_inv O_2_32_2 WL_2_2 BL BLB W_2_32_2 W_2_32_2_bar CIM_cell
X255 I32_inv O_2_32_3 WL_2_3 BL BLB W_2_32_3 W_2_32_3_bar CIM_cell
X256 I32_inv O_2_32_4 WL_2_4 BL BLB W_2_32_4 W_2_32_4_bar CIM_cell
X257 I1_inv O_3_1_1 WL_3_1 BL BLB W_3_1_1 W_3_1_1_bar CIM_cell
X258 I1_inv O_3_1_2 WL_3_2 BL BLB W_3_1_2 W_3_1_2_bar CIM_cell
X259 I1_inv O_3_1_3 WL_3_3 BL BLB W_3_1_3 W_3_1_3_bar CIM_cell
X260 I1_inv O_3_1_4 WL_3_4 BL BLB W_3_1_4 W_3_1_4_bar CIM_cell
X261 I2_inv O_3_2_1 WL_3_1 BL BLB W_3_2_1 W_3_2_1_bar CIM_cell
X262 I2_inv O_3_2_2 WL_3_2 BL BLB W_3_2_2 W_3_2_2_bar CIM_cell
X263 I2_inv O_3_2_3 WL_3_3 BL BLB W_3_2_3 W_3_2_3_bar CIM_cell
X264 I2_inv O_3_2_4 WL_3_4 BL BLB W_3_2_4 W_3_2_4_bar CIM_cell
X265 I3_inv O_3_3_1 WL_3_1 BL BLB W_3_3_1 W_3_3_1_bar CIM_cell
X266 I3_inv O_3_3_2 WL_3_2 BL BLB W_3_3_2 W_3_3_2_bar CIM_cell
X267 I3_inv O_3_3_3 WL_3_3 BL BLB W_3_3_3 W_3_3_3_bar CIM_cell
X268 I3_inv O_3_3_4 WL_3_4 BL BLB W_3_3_4 W_3_3_4_bar CIM_cell
X269 I4_inv O_3_4_1 WL_3_1 BL BLB W_3_4_1 W_3_4_1_bar CIM_cell
X270 I4_inv O_3_4_2 WL_3_2 BL BLB W_3_4_2 W_3_4_2_bar CIM_cell
X271 I4_inv O_3_4_3 WL_3_3 BL BLB W_3_4_3 W_3_4_3_bar CIM_cell
X272 I4_inv O_3_4_4 WL_3_4 BL BLB W_3_4_4 W_3_4_4_bar CIM_cell
X273 I5_inv O_3_5_1 WL_3_1 BL BLB W_3_5_1 W_3_5_1_bar CIM_cell
X274 I5_inv O_3_5_2 WL_3_2 BL BLB W_3_5_2 W_3_5_2_bar CIM_cell
X275 I5_inv O_3_5_3 WL_3_3 BL BLB W_3_5_3 W_3_5_3_bar CIM_cell
X276 I5_inv O_3_5_4 WL_3_4 BL BLB W_3_5_4 W_3_5_4_bar CIM_cell
X277 I6_inv O_3_6_1 WL_3_1 BL BLB W_3_6_1 W_3_6_1_bar CIM_cell
X278 I6_inv O_3_6_2 WL_3_2 BL BLB W_3_6_2 W_3_6_2_bar CIM_cell
X279 I6_inv O_3_6_3 WL_3_3 BL BLB W_3_6_3 W_3_6_3_bar CIM_cell
X280 I6_inv O_3_6_4 WL_3_4 BL BLB W_3_6_4 W_3_6_4_bar CIM_cell
X281 I7_inv O_3_7_1 WL_3_1 BL BLB W_3_7_1 W_3_7_1_bar CIM_cell
X282 I7_inv O_3_7_2 WL_3_2 BL BLB W_3_7_2 W_3_7_2_bar CIM_cell
X283 I7_inv O_3_7_3 WL_3_3 BL BLB W_3_7_3 W_3_7_3_bar CIM_cell
X284 I7_inv O_3_7_4 WL_3_4 BL BLB W_3_7_4 W_3_7_4_bar CIM_cell
X285 I8_inv O_3_8_1 WL_3_1 BL BLB W_3_8_1 W_3_8_1_bar CIM_cell
X286 I8_inv O_3_8_2 WL_3_2 BL BLB W_3_8_2 W_3_8_2_bar CIM_cell
X287 I8_inv O_3_8_3 WL_3_3 BL BLB W_3_8_3 W_3_8_3_bar CIM_cell
X288 I8_inv O_3_8_4 WL_3_4 BL BLB W_3_8_4 W_3_8_4_bar CIM_cell
X289 I9_inv O_3_9_1 WL_3_1 BL BLB W_3_9_1 W_3_9_1_bar CIM_cell
X290 I9_inv O_3_9_2 WL_3_2 BL BLB W_3_9_2 W_3_9_2_bar CIM_cell
X291 I9_inv O_3_9_3 WL_3_3 BL BLB W_3_9_3 W_3_9_3_bar CIM_cell
X292 I9_inv O_3_9_4 WL_3_4 BL BLB W_3_9_4 W_3_9_4_bar CIM_cell
X293 I10_inv O_3_10_1 WL_3_1 BL BLB W_3_10_1 W_3_10_1_bar CIM_cell
X294 I10_inv O_3_10_2 WL_3_2 BL BLB W_3_10_2 W_3_10_2_bar CIM_cell
X295 I10_inv O_3_10_3 WL_3_3 BL BLB W_3_10_3 W_3_10_3_bar CIM_cell
X296 I10_inv O_3_10_4 WL_3_4 BL BLB W_3_10_4 W_3_10_4_bar CIM_cell
X297 I11_inv O_3_11_1 WL_3_1 BL BLB W_3_11_1 W_3_11_1_bar CIM_cell
X298 I11_inv O_3_11_2 WL_3_2 BL BLB W_3_11_2 W_3_11_2_bar CIM_cell
X299 I11_inv O_3_11_3 WL_3_3 BL BLB W_3_11_3 W_3_11_3_bar CIM_cell
X300 I11_inv O_3_11_4 WL_3_4 BL BLB W_3_11_4 W_3_11_4_bar CIM_cell
X301 I12_inv O_3_12_1 WL_3_1 BL BLB W_3_12_1 W_3_12_1_bar CIM_cell
X302 I12_inv O_3_12_2 WL_3_2 BL BLB W_3_12_2 W_3_12_2_bar CIM_cell
X303 I12_inv O_3_12_3 WL_3_3 BL BLB W_3_12_3 W_3_12_3_bar CIM_cell
X304 I12_inv O_3_12_4 WL_3_4 BL BLB W_3_12_4 W_3_12_4_bar CIM_cell
X305 I13_inv O_3_13_1 WL_3_1 BL BLB W_3_13_1 W_3_13_1_bar CIM_cell
X306 I13_inv O_3_13_2 WL_3_2 BL BLB W_3_13_2 W_3_13_2_bar CIM_cell
X307 I13_inv O_3_13_3 WL_3_3 BL BLB W_3_13_3 W_3_13_3_bar CIM_cell
X308 I13_inv O_3_13_4 WL_3_4 BL BLB W_3_13_4 W_3_13_4_bar CIM_cell
X309 I14_inv O_3_14_1 WL_3_1 BL BLB W_3_14_1 W_3_14_1_bar CIM_cell
X310 I14_inv O_3_14_2 WL_3_2 BL BLB W_3_14_2 W_3_14_2_bar CIM_cell
X311 I14_inv O_3_14_3 WL_3_3 BL BLB W_3_14_3 W_3_14_3_bar CIM_cell
X312 I14_inv O_3_14_4 WL_3_4 BL BLB W_3_14_4 W_3_14_4_bar CIM_cell
X313 I15_inv O_3_15_1 WL_3_1 BL BLB W_3_15_1 W_3_15_1_bar CIM_cell
X314 I15_inv O_3_15_2 WL_3_2 BL BLB W_3_15_2 W_3_15_2_bar CIM_cell
X315 I15_inv O_3_15_3 WL_3_3 BL BLB W_3_15_3 W_3_15_3_bar CIM_cell
X316 I15_inv O_3_15_4 WL_3_4 BL BLB W_3_15_4 W_3_15_4_bar CIM_cell
X317 I16_inv O_3_16_1 WL_3_1 BL BLB W_3_16_1 W_3_16_1_bar CIM_cell
X318 I16_inv O_3_16_2 WL_3_2 BL BLB W_3_16_2 W_3_16_2_bar CIM_cell
X319 I16_inv O_3_16_3 WL_3_3 BL BLB W_3_16_3 W_3_16_3_bar CIM_cell
X320 I16_inv O_3_16_4 WL_3_4 BL BLB W_3_16_4 W_3_16_4_bar CIM_cell
X321 I17_inv O_3_17_1 WL_3_1 BL BLB W_3_17_1 W_3_17_1_bar CIM_cell
X322 I17_inv O_3_17_2 WL_3_2 BL BLB W_3_17_2 W_3_17_2_bar CIM_cell
X323 I17_inv O_3_17_3 WL_3_3 BL BLB W_3_17_3 W_3_17_3_bar CIM_cell
X324 I17_inv O_3_17_4 WL_3_4 BL BLB W_3_17_4 W_3_17_4_bar CIM_cell
X325 I18_inv O_3_18_1 WL_3_1 BL BLB W_3_18_1 W_3_18_1_bar CIM_cell
X326 I18_inv O_3_18_2 WL_3_2 BL BLB W_3_18_2 W_3_18_2_bar CIM_cell
X327 I18_inv O_3_18_3 WL_3_3 BL BLB W_3_18_3 W_3_18_3_bar CIM_cell
X328 I18_inv O_3_18_4 WL_3_4 BL BLB W_3_18_4 W_3_18_4_bar CIM_cell
X329 I19_inv O_3_19_1 WL_3_1 BL BLB W_3_19_1 W_3_19_1_bar CIM_cell
X330 I19_inv O_3_19_2 WL_3_2 BL BLB W_3_19_2 W_3_19_2_bar CIM_cell
X331 I19_inv O_3_19_3 WL_3_3 BL BLB W_3_19_3 W_3_19_3_bar CIM_cell
X332 I19_inv O_3_19_4 WL_3_4 BL BLB W_3_19_4 W_3_19_4_bar CIM_cell
X333 I20_inv O_3_20_1 WL_3_1 BL BLB W_3_20_1 W_3_20_1_bar CIM_cell
X334 I20_inv O_3_20_2 WL_3_2 BL BLB W_3_20_2 W_3_20_2_bar CIM_cell
X335 I20_inv O_3_20_3 WL_3_3 BL BLB W_3_20_3 W_3_20_3_bar CIM_cell
X336 I20_inv O_3_20_4 WL_3_4 BL BLB W_3_20_4 W_3_20_4_bar CIM_cell
X337 I21_inv O_3_21_1 WL_3_1 BL BLB W_3_21_1 W_3_21_1_bar CIM_cell
X338 I21_inv O_3_21_2 WL_3_2 BL BLB W_3_21_2 W_3_21_2_bar CIM_cell
X339 I21_inv O_3_21_3 WL_3_3 BL BLB W_3_21_3 W_3_21_3_bar CIM_cell
X340 I21_inv O_3_21_4 WL_3_4 BL BLB W_3_21_4 W_3_21_4_bar CIM_cell
X341 I22_inv O_3_22_1 WL_3_1 BL BLB W_3_22_1 W_3_22_1_bar CIM_cell
X342 I22_inv O_3_22_2 WL_3_2 BL BLB W_3_22_2 W_3_22_2_bar CIM_cell
X343 I22_inv O_3_22_3 WL_3_3 BL BLB W_3_22_3 W_3_22_3_bar CIM_cell
X344 I22_inv O_3_22_4 WL_3_4 BL BLB W_3_22_4 W_3_22_4_bar CIM_cell
X345 I23_inv O_3_23_1 WL_3_1 BL BLB W_3_23_1 W_3_23_1_bar CIM_cell
X346 I23_inv O_3_23_2 WL_3_2 BL BLB W_3_23_2 W_3_23_2_bar CIM_cell
X347 I23_inv O_3_23_3 WL_3_3 BL BLB W_3_23_3 W_3_23_3_bar CIM_cell
X348 I23_inv O_3_23_4 WL_3_4 BL BLB W_3_23_4 W_3_23_4_bar CIM_cell
X349 I24_inv O_3_24_1 WL_3_1 BL BLB W_3_24_1 W_3_24_1_bar CIM_cell
X350 I24_inv O_3_24_2 WL_3_2 BL BLB W_3_24_2 W_3_24_2_bar CIM_cell
X351 I24_inv O_3_24_3 WL_3_3 BL BLB W_3_24_3 W_3_24_3_bar CIM_cell
X352 I24_inv O_3_24_4 WL_3_4 BL BLB W_3_24_4 W_3_24_4_bar CIM_cell
X353 I25_inv O_3_25_1 WL_3_1 BL BLB W_3_25_1 W_3_25_1_bar CIM_cell
X354 I25_inv O_3_25_2 WL_3_2 BL BLB W_3_25_2 W_3_25_2_bar CIM_cell
X355 I25_inv O_3_25_3 WL_3_3 BL BLB W_3_25_3 W_3_25_3_bar CIM_cell
X356 I25_inv O_3_25_4 WL_3_4 BL BLB W_3_25_4 W_3_25_4_bar CIM_cell
X357 I26_inv O_3_26_1 WL_3_1 BL BLB W_3_26_1 W_3_26_1_bar CIM_cell
X358 I26_inv O_3_26_2 WL_3_2 BL BLB W_3_26_2 W_3_26_2_bar CIM_cell
X359 I26_inv O_3_26_3 WL_3_3 BL BLB W_3_26_3 W_3_26_3_bar CIM_cell
X360 I26_inv O_3_26_4 WL_3_4 BL BLB W_3_26_4 W_3_26_4_bar CIM_cell
X361 I27_inv O_3_27_1 WL_3_1 BL BLB W_3_27_1 W_3_27_1_bar CIM_cell
X362 I27_inv O_3_27_2 WL_3_2 BL BLB W_3_27_2 W_3_27_2_bar CIM_cell
X363 I27_inv O_3_27_3 WL_3_3 BL BLB W_3_27_3 W_3_27_3_bar CIM_cell
X364 I27_inv O_3_27_4 WL_3_4 BL BLB W_3_27_4 W_3_27_4_bar CIM_cell
X365 I28_inv O_3_28_1 WL_3_1 BL BLB W_3_28_1 W_3_28_1_bar CIM_cell
X366 I28_inv O_3_28_2 WL_3_2 BL BLB W_3_28_2 W_3_28_2_bar CIM_cell
X367 I28_inv O_3_28_3 WL_3_3 BL BLB W_3_28_3 W_3_28_3_bar CIM_cell
X368 I28_inv O_3_28_4 WL_3_4 BL BLB W_3_28_4 W_3_28_4_bar CIM_cell
X369 I29_inv O_3_29_1 WL_3_1 BL BLB W_3_29_1 W_3_29_1_bar CIM_cell
X370 I29_inv O_3_29_2 WL_3_2 BL BLB W_3_29_2 W_3_29_2_bar CIM_cell
X371 I29_inv O_3_29_3 WL_3_3 BL BLB W_3_29_3 W_3_29_3_bar CIM_cell
X372 I29_inv O_3_29_4 WL_3_4 BL BLB W_3_29_4 W_3_29_4_bar CIM_cell
X373 I30_inv O_3_30_1 WL_3_1 BL BLB W_3_30_1 W_3_30_1_bar CIM_cell
X374 I30_inv O_3_30_2 WL_3_2 BL BLB W_3_30_2 W_3_30_2_bar CIM_cell
X375 I30_inv O_3_30_3 WL_3_3 BL BLB W_3_30_3 W_3_30_3_bar CIM_cell
X376 I30_inv O_3_30_4 WL_3_4 BL BLB W_3_30_4 W_3_30_4_bar CIM_cell
X377 I31_inv O_3_31_1 WL_3_1 BL BLB W_3_31_1 W_3_31_1_bar CIM_cell
X378 I31_inv O_3_31_2 WL_3_2 BL BLB W_3_31_2 W_3_31_2_bar CIM_cell
X379 I31_inv O_3_31_3 WL_3_3 BL BLB W_3_31_3 W_3_31_3_bar CIM_cell
X380 I31_inv O_3_31_4 WL_3_4 BL BLB W_3_31_4 W_3_31_4_bar CIM_cell
X381 I32_inv O_3_32_1 WL_3_1 BL BLB W_3_32_1 W_3_32_1_bar CIM_cell
X382 I32_inv O_3_32_2 WL_3_2 BL BLB W_3_32_2 W_3_32_2_bar CIM_cell
X383 I32_inv O_3_32_3 WL_3_3 BL BLB W_3_32_3 W_3_32_3_bar CIM_cell
X384 I32_inv O_3_32_4 WL_3_4 BL BLB W_3_32_4 W_3_32_4_bar CIM_cell
X385 I1_inv O_4_1_1 WL_4_1 BL BLB W_4_1_1 W_4_1_1_bar CIM_cell
X386 I1_inv O_4_1_2 WL_4_2 BL BLB W_4_1_2 W_4_1_2_bar CIM_cell
X387 I1_inv O_4_1_3 WL_4_3 BL BLB W_4_1_3 W_4_1_3_bar CIM_cell
X388 I1_inv O_4_1_4 WL_4_4 BL BLB W_4_1_4 W_4_1_4_bar CIM_cell
X389 I2_inv O_4_2_1 WL_4_1 BL BLB W_4_2_1 W_4_2_1_bar CIM_cell
X390 I2_inv O_4_2_2 WL_4_2 BL BLB W_4_2_2 W_4_2_2_bar CIM_cell
X391 I2_inv O_4_2_3 WL_4_3 BL BLB W_4_2_3 W_4_2_3_bar CIM_cell
X392 I2_inv O_4_2_4 WL_4_4 BL BLB W_4_2_4 W_4_2_4_bar CIM_cell
X393 I3_inv O_4_3_1 WL_4_1 BL BLB W_4_3_1 W_4_3_1_bar CIM_cell
X394 I3_inv O_4_3_2 WL_4_2 BL BLB W_4_3_2 W_4_3_2_bar CIM_cell
X395 I3_inv O_4_3_3 WL_4_3 BL BLB W_4_3_3 W_4_3_3_bar CIM_cell
X396 I3_inv O_4_3_4 WL_4_4 BL BLB W_4_3_4 W_4_3_4_bar CIM_cell
X397 I4_inv O_4_4_1 WL_4_1 BL BLB W_4_4_1 W_4_4_1_bar CIM_cell
X398 I4_inv O_4_4_2 WL_4_2 BL BLB W_4_4_2 W_4_4_2_bar CIM_cell
X399 I4_inv O_4_4_3 WL_4_3 BL BLB W_4_4_3 W_4_4_3_bar CIM_cell
X400 I4_inv O_4_4_4 WL_4_4 BL BLB W_4_4_4 W_4_4_4_bar CIM_cell
X401 I5_inv O_4_5_1 WL_4_1 BL BLB W_4_5_1 W_4_5_1_bar CIM_cell
X402 I5_inv O_4_5_2 WL_4_2 BL BLB W_4_5_2 W_4_5_2_bar CIM_cell
X403 I5_inv O_4_5_3 WL_4_3 BL BLB W_4_5_3 W_4_5_3_bar CIM_cell
X404 I5_inv O_4_5_4 WL_4_4 BL BLB W_4_5_4 W_4_5_4_bar CIM_cell
X405 I6_inv O_4_6_1 WL_4_1 BL BLB W_4_6_1 W_4_6_1_bar CIM_cell
X406 I6_inv O_4_6_2 WL_4_2 BL BLB W_4_6_2 W_4_6_2_bar CIM_cell
X407 I6_inv O_4_6_3 WL_4_3 BL BLB W_4_6_3 W_4_6_3_bar CIM_cell
X408 I6_inv O_4_6_4 WL_4_4 BL BLB W_4_6_4 W_4_6_4_bar CIM_cell
X409 I7_inv O_4_7_1 WL_4_1 BL BLB W_4_7_1 W_4_7_1_bar CIM_cell
X410 I7_inv O_4_7_2 WL_4_2 BL BLB W_4_7_2 W_4_7_2_bar CIM_cell
X411 I7_inv O_4_7_3 WL_4_3 BL BLB W_4_7_3 W_4_7_3_bar CIM_cell
X412 I7_inv O_4_7_4 WL_4_4 BL BLB W_4_7_4 W_4_7_4_bar CIM_cell
X413 I8_inv O_4_8_1 WL_4_1 BL BLB W_4_8_1 W_4_8_1_bar CIM_cell
X414 I8_inv O_4_8_2 WL_4_2 BL BLB W_4_8_2 W_4_8_2_bar CIM_cell
X415 I8_inv O_4_8_3 WL_4_3 BL BLB W_4_8_3 W_4_8_3_bar CIM_cell
X416 I8_inv O_4_8_4 WL_4_4 BL BLB W_4_8_4 W_4_8_4_bar CIM_cell
X417 I9_inv O_4_9_1 WL_4_1 BL BLB W_4_9_1 W_4_9_1_bar CIM_cell
X418 I9_inv O_4_9_2 WL_4_2 BL BLB W_4_9_2 W_4_9_2_bar CIM_cell
X419 I9_inv O_4_9_3 WL_4_3 BL BLB W_4_9_3 W_4_9_3_bar CIM_cell
X420 I9_inv O_4_9_4 WL_4_4 BL BLB W_4_9_4 W_4_9_4_bar CIM_cell
X421 I10_inv O_4_10_1 WL_4_1 BL BLB W_4_10_1 W_4_10_1_bar CIM_cell
X422 I10_inv O_4_10_2 WL_4_2 BL BLB W_4_10_2 W_4_10_2_bar CIM_cell
X423 I10_inv O_4_10_3 WL_4_3 BL BLB W_4_10_3 W_4_10_3_bar CIM_cell
X424 I10_inv O_4_10_4 WL_4_4 BL BLB W_4_10_4 W_4_10_4_bar CIM_cell
X425 I11_inv O_4_11_1 WL_4_1 BL BLB W_4_11_1 W_4_11_1_bar CIM_cell
X426 I11_inv O_4_11_2 WL_4_2 BL BLB W_4_11_2 W_4_11_2_bar CIM_cell
X427 I11_inv O_4_11_3 WL_4_3 BL BLB W_4_11_3 W_4_11_3_bar CIM_cell
X428 I11_inv O_4_11_4 WL_4_4 BL BLB W_4_11_4 W_4_11_4_bar CIM_cell
X429 I12_inv O_4_12_1 WL_4_1 BL BLB W_4_12_1 W_4_12_1_bar CIM_cell
X430 I12_inv O_4_12_2 WL_4_2 BL BLB W_4_12_2 W_4_12_2_bar CIM_cell
X431 I12_inv O_4_12_3 WL_4_3 BL BLB W_4_12_3 W_4_12_3_bar CIM_cell
X432 I12_inv O_4_12_4 WL_4_4 BL BLB W_4_12_4 W_4_12_4_bar CIM_cell
X433 I13_inv O_4_13_1 WL_4_1 BL BLB W_4_13_1 W_4_13_1_bar CIM_cell
X434 I13_inv O_4_13_2 WL_4_2 BL BLB W_4_13_2 W_4_13_2_bar CIM_cell
X435 I13_inv O_4_13_3 WL_4_3 BL BLB W_4_13_3 W_4_13_3_bar CIM_cell
X436 I13_inv O_4_13_4 WL_4_4 BL BLB W_4_13_4 W_4_13_4_bar CIM_cell
X437 I14_inv O_4_14_1 WL_4_1 BL BLB W_4_14_1 W_4_14_1_bar CIM_cell
X438 I14_inv O_4_14_2 WL_4_2 BL BLB W_4_14_2 W_4_14_2_bar CIM_cell
X439 I14_inv O_4_14_3 WL_4_3 BL BLB W_4_14_3 W_4_14_3_bar CIM_cell
X440 I14_inv O_4_14_4 WL_4_4 BL BLB W_4_14_4 W_4_14_4_bar CIM_cell
X441 I15_inv O_4_15_1 WL_4_1 BL BLB W_4_15_1 W_4_15_1_bar CIM_cell
X442 I15_inv O_4_15_2 WL_4_2 BL BLB W_4_15_2 W_4_15_2_bar CIM_cell
X443 I15_inv O_4_15_3 WL_4_3 BL BLB W_4_15_3 W_4_15_3_bar CIM_cell
X444 I15_inv O_4_15_4 WL_4_4 BL BLB W_4_15_4 W_4_15_4_bar CIM_cell
X445 I16_inv O_4_16_1 WL_4_1 BL BLB W_4_16_1 W_4_16_1_bar CIM_cell
X446 I16_inv O_4_16_2 WL_4_2 BL BLB W_4_16_2 W_4_16_2_bar CIM_cell
X447 I16_inv O_4_16_3 WL_4_3 BL BLB W_4_16_3 W_4_16_3_bar CIM_cell
X448 I16_inv O_4_16_4 WL_4_4 BL BLB W_4_16_4 W_4_16_4_bar CIM_cell
X449 I17_inv O_4_17_1 WL_4_1 BL BLB W_4_17_1 W_4_17_1_bar CIM_cell
X450 I17_inv O_4_17_2 WL_4_2 BL BLB W_4_17_2 W_4_17_2_bar CIM_cell
X451 I17_inv O_4_17_3 WL_4_3 BL BLB W_4_17_3 W_4_17_3_bar CIM_cell
X452 I17_inv O_4_17_4 WL_4_4 BL BLB W_4_17_4 W_4_17_4_bar CIM_cell
X453 I18_inv O_4_18_1 WL_4_1 BL BLB W_4_18_1 W_4_18_1_bar CIM_cell
X454 I18_inv O_4_18_2 WL_4_2 BL BLB W_4_18_2 W_4_18_2_bar CIM_cell
X455 I18_inv O_4_18_3 WL_4_3 BL BLB W_4_18_3 W_4_18_3_bar CIM_cell
X456 I18_inv O_4_18_4 WL_4_4 BL BLB W_4_18_4 W_4_18_4_bar CIM_cell
X457 I19_inv O_4_19_1 WL_4_1 BL BLB W_4_19_1 W_4_19_1_bar CIM_cell
X458 I19_inv O_4_19_2 WL_4_2 BL BLB W_4_19_2 W_4_19_2_bar CIM_cell
X459 I19_inv O_4_19_3 WL_4_3 BL BLB W_4_19_3 W_4_19_3_bar CIM_cell
X460 I19_inv O_4_19_4 WL_4_4 BL BLB W_4_19_4 W_4_19_4_bar CIM_cell
X461 I20_inv O_4_20_1 WL_4_1 BL BLB W_4_20_1 W_4_20_1_bar CIM_cell
X462 I20_inv O_4_20_2 WL_4_2 BL BLB W_4_20_2 W_4_20_2_bar CIM_cell
X463 I20_inv O_4_20_3 WL_4_3 BL BLB W_4_20_3 W_4_20_3_bar CIM_cell
X464 I20_inv O_4_20_4 WL_4_4 BL BLB W_4_20_4 W_4_20_4_bar CIM_cell
X465 I21_inv O_4_21_1 WL_4_1 BL BLB W_4_21_1 W_4_21_1_bar CIM_cell
X466 I21_inv O_4_21_2 WL_4_2 BL BLB W_4_21_2 W_4_21_2_bar CIM_cell
X467 I21_inv O_4_21_3 WL_4_3 BL BLB W_4_21_3 W_4_21_3_bar CIM_cell
X468 I21_inv O_4_21_4 WL_4_4 BL BLB W_4_21_4 W_4_21_4_bar CIM_cell
X469 I22_inv O_4_22_1 WL_4_1 BL BLB W_4_22_1 W_4_22_1_bar CIM_cell
X470 I22_inv O_4_22_2 WL_4_2 BL BLB W_4_22_2 W_4_22_2_bar CIM_cell
X471 I22_inv O_4_22_3 WL_4_3 BL BLB W_4_22_3 W_4_22_3_bar CIM_cell
X472 I22_inv O_4_22_4 WL_4_4 BL BLB W_4_22_4 W_4_22_4_bar CIM_cell
X473 I23_inv O_4_23_1 WL_4_1 BL BLB W_4_23_1 W_4_23_1_bar CIM_cell
X474 I23_inv O_4_23_2 WL_4_2 BL BLB W_4_23_2 W_4_23_2_bar CIM_cell
X475 I23_inv O_4_23_3 WL_4_3 BL BLB W_4_23_3 W_4_23_3_bar CIM_cell
X476 I23_inv O_4_23_4 WL_4_4 BL BLB W_4_23_4 W_4_23_4_bar CIM_cell
X477 I24_inv O_4_24_1 WL_4_1 BL BLB W_4_24_1 W_4_24_1_bar CIM_cell
X478 I24_inv O_4_24_2 WL_4_2 BL BLB W_4_24_2 W_4_24_2_bar CIM_cell
X479 I24_inv O_4_24_3 WL_4_3 BL BLB W_4_24_3 W_4_24_3_bar CIM_cell
X480 I24_inv O_4_24_4 WL_4_4 BL BLB W_4_24_4 W_4_24_4_bar CIM_cell
X481 I25_inv O_4_25_1 WL_4_1 BL BLB W_4_25_1 W_4_25_1_bar CIM_cell
X482 I25_inv O_4_25_2 WL_4_2 BL BLB W_4_25_2 W_4_25_2_bar CIM_cell
X483 I25_inv O_4_25_3 WL_4_3 BL BLB W_4_25_3 W_4_25_3_bar CIM_cell
X484 I25_inv O_4_25_4 WL_4_4 BL BLB W_4_25_4 W_4_25_4_bar CIM_cell
X485 I26_inv O_4_26_1 WL_4_1 BL BLB W_4_26_1 W_4_26_1_bar CIM_cell
X486 I26_inv O_4_26_2 WL_4_2 BL BLB W_4_26_2 W_4_26_2_bar CIM_cell
X487 I26_inv O_4_26_3 WL_4_3 BL BLB W_4_26_3 W_4_26_3_bar CIM_cell
X488 I26_inv O_4_26_4 WL_4_4 BL BLB W_4_26_4 W_4_26_4_bar CIM_cell
X489 I27_inv O_4_27_1 WL_4_1 BL BLB W_4_27_1 W_4_27_1_bar CIM_cell
X490 I27_inv O_4_27_2 WL_4_2 BL BLB W_4_27_2 W_4_27_2_bar CIM_cell
X491 I27_inv O_4_27_3 WL_4_3 BL BLB W_4_27_3 W_4_27_3_bar CIM_cell
X492 I27_inv O_4_27_4 WL_4_4 BL BLB W_4_27_4 W_4_27_4_bar CIM_cell
X493 I28_inv O_4_28_1 WL_4_1 BL BLB W_4_28_1 W_4_28_1_bar CIM_cell
X494 I28_inv O_4_28_2 WL_4_2 BL BLB W_4_28_2 W_4_28_2_bar CIM_cell
X495 I28_inv O_4_28_3 WL_4_3 BL BLB W_4_28_3 W_4_28_3_bar CIM_cell
X496 I28_inv O_4_28_4 WL_4_4 BL BLB W_4_28_4 W_4_28_4_bar CIM_cell
X497 I29_inv O_4_29_1 WL_4_1 BL BLB W_4_29_1 W_4_29_1_bar CIM_cell
X498 I29_inv O_4_29_2 WL_4_2 BL BLB W_4_29_2 W_4_29_2_bar CIM_cell
X499 I29_inv O_4_29_3 WL_4_3 BL BLB W_4_29_3 W_4_29_3_bar CIM_cell
X500 I29_inv O_4_29_4 WL_4_4 BL BLB W_4_29_4 W_4_29_4_bar CIM_cell
X501 I30_inv O_4_30_1 WL_4_1 BL BLB W_4_30_1 W_4_30_1_bar CIM_cell
X502 I30_inv O_4_30_2 WL_4_2 BL BLB W_4_30_2 W_4_30_2_bar CIM_cell
X503 I30_inv O_4_30_3 WL_4_3 BL BLB W_4_30_3 W_4_30_3_bar CIM_cell
X504 I30_inv O_4_30_4 WL_4_4 BL BLB W_4_30_4 W_4_30_4_bar CIM_cell
X505 I31_inv O_4_31_1 WL_4_1 BL BLB W_4_31_1 W_4_31_1_bar CIM_cell
X506 I31_inv O_4_31_2 WL_4_2 BL BLB W_4_31_2 W_4_31_2_bar CIM_cell
X507 I31_inv O_4_31_3 WL_4_3 BL BLB W_4_31_3 W_4_31_3_bar CIM_cell
X508 I31_inv O_4_31_4 WL_4_4 BL BLB W_4_31_4 W_4_31_4_bar CIM_cell
X509 I32_inv O_4_32_1 WL_4_1 BL BLB W_4_32_1 W_4_32_1_bar CIM_cell
X510 I32_inv O_4_32_2 WL_4_2 BL BLB W_4_32_2 W_4_32_2_bar CIM_cell
X511 I32_inv O_4_32_3 WL_4_3 BL BLB W_4_32_3 W_4_32_3_bar CIM_cell
X512 I32_inv O_4_32_4 WL_4_4 BL BLB W_4_32_4 W_4_32_4_bar CIM_cell

X513 GND VDD O_1_1_4 O_1_1_3 O_1_1_2 O_1_1_1 O_1_2_4 O_1_2_3 O_1_2_2 O_1_2_1 O_1_3_4 O_1_3_3 O_1_3_2 O_1_3_1 O_1_4_4 O_1_4_3 O_1_4_2 O_1_4_1 
+ O_1_5_4 O_1_5_3 O_1_5_2 O_1_5_1 O_1_6_4 O_1_6_3 O_1_6_2 O_1_6_1 O_1_7_4 O_1_7_3 O_1_7_2 O_1_7_1 O_1_8_4 O_1_8_3 O_1_8_2 O_1_8_1
+ O_1_9_4 O_1_9_3 O_1_9_2 O_1_9_1 O_1_10_4 O_1_10_3 O_1_10_2 O_1_10_1 O_1_11_4 O_1_11_3 O_1_11_2 O_1_11_1 O_1_12_4 O_1_12_3 O_1_12_2 O_1_12_1 
+ O_1_13_4 O_1_13_3 O_1_13_2 O_1_13_1 O_1_14_4 O_1_14_3 O_1_14_2 O_1_14_1 O_1_15_4 O_1_15_3 O_1_15_2 O_1_15_1 O_1_16_4 O_1_16_3 O_1_16_2 O_1_16_1 
+ O_1_17_4 O_1_17_3 O_1_17_2 O_1_17_1 O_1_18_4 O_1_18_3 O_1_18_2 O_1_18_1 O_1_19_4 O_1_19_3 O_1_19_2 O_1_19_1 O_1_20_4 O_1_20_3 O_1_20_2 O_1_20_1 
+ O_1_21_4 O_1_21_3 O_1_21_2 O_1_21_1 O_1_22_4 O_1_22_3 O_1_22_2 O_1_22_1 O_1_23_4 O_1_23_3 O_1_23_2 O_1_23_1 O_1_24_4 O_1_24_3 O_1_24_2 O_1_24_1 
+ O_1_25_4 O_1_25_3 O_1_25_2 O_1_25_1 O_1_26_4 O_1_26_3 O_1_26_2 O_1_26_1 O_1_27_4 O_1_27_3 O_1_27_2 O_1_27_1 O_1_28_4 O_1_28_3 O_1_28_2 O_1_28_1 
+ O_1_29_4 O_1_29_3 O_1_29_2 O_1_29_1 O_1_30_4 O_1_30_3 O_1_30_2 O_1_30_1 O_1_31_4 O_1_31_3 O_1_31_2 O_1_31_1 O_1_32_4 O_1_32_3 O_1_32_2 O_1_32_1 
​+ partial_sum_12_1 partial_sum_11_1 partial_sum_10_1 partial_sum_9_1 partial_sum_8_1 partial_sum_7_1 partial_sum_6_1 partial_sum_5_1 partial_sum_4_1 partial_sum_3_1 partial_sum_2_1 partial_sum_1_1 partial_sum_0_1 Adder_tree

X514 GND VDD O_2_1_4 O_2_1_3 O_2_1_2 O_2_1_1 O_2_2_4 O_2_2_3 O_2_2_2 O_2_2_1 O_2_3_4 O_2_3_3 O_2_3_2 O_2_3_1 O_2_4_4 O_2_4_3 O_2_4_2 O_2_4_1 
+ O_2_5_4 O_2_5_3 O_2_5_2 O_2_5_1 O_2_6_4 O_2_6_3 O_2_6_2 O_2_6_1 O_2_7_4 O_2_7_3 O_2_7_2 O_2_7_1 O_2_8_4 O_2_8_3 O_2_8_2 O_2_8_1 
+ O_2_9_4 O_2_9_3 O_2_9_2 O_2_9_1 O_2_10_4 O_2_10_3 O_2_10_2 O_2_10_1 O_2_11_4 O_2_11_3 O_2_11_2 O_2_11_1 O_2_12_4 O_2_12_3 O_2_12_2 O_2_12_1 
+ O_2_13_4 O_2_13_3 O_2_13_2 O_2_13_1 O_2_14_4 O_2_14_3 O_2_14_2 O_2_14_1 O_2_15_4 O_2_15_3 O_2_15_2 O_2_15_1 O_2_16_4 O_2_16_3 O_2_16_2 O_2_16_1 
+ O_2_17_4 O_2_17_3 O_2_17_2 O_2_17_1 O_2_18_4 O_2_18_3 O_2_18_2 O_2_18_1 O_2_19_4 O_2_19_3 O_2_19_2 O_2_19_1 O_2_20_4 O_2_20_3 O_2_20_2 O_2_20_1
+ O_2_21_4 O_2_21_3 O_2_21_2 O_2_21_1 O_2_22_4 O_2_22_3 O_2_22_2 O_2_22_1 O_2_23_4 O_2_23_3 O_2_23_2 O_2_23_1 O_2_24_4 O_2_24_3 O_2_24_2 O_2_24_1 
+ O_2_25_4 O_2_25_3 O_2_25_2 O_2_25_1 O_2_26_4 O_2_26_3 O_2_26_2 O_2_26_1 O_2_27_4 O_2_27_3 O_2_27_2 O_2_27_1 O_2_28_4 O_2_28_3 O_2_28_2 O_2_28_1 
+ O_2_29_4 O_2_29_3 O_2_29_2 O_2_29_1 O_2_30_4 O_2_30_3 O_2_30_2 O_2_30_1 O_2_31_4 O_2_31_3 O_2_31_2 O_2_31_1 O_2_32_4 O_2_32_3 O_2_32_2 O_2_32_1 
+ partial_sum_12_2 partial_sum_11_2 partial_sum_10_2 partial_sum_9_2 partial_sum_8_2 partial_sum_7_2 partial_sum_6_2 partial_sum_5_2 partial_sum_4_2 partial_sum_3_2 partial_sum_2_2 partial_sum_1_2 partial_sum_0_2 Adder_tree

X515 GND VDD O_3_1_4 O_3_1_3 O_3_1_2 O_3_1_1 O_3_2_4 O_3_2_3 O_3_2_2 O_3_2_1 O_3_3_4 O_3_3_3 O_3_3_2 O_3_3_1 O_3_4_4 O_3_4_3 O_3_4_2 O_3_4_1 
+ O_3_5_4 O_3_5_3 O_3_5_2 O_3_5_1 O_3_6_4 O_3_6_3 O_3_6_2 O_3_6_1 O_3_7_4 O_3_7_3 O_3_7_2 O_3_7_1 O_3_8_4 O_3_8_3 O_3_8_2 O_3_8_1 
+ O_3_9_4 O_3_9_3 O_3_9_2 O_3_9_1 O_3_10_4 O_3_10_3 O_3_10_2 O_3_10_1 O_3_11_4 O_3_11_3 O_3_11_2 O_3_11_1 O_3_12_4 O_3_12_3 O_3_12_2 O_3_12_1 
+ O_3_13_4 O_3_13_3 O_3_13_2 O_3_13_1 O_3_14_4 O_3_14_3 O_3_14_2 O_3_14_1 O_3_15_4 O_3_15_3 O_3_15_2 O_3_15_1 O_3_16_4 O_3_16_3 O_3_16_2 O_3_16_1 
+ O_3_17_4 O_3_17_3 O_3_17_2 O_3_17_1 O_3_18_4 O_3_18_3 O_3_18_2 O_3_18_1 O_3_19_4 O_3_19_3 O_3_19_2 O_3_19_1 O_3_20_4 O_3_20_3 O_3_20_2 O_3_20_1 
+ O_3_21_4 O_3_21_3 O_3_21_2 O_3_21_1 O_3_22_4 O_3_22_3 O_3_22_2 O_3_22_1 O_3_23_4 O_3_23_3 O_3_23_2 O_3_23_1 O_3_24_4 O_3_24_3 O_3_24_2 O_3_24_1 
+ O_3_25_4 O_3_25_3 O_3_25_2 O_3_25_1 O_3_26_4 O_3_26_3 O_3_26_2 O_3_26_1 O_3_27_4 O_3_27_3 O_3_27_2 O_3_27_1 O_3_28_4 O_3_28_3 O_3_28_2 O_3_28_1 
+ O_3_29_4 O_3_29_3 O_3_29_2 O_3_29_1 O_3_30_4 O_3_30_3 O_3_30_2 O_3_30_1 O_3_31_4 O_3_31_3 O_3_31_2 O_3_31_1 O_3_32_4 O_3_32_3 O_3_32_2 O_3_32_1 
+ partial_sum_12_3 partial_sum_11_3 partial_sum_10_3 partial_sum_9_3 partial_sum_8_3 partial_sum_7_3 partial_sum_6_3 partial_sum_5_3 partial_sum_4_3 partial_sum_3_3 partial_sum_2_3 partial_sum_1_3 partial_sum_0_3 Adder_tree

X516 GND VDD O_4_1_4 O_4_1_3 O_4_1_2 O_4_1_1 O_4_2_4 O_4_2_3 O_4_2_2 O_4_2_1 O_4_3_4 O_4_3_3 O_4_3_2 O_4_3_1 O_4_4_4 O_4_4_3 O_4_4_2 O_4_4_1 
+ O_4_5_4 O_4_5_3 O_4_5_2 O_4_5_1 O_4_6_4 O_4_6_3 O_4_6_2 O_4_6_1 O_4_7_4 O_4_7_3 O_4_7_2 O_4_7_1 O_4_8_4 O_4_8_3 O_4_8_2 O_4_8_1 
+ O_4_9_4 O_4_9_3 O_4_9_2 O_4_9_1 O_4_10_4 O_4_10_3 O_4_10_2 O_4_10_1 O_4_11_4 O_4_11_3 O_4_11_2 O_4_11_1 O_4_12_4 O_4_12_3 O_4_12_2 O_4_12_1 
+ O_4_13_4 O_4_13_3 O_4_13_2 O_4_13_1 O_4_14_4 O_4_14_3 O_4_14_2 O_4_14_1 O_4_15_4 O_4_15_3 O_4_15_2 O_4_15_1 O_4_16_4 O_4_16_3 O_4_16_2 O_4_16_1 
+ O_4_17_4 O_4_17_3 O_4_17_2 O_4_17_1 O_4_18_4 O_4_18_3 O_4_18_2 O_4_18_1 O_4_19_4 O_4_19_3 O_4_19_2 O_4_19_1 O_4_20_4 O_4_20_3 O_4_20_2 O_4_20_1 
+ O_4_21_4 O_4_21_3 O_4_21_2 O_4_21_1 O_4_22_4 O_4_22_3 O_4_22_2 O_4_22_1 O_4_23_4 O_4_23_3 O_4_23_2 O_4_23_1 O_4_24_4 O_4_24_3 O_4_24_2 O_4_24_1 
+ O_4_25_4 O_4_25_3 O_4_25_2 O_4_25_1 O_4_26_4 O_4_26_3 O_4_26_2 O_4_26_1 O_4_27_4 O_4_27_3 O_4_27_2 O_4_27_1 O_4_28_4 O_4_28_3 O_4_28_2 O_4_28_1 
+ O_4_29_4 O_4_29_3 O_4_29_2 O_4_29_1 O_4_30_4 O_4_30_3 O_4_30_2 O_4_30_1 O_4_31_4 O_4_31_3 O_4_31_2 O_4_31_1 O_4_32_4 O_4_32_3 O_4_32_2 O_4_32_1 
+ partial_sum_12_4 partial_sum_11_4 partial_sum_10_4 partial_sum_9_4 partial_sum_8_4 partial_sum_7_4 partial_sum_6_4 partial_sum_5_4 partial_sum_4_4 partial_sum_3_4 partial_sum_2_4 partial_sum_1_4 partial_sum_0_4 Adder_tree


X517 GND VDD clk rst_n in_valid partial_sum_12_1 partial_sum_11_1 partial_sum_10_1 partial_sum_9_1 partial_sum_8_1 partial_sum_7_1 partial_sum_6_1 partial_sum_5_1 partial_sum_4_1 partial_sum_3_1 partial_sum_2_1 partial_sum_1_1 partial_sum_0_1 Out_1[12]  Out_1[11]  Out_1[10]  Out_1[9]  Out_1[8]  Out_1[7]  Out_1[6]  Out_1[5]  Out_1[4]  Out_1[3]  Out_1[2]  Out_1[1]  Out_1[0]  Accumulator          
X518 GND VDD clk rst_n in_valid partial_sum_12_2 partial_sum_11_2 partial_sum_10_2 partial_sum_9_2 partial_sum_8_2 partial_sum_7_2 partial_sum_6_2 partial_sum_5_2 partial_sum_4_2 partial_sum_3_2 partial_sum_2_2 partial_sum_1_2 partial_sum_0_2 Out_2[12]  Out_2[11]  Out_2[10]  Out_2[9]  Out_2[8]  Out_2[7]  Out_2[6]  Out_2[5]  Out_2[4]  Out_2[3]  Out_2[2]  Out_2[1]  Out_2[0]  Accumulator 
X519 GND VDD clk rst_n in_valid partial_sum_12_3 partial_sum_11_3 partial_sum_10_3 partial_sum_9_3 partial_sum_8_3 partial_sum_7_3 partial_sum_6_3 partial_sum_5_3 partial_sum_4_3 partial_sum_3_3 partial_sum_2_3 partial_sum_1_3 partial_sum_0_3 Out_3[12]  Out_3[11]  Out_3[10]  Out_3[9]  Out_3[8]  Out_3[7]  Out_3[6]  Out_3[5]  Out_3[4]  Out_3[3]  Out_3[2]  Out_3[1]  Out_3[0]  Accumulator 
X520 GND VDD clk rst_n in_valid partial_sum_12_4 partial_sum_11_4 partial_sum_10_4 partial_sum_9_4 partial_sum_8_4 partial_sum_7_4 partial_sum_6_4 partial_sum_5_4 partial_sum_4_4 partial_sum_3_4 partial_sum_2_4 partial_sum_1_4 partial_sum_0_4 Out_4[12]  Out_4[11]  Out_4[10]  Out_4[9]  Out_4[8]  Out_4[7]  Out_4[6]  Out_4[5]  Out_4[4]  Out_4[3]  Out_4[2]  Out_4[1]  Out_4[0]  Accumulator 




***-----------------------***
***      sub-circuit      ***
***-----------------------***

* // QB : weight 
* // input 
* // output 
* .subckt CIM_cell Input Output WL BL BLB q qb
*     X01 WL BL BLB q qb SRAM_6T
*     X02 qb Input Output NOR_2
* .ends

.subckt CIM_cell Input Output WL BL BLB q qb
    X01 WL BL BLB q qb SRAM_6T
    X02 qb Input Y NOR_2
    X03 Y Output Buffer
.ends


.subckt SRAM_6T WL BL BLB q qb
    MP1 q   qb  VDD VDD pmos_sram m=1
    MP2 qb  q   VDD VDD pmos_sram m=1
    MN1 q   qb  GND GND nmos_sram m=1
    MN2 qb  q   GND GND nmos_sram m=1
    MN3 BL  WL  q   GND nmos_sram m=1
    MN4 qb  WL  BLB GND nmos_sram m=1
.ends

.subckt NOR_2 A B Y
    MP1 N1  A   VDD VDD pmos_lvt m=1
    MP2 Y   B   N1  VDD pmos_lvt m=1
    MN1 Y   A   GND GND nmos_lvt m=1
    MN2 Y   B   GND GND nmos_lvt m=1
.ends

.subckt Buffer in out
    X_INV1 in   in_b INV
    X_INV2 in_b out  INV
.ends

.subckt INV in out
    Mp  out  in  VDD  VDD  pmos_lvt  m=1
    Mn  out  in  GND  GND  nmos_lvt  m=1
.ends

* Example .IC file for initializing SRAM weights
.IC V(W_1_1_1) = 1 V(W_1_1_1_bar) = 0
.IC V(W_1_1_2) = 1 V(W_1_1_2_bar) = 0
.IC V(W_1_1_3) = 1 V(W_1_1_3_bar) = 0
.IC V(W_1_1_4) = 1 V(W_1_1_4_bar) = 0
.IC V(W_1_2_1) = 1 V(W_1_2_1_bar) = 0
.IC V(W_1_2_2) = 1 V(W_1_2_2_bar) = 0
.IC V(W_1_2_3) = 1 V(W_1_2_3_bar) = 0
.IC V(W_1_2_4) = 1 V(W_1_2_4_bar) = 0
.IC V(W_1_3_1) = 0 V(W_1_3_1_bar) = 1
.IC V(W_1_3_2) = 0 V(W_1_3_2_bar) = 1
.IC V(W_1_3_3) = 0 V(W_1_3_3_bar) = 1
.IC V(W_1_3_4) = 0 V(W_1_3_4_bar) = 1
.IC V(W_1_4_1) = 0 V(W_1_4_1_bar) = 1
.IC V(W_1_4_2) = 1 V(W_1_4_2_bar) = 0
.IC V(W_1_4_3) = 0 V(W_1_4_3_bar) = 1
.IC V(W_1_4_4) = 1 V(W_1_4_4_bar) = 0
.IC V(W_1_5_1) = 0 V(W_1_5_1_bar) = 1
.IC V(W_1_5_2) = 0 V(W_1_5_2_bar) = 1
.IC V(W_1_5_3) = 1 V(W_1_5_3_bar) = 0
.IC V(W_1_5_4) = 0 V(W_1_5_4_bar) = 1
.IC V(W_1_6_1) = 0 V(W_1_6_1_bar) = 1
.IC V(W_1_6_2) = 0 V(W_1_6_2_bar) = 1
.IC V(W_1_6_3) = 1 V(W_1_6_3_bar) = 0
.IC V(W_1_6_4) = 0 V(W_1_6_4_bar) = 1
.IC V(W_1_7_1) = 0 V(W_1_7_1_bar) = 1
.IC V(W_1_7_2) = 1 V(W_1_7_2_bar) = 0
.IC V(W_1_7_3) = 1 V(W_1_7_3_bar) = 0
.IC V(W_1_7_4) = 1 V(W_1_7_4_bar) = 0
.IC V(W_1_8_1) = 1 V(W_1_8_1_bar) = 0
.IC V(W_1_8_2) = 1 V(W_1_8_2_bar) = 0
.IC V(W_1_8_3) = 0 V(W_1_8_3_bar) = 1
.IC V(W_1_8_4) = 0 V(W_1_8_4_bar) = 1
.IC V(W_1_9_1) = 1 V(W_1_9_1_bar) = 0
.IC V(W_1_9_2) = 1 V(W_1_9_2_bar) = 0
.IC V(W_1_9_3) = 0 V(W_1_9_3_bar) = 1
.IC V(W_1_9_4) = 1 V(W_1_9_4_bar) = 0
.IC V(W_1_10_1) = 1 V(W_1_10_1_bar) = 0
.IC V(W_1_10_2) = 0 V(W_1_10_2_bar) = 1
.IC V(W_1_10_3) = 0 V(W_1_10_3_bar) = 1
.IC V(W_1_10_4) = 1 V(W_1_10_4_bar) = 0
.IC V(W_1_11_1) = 1 V(W_1_11_1_bar) = 0
.IC V(W_1_11_2) = 1 V(W_1_11_2_bar) = 0
.IC V(W_1_11_3) = 0 V(W_1_11_3_bar) = 1
.IC V(W_1_11_4) = 1 V(W_1_11_4_bar) = 0
.IC V(W_1_12_1) = 1 V(W_1_12_1_bar) = 0
.IC V(W_1_12_2) = 1 V(W_1_12_2_bar) = 0
.IC V(W_1_12_3) = 1 V(W_1_12_3_bar) = 0
.IC V(W_1_12_4) = 1 V(W_1_12_4_bar) = 0
.IC V(W_1_13_1) = 1 V(W_1_13_1_bar) = 0
.IC V(W_1_13_2) = 0 V(W_1_13_2_bar) = 1
.IC V(W_1_13_3) = 0 V(W_1_13_3_bar) = 1
.IC V(W_1_13_4) = 0 V(W_1_13_4_bar) = 1
.IC V(W_1_14_1) = 1 V(W_1_14_1_bar) = 0
.IC V(W_1_14_2) = 0 V(W_1_14_2_bar) = 1
.IC V(W_1_14_3) = 0 V(W_1_14_3_bar) = 1
.IC V(W_1_14_4) = 1 V(W_1_14_4_bar) = 0
.IC V(W_1_15_1) = 0 V(W_1_15_1_bar) = 1
.IC V(W_1_15_2) = 0 V(W_1_15_2_bar) = 1
.IC V(W_1_15_3) = 0 V(W_1_15_3_bar) = 1
.IC V(W_1_15_4) = 0 V(W_1_15_4_bar) = 1
.IC V(W_1_16_1) = 1 V(W_1_16_1_bar) = 0
.IC V(W_1_16_2) = 0 V(W_1_16_2_bar) = 1
.IC V(W_1_16_3) = 0 V(W_1_16_3_bar) = 1
.IC V(W_1_16_4) = 0 V(W_1_16_4_bar) = 1
.IC V(W_1_17_1) = 1 V(W_1_17_1_bar) = 0
.IC V(W_1_17_2) = 0 V(W_1_17_2_bar) = 1
.IC V(W_1_17_3) = 0 V(W_1_17_3_bar) = 1
.IC V(W_1_17_4) = 1 V(W_1_17_4_bar) = 0
.IC V(W_1_18_1) = 1 V(W_1_18_1_bar) = 0
.IC V(W_1_18_2) = 1 V(W_1_18_2_bar) = 0
.IC V(W_1_18_3) = 1 V(W_1_18_3_bar) = 0
.IC V(W_1_18_4) = 0 V(W_1_18_4_bar) = 1
.IC V(W_1_19_1) = 1 V(W_1_19_1_bar) = 0
.IC V(W_1_19_2) = 1 V(W_1_19_2_bar) = 0
.IC V(W_1_19_3) = 1 V(W_1_19_3_bar) = 0
.IC V(W_1_19_4) = 1 V(W_1_19_4_bar) = 0
.IC V(W_1_20_1) = 0 V(W_1_20_1_bar) = 1
.IC V(W_1_20_2) = 0 V(W_1_20_2_bar) = 1
.IC V(W_1_20_3) = 1 V(W_1_20_3_bar) = 0
.IC V(W_1_20_4) = 0 V(W_1_20_4_bar) = 1
.IC V(W_1_21_1) = 1 V(W_1_21_1_bar) = 0
.IC V(W_1_21_2) = 1 V(W_1_21_2_bar) = 0
.IC V(W_1_21_3) = 1 V(W_1_21_3_bar) = 0
.IC V(W_1_21_4) = 1 V(W_1_21_4_bar) = 0
.IC V(W_1_22_1) = 0 V(W_1_22_1_bar) = 1
.IC V(W_1_22_2) = 1 V(W_1_22_2_bar) = 0
.IC V(W_1_22_3) = 1 V(W_1_22_3_bar) = 0
.IC V(W_1_22_4) = 0 V(W_1_22_4_bar) = 1
.IC V(W_1_23_1) = 1 V(W_1_23_1_bar) = 0
.IC V(W_1_23_2) = 0 V(W_1_23_2_bar) = 1
.IC V(W_1_23_3) = 1 V(W_1_23_3_bar) = 0
.IC V(W_1_23_4) = 1 V(W_1_23_4_bar) = 0
.IC V(W_1_24_1) = 0 V(W_1_24_1_bar) = 1
.IC V(W_1_24_2) = 1 V(W_1_24_2_bar) = 0
.IC V(W_1_24_3) = 0 V(W_1_24_3_bar) = 1
.IC V(W_1_24_4) = 1 V(W_1_24_4_bar) = 0
.IC V(W_1_25_1) = 1 V(W_1_25_1_bar) = 0
.IC V(W_1_25_2) = 1 V(W_1_25_2_bar) = 0
.IC V(W_1_25_3) = 1 V(W_1_25_3_bar) = 0
.IC V(W_1_25_4) = 1 V(W_1_25_4_bar) = 0
.IC V(W_1_26_1) = 1 V(W_1_26_1_bar) = 0
.IC V(W_1_26_2) = 0 V(W_1_26_2_bar) = 1
.IC V(W_1_26_3) = 1 V(W_1_26_3_bar) = 0
.IC V(W_1_26_4) = 0 V(W_1_26_4_bar) = 1
.IC V(W_1_27_1) = 1 V(W_1_27_1_bar) = 0
.IC V(W_1_27_2) = 1 V(W_1_27_2_bar) = 0
.IC V(W_1_27_3) = 1 V(W_1_27_3_bar) = 0
.IC V(W_1_27_4) = 0 V(W_1_27_4_bar) = 1
.IC V(W_1_28_1) = 0 V(W_1_28_1_bar) = 1
.IC V(W_1_28_2) = 0 V(W_1_28_2_bar) = 1
.IC V(W_1_28_3) = 1 V(W_1_28_3_bar) = 0
.IC V(W_1_28_4) = 1 V(W_1_28_4_bar) = 0
.IC V(W_1_29_1) = 0 V(W_1_29_1_bar) = 1
.IC V(W_1_29_2) = 1 V(W_1_29_2_bar) = 0
.IC V(W_1_29_3) = 1 V(W_1_29_3_bar) = 0
.IC V(W_1_29_4) = 0 V(W_1_29_4_bar) = 1
.IC V(W_1_30_1) = 0 V(W_1_30_1_bar) = 1
.IC V(W_1_30_2) = 0 V(W_1_30_2_bar) = 1
.IC V(W_1_30_3) = 1 V(W_1_30_3_bar) = 0
.IC V(W_1_30_4) = 0 V(W_1_30_4_bar) = 1
.IC V(W_1_31_1) = 1 V(W_1_31_1_bar) = 0
.IC V(W_1_31_2) = 1 V(W_1_31_2_bar) = 0
.IC V(W_1_31_3) = 1 V(W_1_31_3_bar) = 0
.IC V(W_1_31_4) = 0 V(W_1_31_4_bar) = 1
.IC V(W_1_32_1) = 0 V(W_1_32_1_bar) = 1
.IC V(W_1_32_2) = 1 V(W_1_32_2_bar) = 0
.IC V(W_1_32_3) = 1 V(W_1_32_3_bar) = 0
.IC V(W_1_32_4) = 1 V(W_1_32_4_bar) = 0
.IC V(W_2_1_1) = 1 V(W_2_1_1_bar) = 0
.IC V(W_2_1_2) = 0 V(W_2_1_2_bar) = 1
.IC V(W_2_1_3) = 1 V(W_2_1_3_bar) = 0
.IC V(W_2_1_4) = 1 V(W_2_1_4_bar) = 0
.IC V(W_2_2_1) = 1 V(W_2_2_1_bar) = 0
.IC V(W_2_2_2) = 0 V(W_2_2_2_bar) = 1
.IC V(W_2_2_3) = 0 V(W_2_2_3_bar) = 1
.IC V(W_2_2_4) = 0 V(W_2_2_4_bar) = 1
.IC V(W_2_3_1) = 0 V(W_2_3_1_bar) = 1
.IC V(W_2_3_2) = 0 V(W_2_3_2_bar) = 1
.IC V(W_2_3_3) = 1 V(W_2_3_3_bar) = 0
.IC V(W_2_3_4) = 0 V(W_2_3_4_bar) = 1
.IC V(W_2_4_1) = 0 V(W_2_4_1_bar) = 1
.IC V(W_2_4_2) = 0 V(W_2_4_2_bar) = 1
.IC V(W_2_4_3) = 0 V(W_2_4_3_bar) = 1
.IC V(W_2_4_4) = 1 V(W_2_4_4_bar) = 0
.IC V(W_2_5_1) = 0 V(W_2_5_1_bar) = 1
.IC V(W_2_5_2) = 1 V(W_2_5_2_bar) = 0
.IC V(W_2_5_3) = 0 V(W_2_5_3_bar) = 1
.IC V(W_2_5_4) = 1 V(W_2_5_4_bar) = 0
.IC V(W_2_6_1) = 0 V(W_2_6_1_bar) = 1
.IC V(W_2_6_2) = 0 V(W_2_6_2_bar) = 1
.IC V(W_2_6_3) = 0 V(W_2_6_3_bar) = 1
.IC V(W_2_6_4) = 1 V(W_2_6_4_bar) = 0
.IC V(W_2_7_1) = 1 V(W_2_7_1_bar) = 0
.IC V(W_2_7_2) = 0 V(W_2_7_2_bar) = 1
.IC V(W_2_7_3) = 0 V(W_2_7_3_bar) = 1
.IC V(W_2_7_4) = 0 V(W_2_7_4_bar) = 1
.IC V(W_2_8_1) = 1 V(W_2_8_1_bar) = 0
.IC V(W_2_8_2) = 0 V(W_2_8_2_bar) = 1
.IC V(W_2_8_3) = 0 V(W_2_8_3_bar) = 1
.IC V(W_2_8_4) = 1 V(W_2_8_4_bar) = 0
.IC V(W_2_9_1) = 0 V(W_2_9_1_bar) = 1
.IC V(W_2_9_2) = 1 V(W_2_9_2_bar) = 0
.IC V(W_2_9_3) = 0 V(W_2_9_3_bar) = 1
.IC V(W_2_9_4) = 1 V(W_2_9_4_bar) = 0
.IC V(W_2_10_1) = 0 V(W_2_10_1_bar) = 1
.IC V(W_2_10_2) = 0 V(W_2_10_2_bar) = 1
.IC V(W_2_10_3) = 0 V(W_2_10_3_bar) = 1
.IC V(W_2_10_4) = 0 V(W_2_10_4_bar) = 1
.IC V(W_2_11_1) = 0 V(W_2_11_1_bar) = 1
.IC V(W_2_11_2) = 0 V(W_2_11_2_bar) = 1
.IC V(W_2_11_3) = 1 V(W_2_11_3_bar) = 0
.IC V(W_2_11_4) = 0 V(W_2_11_4_bar) = 1
.IC V(W_2_12_1) = 0 V(W_2_12_1_bar) = 1
.IC V(W_2_12_2) = 0 V(W_2_12_2_bar) = 1
.IC V(W_2_12_3) = 0 V(W_2_12_3_bar) = 1
.IC V(W_2_12_4) = 0 V(W_2_12_4_bar) = 1
.IC V(W_2_13_1) = 0 V(W_2_13_1_bar) = 1
.IC V(W_2_13_2) = 0 V(W_2_13_2_bar) = 1
.IC V(W_2_13_3) = 1 V(W_2_13_3_bar) = 0
.IC V(W_2_13_4) = 1 V(W_2_13_4_bar) = 0
.IC V(W_2_14_1) = 0 V(W_2_14_1_bar) = 1
.IC V(W_2_14_2) = 0 V(W_2_14_2_bar) = 1
.IC V(W_2_14_3) = 1 V(W_2_14_3_bar) = 0
.IC V(W_2_14_4) = 0 V(W_2_14_4_bar) = 1
.IC V(W_2_15_1) = 0 V(W_2_15_1_bar) = 1
.IC V(W_2_15_2) = 0 V(W_2_15_2_bar) = 1
.IC V(W_2_15_3) = 1 V(W_2_15_3_bar) = 0
.IC V(W_2_15_4) = 1 V(W_2_15_4_bar) = 0
.IC V(W_2_16_1) = 0 V(W_2_16_1_bar) = 1
.IC V(W_2_16_2) = 1 V(W_2_16_2_bar) = 0
.IC V(W_2_16_3) = 0 V(W_2_16_3_bar) = 1
.IC V(W_2_16_4) = 1 V(W_2_16_4_bar) = 0
.IC V(W_2_17_1) = 0 V(W_2_17_1_bar) = 1
.IC V(W_2_17_2) = 1 V(W_2_17_2_bar) = 0
.IC V(W_2_17_3) = 1 V(W_2_17_3_bar) = 0
.IC V(W_2_17_4) = 0 V(W_2_17_4_bar) = 1
.IC V(W_2_18_1) = 0 V(W_2_18_1_bar) = 1
.IC V(W_2_18_2) = 1 V(W_2_18_2_bar) = 0
.IC V(W_2_18_3) = 0 V(W_2_18_3_bar) = 1
.IC V(W_2_18_4) = 0 V(W_2_18_4_bar) = 1
.IC V(W_2_19_1) = 1 V(W_2_19_1_bar) = 0
.IC V(W_2_19_2) = 1 V(W_2_19_2_bar) = 0
.IC V(W_2_19_3) = 0 V(W_2_19_3_bar) = 1
.IC V(W_2_19_4) = 1 V(W_2_19_4_bar) = 0
.IC V(W_2_20_1) = 1 V(W_2_20_1_bar) = 0
.IC V(W_2_20_2) = 1 V(W_2_20_2_bar) = 0
.IC V(W_2_20_3) = 0 V(W_2_20_3_bar) = 1
.IC V(W_2_20_4) = 1 V(W_2_20_4_bar) = 0
.IC V(W_2_21_1) = 0 V(W_2_21_1_bar) = 1
.IC V(W_2_21_2) = 1 V(W_2_21_2_bar) = 0
.IC V(W_2_21_3) = 0 V(W_2_21_3_bar) = 1
.IC V(W_2_21_4) = 1 V(W_2_21_4_bar) = 0
.IC V(W_2_22_1) = 0 V(W_2_22_1_bar) = 1
.IC V(W_2_22_2) = 0 V(W_2_22_2_bar) = 1
.IC V(W_2_22_3) = 0 V(W_2_22_3_bar) = 1
.IC V(W_2_22_4) = 0 V(W_2_22_4_bar) = 1
.IC V(W_2_23_1) = 0 V(W_2_23_1_bar) = 1
.IC V(W_2_23_2) = 1 V(W_2_23_2_bar) = 0
.IC V(W_2_23_3) = 1 V(W_2_23_3_bar) = 0
.IC V(W_2_23_4) = 0 V(W_2_23_4_bar) = 1
.IC V(W_2_24_1) = 0 V(W_2_24_1_bar) = 1
.IC V(W_2_24_2) = 0 V(W_2_24_2_bar) = 1
.IC V(W_2_24_3) = 1 V(W_2_24_3_bar) = 0
.IC V(W_2_24_4) = 1 V(W_2_24_4_bar) = 0
.IC V(W_2_25_1) = 1 V(W_2_25_1_bar) = 0
.IC V(W_2_25_2) = 0 V(W_2_25_2_bar) = 1
.IC V(W_2_25_3) = 0 V(W_2_25_3_bar) = 1
.IC V(W_2_25_4) = 0 V(W_2_25_4_bar) = 1
.IC V(W_2_26_1) = 1 V(W_2_26_1_bar) = 0
.IC V(W_2_26_2) = 0 V(W_2_26_2_bar) = 1
.IC V(W_2_26_3) = 1 V(W_2_26_3_bar) = 0
.IC V(W_2_26_4) = 1 V(W_2_26_4_bar) = 0
.IC V(W_2_27_1) = 1 V(W_2_27_1_bar) = 0
.IC V(W_2_27_2) = 1 V(W_2_27_2_bar) = 0
.IC V(W_2_27_3) = 0 V(W_2_27_3_bar) = 1
.IC V(W_2_27_4) = 1 V(W_2_27_4_bar) = 0
.IC V(W_2_28_1) = 0 V(W_2_28_1_bar) = 1
.IC V(W_2_28_2) = 0 V(W_2_28_2_bar) = 1
.IC V(W_2_28_3) = 0 V(W_2_28_3_bar) = 1
.IC V(W_2_28_4) = 1 V(W_2_28_4_bar) = 0
.IC V(W_2_29_1) = 0 V(W_2_29_1_bar) = 1
.IC V(W_2_29_2) = 1 V(W_2_29_2_bar) = 0
.IC V(W_2_29_3) = 0 V(W_2_29_3_bar) = 1
.IC V(W_2_29_4) = 0 V(W_2_29_4_bar) = 1
.IC V(W_2_30_1) = 1 V(W_2_30_1_bar) = 0
.IC V(W_2_30_2) = 0 V(W_2_30_2_bar) = 1
.IC V(W_2_30_3) = 1 V(W_2_30_3_bar) = 0
.IC V(W_2_30_4) = 0 V(W_2_30_4_bar) = 1
.IC V(W_2_31_1) = 1 V(W_2_31_1_bar) = 0
.IC V(W_2_31_2) = 0 V(W_2_31_2_bar) = 1
.IC V(W_2_31_3) = 1 V(W_2_31_3_bar) = 0
.IC V(W_2_31_4) = 0 V(W_2_31_4_bar) = 1
.IC V(W_2_32_1) = 0 V(W_2_32_1_bar) = 1
.IC V(W_2_32_2) = 1 V(W_2_32_2_bar) = 0
.IC V(W_2_32_3) = 0 V(W_2_32_3_bar) = 1
.IC V(W_2_32_4) = 1 V(W_2_32_4_bar) = 0
.IC V(W_3_1_1) = 1 V(W_3_1_1_bar) = 0
.IC V(W_3_1_2) = 0 V(W_3_1_2_bar) = 1
.IC V(W_3_1_3) = 0 V(W_3_1_3_bar) = 1
.IC V(W_3_1_4) = 1 V(W_3_1_4_bar) = 0
.IC V(W_3_2_1) = 0 V(W_3_2_1_bar) = 1
.IC V(W_3_2_2) = 1 V(W_3_2_2_bar) = 0
.IC V(W_3_2_3) = 1 V(W_3_2_3_bar) = 0
.IC V(W_3_2_4) = 0 V(W_3_2_4_bar) = 1
.IC V(W_3_3_1) = 0 V(W_3_3_1_bar) = 1
.IC V(W_3_3_2) = 1 V(W_3_3_2_bar) = 0
.IC V(W_3_3_3) = 0 V(W_3_3_3_bar) = 1
.IC V(W_3_3_4) = 0 V(W_3_3_4_bar) = 1
.IC V(W_3_4_1) = 1 V(W_3_4_1_bar) = 0
.IC V(W_3_4_2) = 0 V(W_3_4_2_bar) = 1
.IC V(W_3_4_3) = 1 V(W_3_4_3_bar) = 0
.IC V(W_3_4_4) = 0 V(W_3_4_4_bar) = 1
.IC V(W_3_5_1) = 1 V(W_3_5_1_bar) = 0
.IC V(W_3_5_2) = 0 V(W_3_5_2_bar) = 1
.IC V(W_3_5_3) = 0 V(W_3_5_3_bar) = 1
.IC V(W_3_5_4) = 1 V(W_3_5_4_bar) = 0
.IC V(W_3_6_1) = 1 V(W_3_6_1_bar) = 0
.IC V(W_3_6_2) = 0 V(W_3_6_2_bar) = 1
.IC V(W_3_6_3) = 1 V(W_3_6_3_bar) = 0
.IC V(W_3_6_4) = 0 V(W_3_6_4_bar) = 1
.IC V(W_3_7_1) = 0 V(W_3_7_1_bar) = 1
.IC V(W_3_7_2) = 0 V(W_3_7_2_bar) = 1
.IC V(W_3_7_3) = 0 V(W_3_7_3_bar) = 1
.IC V(W_3_7_4) = 1 V(W_3_7_4_bar) = 0
.IC V(W_3_8_1) = 0 V(W_3_8_1_bar) = 1
.IC V(W_3_8_2) = 0 V(W_3_8_2_bar) = 1
.IC V(W_3_8_3) = 0 V(W_3_8_3_bar) = 1
.IC V(W_3_8_4) = 0 V(W_3_8_4_bar) = 1
.IC V(W_3_9_1) = 1 V(W_3_9_1_bar) = 0
.IC V(W_3_9_2) = 1 V(W_3_9_2_bar) = 0
.IC V(W_3_9_3) = 1 V(W_3_9_3_bar) = 0
.IC V(W_3_9_4) = 1 V(W_3_9_4_bar) = 0
.IC V(W_3_10_1) = 1 V(W_3_10_1_bar) = 0
.IC V(W_3_10_2) = 0 V(W_3_10_2_bar) = 1
.IC V(W_3_10_3) = 1 V(W_3_10_3_bar) = 0
.IC V(W_3_10_4) = 1 V(W_3_10_4_bar) = 0
.IC V(W_3_11_1) = 0 V(W_3_11_1_bar) = 1
.IC V(W_3_11_2) = 0 V(W_3_11_2_bar) = 1
.IC V(W_3_11_3) = 1 V(W_3_11_3_bar) = 0
.IC V(W_3_11_4) = 1 V(W_3_11_4_bar) = 0
.IC V(W_3_12_1) = 1 V(W_3_12_1_bar) = 0
.IC V(W_3_12_2) = 1 V(W_3_12_2_bar) = 0
.IC V(W_3_12_3) = 0 V(W_3_12_3_bar) = 1
.IC V(W_3_12_4) = 0 V(W_3_12_4_bar) = 1
.IC V(W_3_13_1) = 1 V(W_3_13_1_bar) = 0
.IC V(W_3_13_2) = 1 V(W_3_13_2_bar) = 0
.IC V(W_3_13_3) = 1 V(W_3_13_3_bar) = 0
.IC V(W_3_13_4) = 0 V(W_3_13_4_bar) = 1
.IC V(W_3_14_1) = 0 V(W_3_14_1_bar) = 1
.IC V(W_3_14_2) = 0 V(W_3_14_2_bar) = 1
.IC V(W_3_14_3) = 0 V(W_3_14_3_bar) = 1
.IC V(W_3_14_4) = 0 V(W_3_14_4_bar) = 1
.IC V(W_3_15_1) = 0 V(W_3_15_1_bar) = 1
.IC V(W_3_15_2) = 1 V(W_3_15_2_bar) = 0
.IC V(W_3_15_3) = 1 V(W_3_15_3_bar) = 0
.IC V(W_3_15_4) = 0 V(W_3_15_4_bar) = 1
.IC V(W_3_16_1) = 0 V(W_3_16_1_bar) = 1
.IC V(W_3_16_2) = 0 V(W_3_16_2_bar) = 1
.IC V(W_3_16_3) = 0 V(W_3_16_3_bar) = 1
.IC V(W_3_16_4) = 0 V(W_3_16_4_bar) = 1
.IC V(W_3_17_1) = 1 V(W_3_17_1_bar) = 0
.IC V(W_3_17_2) = 1 V(W_3_17_2_bar) = 0
.IC V(W_3_17_3) = 1 V(W_3_17_3_bar) = 0
.IC V(W_3_17_4) = 1 V(W_3_17_4_bar) = 0
.IC V(W_3_18_1) = 1 V(W_3_18_1_bar) = 0
.IC V(W_3_18_2) = 0 V(W_3_18_2_bar) = 1
.IC V(W_3_18_3) = 0 V(W_3_18_3_bar) = 1
.IC V(W_3_18_4) = 1 V(W_3_18_4_bar) = 0
.IC V(W_3_19_1) = 1 V(W_3_19_1_bar) = 0
.IC V(W_3_19_2) = 0 V(W_3_19_2_bar) = 1
.IC V(W_3_19_3) = 0 V(W_3_19_3_bar) = 1
.IC V(W_3_19_4) = 0 V(W_3_19_4_bar) = 1
.IC V(W_3_20_1) = 1 V(W_3_20_1_bar) = 0
.IC V(W_3_20_2) = 1 V(W_3_20_2_bar) = 0
.IC V(W_3_20_3) = 0 V(W_3_20_3_bar) = 1
.IC V(W_3_20_4) = 1 V(W_3_20_4_bar) = 0
.IC V(W_3_21_1) = 1 V(W_3_21_1_bar) = 0
.IC V(W_3_21_2) = 1 V(W_3_21_2_bar) = 0
.IC V(W_3_21_3) = 1 V(W_3_21_3_bar) = 0
.IC V(W_3_21_4) = 0 V(W_3_21_4_bar) = 1
.IC V(W_3_22_1) = 0 V(W_3_22_1_bar) = 1
.IC V(W_3_22_2) = 1 V(W_3_22_2_bar) = 0
.IC V(W_3_22_3) = 0 V(W_3_22_3_bar) = 1
.IC V(W_3_22_4) = 1 V(W_3_22_4_bar) = 0
.IC V(W_3_23_1) = 0 V(W_3_23_1_bar) = 1
.IC V(W_3_23_2) = 0 V(W_3_23_2_bar) = 1
.IC V(W_3_23_3) = 0 V(W_3_23_3_bar) = 1
.IC V(W_3_23_4) = 1 V(W_3_23_4_bar) = 0
.IC V(W_3_24_1) = 1 V(W_3_24_1_bar) = 0
.IC V(W_3_24_2) = 1 V(W_3_24_2_bar) = 0
.IC V(W_3_24_3) = 1 V(W_3_24_3_bar) = 0
.IC V(W_3_24_4) = 0 V(W_3_24_4_bar) = 1
.IC V(W_3_25_1) = 1 V(W_3_25_1_bar) = 0
.IC V(W_3_25_2) = 1 V(W_3_25_2_bar) = 0
.IC V(W_3_25_3) = 1 V(W_3_25_3_bar) = 0
.IC V(W_3_25_4) = 0 V(W_3_25_4_bar) = 1
.IC V(W_3_26_1) = 1 V(W_3_26_1_bar) = 0
.IC V(W_3_26_2) = 1 V(W_3_26_2_bar) = 0
.IC V(W_3_26_3) = 1 V(W_3_26_3_bar) = 0
.IC V(W_3_26_4) = 0 V(W_3_26_4_bar) = 1
.IC V(W_3_27_1) = 1 V(W_3_27_1_bar) = 0
.IC V(W_3_27_2) = 1 V(W_3_27_2_bar) = 0
.IC V(W_3_27_3) = 1 V(W_3_27_3_bar) = 0
.IC V(W_3_27_4) = 0 V(W_3_27_4_bar) = 1
.IC V(W_3_28_1) = 1 V(W_3_28_1_bar) = 0
.IC V(W_3_28_2) = 0 V(W_3_28_2_bar) = 1
.IC V(W_3_28_3) = 0 V(W_3_28_3_bar) = 1
.IC V(W_3_28_4) = 0 V(W_3_28_4_bar) = 1
.IC V(W_3_29_1) = 0 V(W_3_29_1_bar) = 1
.IC V(W_3_29_2) = 0 V(W_3_29_2_bar) = 1
.IC V(W_3_29_3) = 0 V(W_3_29_3_bar) = 1
.IC V(W_3_29_4) = 0 V(W_3_29_4_bar) = 1
.IC V(W_3_30_1) = 0 V(W_3_30_1_bar) = 1
.IC V(W_3_30_2) = 0 V(W_3_30_2_bar) = 1
.IC V(W_3_30_3) = 1 V(W_3_30_3_bar) = 0
.IC V(W_3_30_4) = 0 V(W_3_30_4_bar) = 1
.IC V(W_3_31_1) = 1 V(W_3_31_1_bar) = 0
.IC V(W_3_31_2) = 0 V(W_3_31_2_bar) = 1
.IC V(W_3_31_3) = 0 V(W_3_31_3_bar) = 1
.IC V(W_3_31_4) = 1 V(W_3_31_4_bar) = 0
.IC V(W_3_32_1) = 0 V(W_3_32_1_bar) = 1
.IC V(W_3_32_2) = 0 V(W_3_32_2_bar) = 1
.IC V(W_3_32_3) = 1 V(W_3_32_3_bar) = 0
.IC V(W_3_32_4) = 1 V(W_3_32_4_bar) = 0
.IC V(W_4_1_1) = 0 V(W_4_1_1_bar) = 1
.IC V(W_4_1_2) = 1 V(W_4_1_2_bar) = 0
.IC V(W_4_1_3) = 0 V(W_4_1_3_bar) = 1
.IC V(W_4_1_4) = 1 V(W_4_1_4_bar) = 0
.IC V(W_4_2_1) = 1 V(W_4_2_1_bar) = 0
.IC V(W_4_2_2) = 1 V(W_4_2_2_bar) = 0
.IC V(W_4_2_3) = 0 V(W_4_2_3_bar) = 1
.IC V(W_4_2_4) = 1 V(W_4_2_4_bar) = 0
.IC V(W_4_3_1) = 0 V(W_4_3_1_bar) = 1
.IC V(W_4_3_2) = 0 V(W_4_3_2_bar) = 1
.IC V(W_4_3_3) = 1 V(W_4_3_3_bar) = 0
.IC V(W_4_3_4) = 0 V(W_4_3_4_bar) = 1
.IC V(W_4_4_1) = 0 V(W_4_4_1_bar) = 1
.IC V(W_4_4_2) = 0 V(W_4_4_2_bar) = 1
.IC V(W_4_4_3) = 1 V(W_4_4_3_bar) = 0
.IC V(W_4_4_4) = 1 V(W_4_4_4_bar) = 0
.IC V(W_4_5_1) = 1 V(W_4_5_1_bar) = 0
.IC V(W_4_5_2) = 0 V(W_4_5_2_bar) = 1
.IC V(W_4_5_3) = 1 V(W_4_5_3_bar) = 0
.IC V(W_4_5_4) = 0 V(W_4_5_4_bar) = 1
.IC V(W_4_6_1) = 0 V(W_4_6_1_bar) = 1
.IC V(W_4_6_2) = 0 V(W_4_6_2_bar) = 1
.IC V(W_4_6_3) = 1 V(W_4_6_3_bar) = 0
.IC V(W_4_6_4) = 0 V(W_4_6_4_bar) = 1
.IC V(W_4_7_1) = 1 V(W_4_7_1_bar) = 0
.IC V(W_4_7_2) = 0 V(W_4_7_2_bar) = 1
.IC V(W_4_7_3) = 0 V(W_4_7_3_bar) = 1
.IC V(W_4_7_4) = 0 V(W_4_7_4_bar) = 1
.IC V(W_4_8_1) = 0 V(W_4_8_1_bar) = 1
.IC V(W_4_8_2) = 0 V(W_4_8_2_bar) = 1
.IC V(W_4_8_3) = 0 V(W_4_8_3_bar) = 1
.IC V(W_4_8_4) = 0 V(W_4_8_4_bar) = 1
.IC V(W_4_9_1) = 1 V(W_4_9_1_bar) = 0
.IC V(W_4_9_2) = 1 V(W_4_9_2_bar) = 0
.IC V(W_4_9_3) = 1 V(W_4_9_3_bar) = 0
.IC V(W_4_9_4) = 1 V(W_4_9_4_bar) = 0
.IC V(W_4_10_1) = 0 V(W_4_10_1_bar) = 1
.IC V(W_4_10_2) = 0 V(W_4_10_2_bar) = 1
.IC V(W_4_10_3) = 1 V(W_4_10_3_bar) = 0
.IC V(W_4_10_4) = 0 V(W_4_10_4_bar) = 1
.IC V(W_4_11_1) = 1 V(W_4_11_1_bar) = 0
.IC V(W_4_11_2) = 0 V(W_4_11_2_bar) = 1
.IC V(W_4_11_3) = 1 V(W_4_11_3_bar) = 0
.IC V(W_4_11_4) = 1 V(W_4_11_4_bar) = 0
.IC V(W_4_12_1) = 0 V(W_4_12_1_bar) = 1
.IC V(W_4_12_2) = 0 V(W_4_12_2_bar) = 1
.IC V(W_4_12_3) = 1 V(W_4_12_3_bar) = 0
.IC V(W_4_12_4) = 1 V(W_4_12_4_bar) = 0
.IC V(W_4_13_1) = 1 V(W_4_13_1_bar) = 0
.IC V(W_4_13_2) = 0 V(W_4_13_2_bar) = 1
.IC V(W_4_13_3) = 0 V(W_4_13_3_bar) = 1
.IC V(W_4_13_4) = 1 V(W_4_13_4_bar) = 0
.IC V(W_4_14_1) = 0 V(W_4_14_1_bar) = 1
.IC V(W_4_14_2) = 1 V(W_4_14_2_bar) = 0
.IC V(W_4_14_3) = 0 V(W_4_14_3_bar) = 1
.IC V(W_4_14_4) = 1 V(W_4_14_4_bar) = 0
.IC V(W_4_15_1) = 1 V(W_4_15_1_bar) = 0
.IC V(W_4_15_2) = 0 V(W_4_15_2_bar) = 1
.IC V(W_4_15_3) = 0 V(W_4_15_3_bar) = 1
.IC V(W_4_15_4) = 1 V(W_4_15_4_bar) = 0
.IC V(W_4_16_1) = 1 V(W_4_16_1_bar) = 0
.IC V(W_4_16_2) = 0 V(W_4_16_2_bar) = 1
.IC V(W_4_16_3) = 0 V(W_4_16_3_bar) = 1
.IC V(W_4_16_4) = 1 V(W_4_16_4_bar) = 0
.IC V(W_4_17_1) = 0 V(W_4_17_1_bar) = 1
.IC V(W_4_17_2) = 1 V(W_4_17_2_bar) = 0
.IC V(W_4_17_3) = 1 V(W_4_17_3_bar) = 0
.IC V(W_4_17_4) = 1 V(W_4_17_4_bar) = 0
.IC V(W_4_18_1) = 0 V(W_4_18_1_bar) = 1
.IC V(W_4_18_2) = 0 V(W_4_18_2_bar) = 1
.IC V(W_4_18_3) = 0 V(W_4_18_3_bar) = 1
.IC V(W_4_18_4) = 1 V(W_4_18_4_bar) = 0
.IC V(W_4_19_1) = 0 V(W_4_19_1_bar) = 1
.IC V(W_4_19_2) = 0 V(W_4_19_2_bar) = 1
.IC V(W_4_19_3) = 1 V(W_4_19_3_bar) = 0
.IC V(W_4_19_4) = 0 V(W_4_19_4_bar) = 1
.IC V(W_4_20_1) = 0 V(W_4_20_1_bar) = 1
.IC V(W_4_20_2) = 0 V(W_4_20_2_bar) = 1
.IC V(W_4_20_3) = 0 V(W_4_20_3_bar) = 1
.IC V(W_4_20_4) = 0 V(W_4_20_4_bar) = 1
.IC V(W_4_21_1) = 0 V(W_4_21_1_bar) = 1
.IC V(W_4_21_2) = 0 V(W_4_21_2_bar) = 1
.IC V(W_4_21_3) = 0 V(W_4_21_3_bar) = 1
.IC V(W_4_21_4) = 0 V(W_4_21_4_bar) = 1
.IC V(W_4_22_1) = 0 V(W_4_22_1_bar) = 1
.IC V(W_4_22_2) = 1 V(W_4_22_2_bar) = 0
.IC V(W_4_22_3) = 1 V(W_4_22_3_bar) = 0
.IC V(W_4_22_4) = 0 V(W_4_22_4_bar) = 1
.IC V(W_4_23_1) = 1 V(W_4_23_1_bar) = 0
.IC V(W_4_23_2) = 0 V(W_4_23_2_bar) = 1
.IC V(W_4_23_3) = 0 V(W_4_23_3_bar) = 1
.IC V(W_4_23_4) = 0 V(W_4_23_4_bar) = 1
.IC V(W_4_24_1) = 0 V(W_4_24_1_bar) = 1
.IC V(W_4_24_2) = 1 V(W_4_24_2_bar) = 0
.IC V(W_4_24_3) = 0 V(W_4_24_3_bar) = 1
.IC V(W_4_24_4) = 0 V(W_4_24_4_bar) = 1
.IC V(W_4_25_1) = 1 V(W_4_25_1_bar) = 0
.IC V(W_4_25_2) = 0 V(W_4_25_2_bar) = 1
.IC V(W_4_25_3) = 0 V(W_4_25_3_bar) = 1
.IC V(W_4_25_4) = 0 V(W_4_25_4_bar) = 1
.IC V(W_4_26_1) = 1 V(W_4_26_1_bar) = 0
.IC V(W_4_26_2) = 0 V(W_4_26_2_bar) = 1
.IC V(W_4_26_3) = 1 V(W_4_26_3_bar) = 0
.IC V(W_4_26_4) = 1 V(W_4_26_4_bar) = 0
.IC V(W_4_27_1) = 0 V(W_4_27_1_bar) = 1
.IC V(W_4_27_2) = 1 V(W_4_27_2_bar) = 0
.IC V(W_4_27_3) = 1 V(W_4_27_3_bar) = 0
.IC V(W_4_27_4) = 0 V(W_4_27_4_bar) = 1
.IC V(W_4_28_1) = 1 V(W_4_28_1_bar) = 0
.IC V(W_4_28_2) = 1 V(W_4_28_2_bar) = 0
.IC V(W_4_28_3) = 0 V(W_4_28_3_bar) = 1
.IC V(W_4_28_4) = 1 V(W_4_28_4_bar) = 0
.IC V(W_4_29_1) = 0 V(W_4_29_1_bar) = 1
.IC V(W_4_29_2) = 0 V(W_4_29_2_bar) = 1
.IC V(W_4_29_3) = 1 V(W_4_29_3_bar) = 0
.IC V(W_4_29_4) = 1 V(W_4_29_4_bar) = 0
.IC V(W_4_30_1) = 1 V(W_4_30_1_bar) = 0
.IC V(W_4_30_2) = 0 V(W_4_30_2_bar) = 1
.IC V(W_4_30_3) = 1 V(W_4_30_3_bar) = 0
.IC V(W_4_30_4) = 0 V(W_4_30_4_bar) = 1
.IC V(W_4_31_1) = 1 V(W_4_31_1_bar) = 0
.IC V(W_4_31_2) = 1 V(W_4_31_2_bar) = 0
.IC V(W_4_31_3) = 0 V(W_4_31_3_bar) = 1
.IC V(W_4_31_4) = 1 V(W_4_31_4_bar) = 0
.IC V(W_4_32_1) = 1 V(W_4_32_1_bar) = 0
.IC V(W_4_32_2) = 1 V(W_4_32_2_bar) = 0
.IC V(W_4_32_3) = 0 V(W_4_32_3_bar) = 1
.IC V(W_4_32_4) = 1 V(W_4_32_4_bar) = 0
.end
