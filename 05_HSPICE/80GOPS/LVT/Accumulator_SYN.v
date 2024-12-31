/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Mon Dec 30 22:10:37 2024
/////////////////////////////////////////////////////////////


module Accumulator ( clk, rst_n, in_valid, partial_sum, result );
  input [12:0] partial_sum;
  output [12:0] result;
  input clk, rst_n, in_valid;
  wire   n116, n117, n118, n119, n120, n121, N18, N19, N20, N21, N22, N23, N24,
         N25, N26, N27, N28, N29, N30, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n37, n38, n39, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115;

  ASYNC_DFFHx1_ASAP7_75t_R result_reg_12_ ( .D(N30), .CLK(clk), .RESET(n2), 
        .SET(n28), .QN(n14) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_11_ ( .D(N29), .CLK(clk), .RESET(n2), 
        .SET(n54), .QN(n13) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_10_ ( .D(N28), .CLK(clk), .RESET(n2), 
        .SET(n26), .QN(n12) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_9_ ( .D(N27), .CLK(clk), .RESET(n2), 
        .SET(n29), .QN(n11) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_8_ ( .D(N26), .CLK(clk), .RESET(n2), 
        .SET(n53), .QN(n10) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_7_ ( .D(N25), .CLK(clk), .RESET(n2), 
        .SET(n55), .QN(n9) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_6_ ( .D(N24), .CLK(clk), .RESET(n2), 
        .SET(n24), .QN(n8) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_5_ ( .D(N23), .CLK(clk), .RESET(n2), 
        .SET(n30), .QN(n7) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_4_ ( .D(N22), .CLK(clk), .RESET(n2), 
        .SET(n15), .QN(n6) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_3_ ( .D(N21), .CLK(clk), .RESET(n2), 
        .SET(n25), .QN(n5) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_2_ ( .D(N20), .CLK(clk), .RESET(n2), 
        .SET(n27), .QN(n4) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_1_ ( .D(N19), .CLK(clk), .RESET(n2), 
        .SET(n23), .QN(n3) );
  ASYNC_DFFHx1_ASAP7_75t_R result_reg_0_ ( .D(N18), .CLK(clk), .RESET(n2), 
        .SET(n56), .QN(n1) );
  INVx1_ASAP7_75t_R U31 ( .A(n38), .Y(result[3]) );
  INVx1_ASAP7_75t_R U32 ( .A(n39), .Y(result[5]) );
  INVx1_ASAP7_75t_R U33 ( .A(n32), .Y(result[7]) );
  INVx1_ASAP7_75t_R U34 ( .A(n33), .Y(result[9]) );
  INVx1_ASAP7_75t_R U35 ( .A(n37), .Y(result[1]) );
  INVx2_ASAP7_75t_R U36 ( .A(n121), .Y(result[0]) );
  INVx4_ASAP7_75t_R U37 ( .A(partial_sum[2]), .Y(n34) );
  INVx4_ASAP7_75t_R U38 ( .A(partial_sum[4]), .Y(n47) );
  INVx4_ASAP7_75t_R U39 ( .A(partial_sum[6]), .Y(n46) );
  INVx4_ASAP7_75t_R U40 ( .A(partial_sum[8]), .Y(n45) );
  INVx4_ASAP7_75t_R U41 ( .A(partial_sum[10]), .Y(n44) );
  BUFx3_ASAP7_75t_R U42 ( .A(n4), .Y(n120) );
  BUFx3_ASAP7_75t_R U43 ( .A(n6), .Y(n119) );
  AND2x2_ASAP7_75t_R U44 ( .A(result[0]), .B(partial_sum[1]), .Y(n48) );
  BUFx3_ASAP7_75t_R U45 ( .A(n1), .Y(n121) );
  BUFx5_ASAP7_75t_R U46 ( .A(n11), .Y(n33) );
  BUFx5_ASAP7_75t_R U47 ( .A(n3), .Y(n37) );
  BUFx5_ASAP7_75t_R U48 ( .A(n5), .Y(n38) );
  BUFx5_ASAP7_75t_R U49 ( .A(n7), .Y(n39) );
  BUFx5_ASAP7_75t_R U50 ( .A(n9), .Y(n32) );
  INVx4_ASAP7_75t_R U51 ( .A(in_valid), .Y(n16) );
  INVx4_ASAP7_75t_R U52 ( .A(in_valid), .Y(n17) );
  INVx4_ASAP7_75t_R U53 ( .A(in_valid), .Y(n18) );
  INVx8_ASAP7_75t_R U54 ( .A(in_valid), .Y(n19) );
  INVx4_ASAP7_75t_R U55 ( .A(in_valid), .Y(n20) );
  INVx4_ASAP7_75t_R U56 ( .A(in_valid), .Y(n21) );
  INVx4_ASAP7_75t_R U57 ( .A(in_valid), .Y(n22) );
  INVx4_ASAP7_75t_R U58 ( .A(in_valid), .Y(n49) );
  INVx4_ASAP7_75t_R U59 ( .A(in_valid), .Y(n50) );
  INVx6_ASAP7_75t_R U60 ( .A(rst_n), .Y(n23) );
  INVx6_ASAP7_75t_R U61 ( .A(rst_n), .Y(n24) );
  INVx6_ASAP7_75t_R U62 ( .A(rst_n), .Y(n25) );
  INVx6_ASAP7_75t_R U63 ( .A(rst_n), .Y(n26) );
  INVx6_ASAP7_75t_R U64 ( .A(rst_n), .Y(n27) );
  INVx6_ASAP7_75t_R U65 ( .A(rst_n), .Y(n28) );
  INVx6_ASAP7_75t_R U66 ( .A(rst_n), .Y(n29) );
  INVx6_ASAP7_75t_R U67 ( .A(rst_n), .Y(n30) );
  NAND2xp33_ASAP7_75t_R U68 ( .A(result[0]), .B(partial_sum[1]), .Y(n62) );
  BUFx3_ASAP7_75t_R U69 ( .A(n13), .Y(n31) );
  INVx6_ASAP7_75t_R U70 ( .A(partial_sum[2]), .Y(n63) );
  BUFx3_ASAP7_75t_R U71 ( .A(n8), .Y(n118) );
  INVx3_ASAP7_75t_R U72 ( .A(n118), .Y(result[6]) );
  INVx3_ASAP7_75t_R U73 ( .A(n120), .Y(result[2]) );
  INVx3_ASAP7_75t_R U74 ( .A(n119), .Y(result[4]) );
  BUFx3_ASAP7_75t_R U75 ( .A(n10), .Y(n117) );
  INVx3_ASAP7_75t_R U76 ( .A(n117), .Y(result[8]) );
  BUFx3_ASAP7_75t_R U77 ( .A(n12), .Y(n116) );
  INVx3_ASAP7_75t_R U78 ( .A(n116), .Y(result[10]) );
  INVx6_ASAP7_75t_R U79 ( .A(partial_sum[10]), .Y(n106) );
  INVx6_ASAP7_75t_R U80 ( .A(partial_sum[8]), .Y(n95) );
  INVx6_ASAP7_75t_R U81 ( .A(partial_sum[6]), .Y(n84) );
  INVx6_ASAP7_75t_R U82 ( .A(partial_sum[4]), .Y(n73) );
  INVx4_ASAP7_75t_R U83 ( .A(in_valid), .Y(n51) );
  INVx4_ASAP7_75t_R U84 ( .A(in_valid), .Y(n52) );
  INVx4_ASAP7_75t_R U85 ( .A(in_valid), .Y(n115) );
  INVx6_ASAP7_75t_R U86 ( .A(rst_n), .Y(n53) );
  INVx6_ASAP7_75t_R U87 ( .A(rst_n), .Y(n54) );
  INVx6_ASAP7_75t_R U88 ( .A(rst_n), .Y(n55) );
  INVx6_ASAP7_75t_R U89 ( .A(rst_n), .Y(n56) );
  INVx6_ASAP7_75t_R U90 ( .A(rst_n), .Y(n15) );
  TIELOx1_ASAP7_75t_R U91 ( .L(n2) );
  INVxp33_ASAP7_75t_R U92 ( .A(n14), .Y(result[12]) );
  INVxp33_ASAP7_75t_R U93 ( .A(n31), .Y(result[11]) );
  AND2x2_ASAP7_75t_R U94 ( .A(in_valid), .B(partial_sum[0]), .Y(N18) );
  NOR2xp33_ASAP7_75t_R U95 ( .A(result[0]), .B(partial_sum[1]), .Y(n57) );
  NOR3xp33_ASAP7_75t_R U96 ( .A(n57), .B(n48), .C(n19), .Y(N19) );
  NOR2xp33_ASAP7_75t_R U97 ( .A(result[1]), .B(partial_sum[2]), .Y(n59) );
  NOR2xp33_ASAP7_75t_R U98 ( .A(n37), .B(n34), .Y(n58) );
  NOR2xp33_ASAP7_75t_R U99 ( .A(n59), .B(n58), .Y(n60) );
  HAxp5_ASAP7_75t_R U100 ( .A(n60), .B(n48), .SN(n61) );
  NOR2xp33_ASAP7_75t_R U101 ( .A(n18), .B(n61), .Y(N20) );
  MAJIxp5_ASAP7_75t_R U102 ( .A(n37), .B(n62), .C(n63), .Y(n68) );
  AND2x2_ASAP7_75t_R U103 ( .A(result[2]), .B(partial_sum[3]), .Y(n65) );
  NOR2xp33_ASAP7_75t_R U104 ( .A(result[2]), .B(partial_sum[3]), .Y(n64) );
  NOR2xp33_ASAP7_75t_R U105 ( .A(n65), .B(n64), .Y(n66) );
  HAxp5_ASAP7_75t_R U106 ( .A(n68), .B(n66), .SN(n67) );
  NOR2xp33_ASAP7_75t_R U107 ( .A(n21), .B(n67), .Y(N21) );
  MAJIxp5_ASAP7_75t_R U108 ( .A(result[2]), .B(partial_sum[3]), .C(n68), .Y(
        n74) );
  NOR2xp33_ASAP7_75t_R U109 ( .A(n38), .B(n47), .Y(n70) );
  NOR2xp33_ASAP7_75t_R U110 ( .A(result[3]), .B(partial_sum[4]), .Y(n69) );
  NOR2xp33_ASAP7_75t_R U111 ( .A(n70), .B(n69), .Y(n71) );
  XOR2xp5_ASAP7_75t_R U112 ( .A(n74), .B(n71), .Y(n72) );
  NOR2xp33_ASAP7_75t_R U113 ( .A(n51), .B(n72), .Y(N22) );
  MAJIxp5_ASAP7_75t_R U114 ( .A(n38), .B(n74), .C(n73), .Y(n79) );
  AND2x2_ASAP7_75t_R U115 ( .A(result[4]), .B(partial_sum[5]), .Y(n76) );
  NOR2xp33_ASAP7_75t_R U116 ( .A(result[4]), .B(partial_sum[5]), .Y(n75) );
  NOR2xp33_ASAP7_75t_R U117 ( .A(n76), .B(n75), .Y(n77) );
  HAxp5_ASAP7_75t_R U118 ( .A(n79), .B(n77), .SN(n78) );
  NOR2xp33_ASAP7_75t_R U119 ( .A(n49), .B(n78), .Y(N23) );
  MAJIxp5_ASAP7_75t_R U120 ( .A(result[4]), .B(partial_sum[5]), .C(n79), .Y(
        n85) );
  NOR2xp33_ASAP7_75t_R U121 ( .A(n39), .B(n46), .Y(n81) );
  NOR2xp33_ASAP7_75t_R U122 ( .A(result[5]), .B(partial_sum[6]), .Y(n80) );
  NOR2xp33_ASAP7_75t_R U123 ( .A(n81), .B(n80), .Y(n82) );
  XOR2xp5_ASAP7_75t_R U124 ( .A(n85), .B(n82), .Y(n83) );
  NOR2xp33_ASAP7_75t_R U125 ( .A(n16), .B(n83), .Y(N24) );
  MAJIxp5_ASAP7_75t_R U126 ( .A(n39), .B(n85), .C(n84), .Y(n90) );
  AND2x2_ASAP7_75t_R U127 ( .A(result[6]), .B(partial_sum[7]), .Y(n87) );
  NOR2xp33_ASAP7_75t_R U128 ( .A(result[6]), .B(partial_sum[7]), .Y(n86) );
  NOR2xp33_ASAP7_75t_R U129 ( .A(n87), .B(n86), .Y(n88) );
  HAxp5_ASAP7_75t_R U130 ( .A(n90), .B(n88), .SN(n89) );
  NOR2xp33_ASAP7_75t_R U131 ( .A(n52), .B(n89), .Y(N25) );
  MAJIxp5_ASAP7_75t_R U132 ( .A(result[6]), .B(partial_sum[7]), .C(n90), .Y(
        n96) );
  NOR2xp33_ASAP7_75t_R U133 ( .A(n32), .B(n45), .Y(n92) );
  NOR2xp33_ASAP7_75t_R U134 ( .A(result[7]), .B(partial_sum[8]), .Y(n91) );
  NOR2xp33_ASAP7_75t_R U135 ( .A(n92), .B(n91), .Y(n93) );
  XOR2xp5_ASAP7_75t_R U136 ( .A(n96), .B(n93), .Y(n94) );
  NOR2xp33_ASAP7_75t_R U137 ( .A(n115), .B(n94), .Y(N26) );
  MAJIxp5_ASAP7_75t_R U138 ( .A(n32), .B(n96), .C(n95), .Y(n101) );
  AND2x2_ASAP7_75t_R U139 ( .A(result[8]), .B(partial_sum[9]), .Y(n98) );
  NOR2xp33_ASAP7_75t_R U140 ( .A(result[8]), .B(partial_sum[9]), .Y(n97) );
  NOR2xp33_ASAP7_75t_R U141 ( .A(n98), .B(n97), .Y(n99) );
  HAxp5_ASAP7_75t_R U142 ( .A(n101), .B(n99), .SN(n100) );
  NOR2xp33_ASAP7_75t_R U143 ( .A(n50), .B(n100), .Y(N27) );
  MAJIxp5_ASAP7_75t_R U144 ( .A(result[8]), .B(partial_sum[9]), .C(n101), .Y(
        n107) );
  NOR2xp33_ASAP7_75t_R U145 ( .A(n33), .B(n44), .Y(n103) );
  NOR2xp33_ASAP7_75t_R U146 ( .A(result[9]), .B(partial_sum[10]), .Y(n102) );
  NOR2xp33_ASAP7_75t_R U147 ( .A(n103), .B(n102), .Y(n104) );
  XOR2xp5_ASAP7_75t_R U148 ( .A(n107), .B(n104), .Y(n105) );
  NOR2xp33_ASAP7_75t_R U149 ( .A(n17), .B(n105), .Y(N28) );
  MAJIxp5_ASAP7_75t_R U150 ( .A(n33), .B(n107), .C(n106), .Y(n112) );
  NOR2xp33_ASAP7_75t_R U151 ( .A(result[10]), .B(partial_sum[11]), .Y(n109) );
  AND2x2_ASAP7_75t_R U152 ( .A(result[10]), .B(partial_sum[11]), .Y(n108) );
  NOR2xp33_ASAP7_75t_R U153 ( .A(n109), .B(n108), .Y(n110) );
  HAxp5_ASAP7_75t_R U154 ( .A(n112), .B(n110), .SN(n111) );
  NOR2xp33_ASAP7_75t_R U155 ( .A(n22), .B(n111), .Y(N29) );
  MAJIxp5_ASAP7_75t_R U156 ( .A(result[10]), .B(partial_sum[11]), .C(n112), 
        .Y(n113) );
  FAx1_ASAP7_75t_R U157 ( .A(partial_sum[12]), .B(n113), .CI(n31), .SN(n114)
         );
  NOR2xp33_ASAP7_75t_R U158 ( .A(n20), .B(n114), .Y(N30) );
endmodule

