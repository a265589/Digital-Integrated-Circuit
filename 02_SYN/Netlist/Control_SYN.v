/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Tue Dec 31 08:38:43 2024
/////////////////////////////////////////////////////////////


module Control ( clk, rst_n, out_valid );
  input clk, rst_n;
  output out_valid;
  wire   N8, N9, N10, N12, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16;

  ASYNC_DFFHx1_ASAP7_75t_L counter_reg_0_ ( .D(N8), .CLK(clk), .RESET(n4), 
        .SET(n13), .QN(n7) );
  ASYNC_DFFHx1_ASAP7_75t_L counter_reg_2_ ( .D(N10), .CLK(clk), .RESET(n4), 
        .SET(n8), .QN(n6) );
  ASYNC_DFFHx1_ASAP7_75t_L counter_reg_1_ ( .D(N9), .CLK(clk), .RESET(n4), 
        .SET(n12), .QN(n5) );
  ASYNC_DFFHx1_ASAP7_75t_L out_valid_reg ( .D(N12), .CLK(clk), .RESET(n4), 
        .SET(n11), .QN(n3) );
  NAND2xp33_ASAP7_75t_L U12 ( .A(n7), .B(n5), .Y(n9) );
  AND2x2_ASAP7_75t_L U13 ( .A(n7), .B(n5), .Y(n14) );
  BUFx5_ASAP7_75t_L U14 ( .A(n6), .Y(n10) );
  INVx3_ASAP7_75t_L U15 ( .A(n10), .Y(n16) );
  INVx6_ASAP7_75t_L U16 ( .A(rst_n), .Y(n11) );
  INVx6_ASAP7_75t_L U17 ( .A(rst_n), .Y(n12) );
  INVx6_ASAP7_75t_L U18 ( .A(rst_n), .Y(n13) );
  INVx6_ASAP7_75t_L U19 ( .A(rst_n), .Y(n8) );
  TIELOx1_ASAP7_75t_L U20 ( .L(n4) );
  INVxp33_ASAP7_75t_L U21 ( .A(n3), .Y(out_valid) );
  NOR2xp33_ASAP7_75t_L U22 ( .A(n10), .B(n9), .Y(N12) );
  NOR2xp33_ASAP7_75t_L U23 ( .A(n7), .B(n5), .Y(n15) );
  NOR3xp33_ASAP7_75t_L U24 ( .A(n15), .B(n16), .C(n14), .Y(N9) );
  AND2x2_ASAP7_75t_L U25 ( .A(n10), .B(n7), .Y(N8) );
  NOR3xp33_ASAP7_75t_L U26 ( .A(n7), .B(n16), .C(n5), .Y(N10) );
endmodule

