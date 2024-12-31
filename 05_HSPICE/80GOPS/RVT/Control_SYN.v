/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP1-1
// Date      : Tue Dec 31 00:20:20 2024
/////////////////////////////////////////////////////////////


module Control ( clk, rst_n, out_valid );
  input clk, rst_n;
  output out_valid;
  wire   N8, N9, N10, N12, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16;

  ASYNC_DFFHx1_ASAP7_75t_R counter_reg_0_ ( .D(N8), .CLK(clk), .RESET(n4), 
        .SET(n13), .QN(n7) );
  ASYNC_DFFHx1_ASAP7_75t_R counter_reg_2_ ( .D(N10), .CLK(clk), .RESET(n4), 
        .SET(n8), .QN(n6) );
  ASYNC_DFFHx1_ASAP7_75t_R counter_reg_1_ ( .D(N9), .CLK(clk), .RESET(n4), 
        .SET(n12), .QN(n5) );
  ASYNC_DFFHx1_ASAP7_75t_R out_valid_reg ( .D(N12), .CLK(clk), .RESET(n4), 
        .SET(n11), .QN(n3) );
  BUFx5_ASAP7_75t_R U12 ( .A(n6), .Y(n10) );
  NAND2xp33_ASAP7_75t_R U13 ( .A(n7), .B(n5), .Y(n9) );
  AND2x2_ASAP7_75t_R U14 ( .A(n7), .B(n5), .Y(n14) );
  INVx2_ASAP7_75t_R U15 ( .A(n10), .Y(n16) );
  INVx8_ASAP7_75t_R U16 ( .A(rst_n), .Y(n11) );
  INVx8_ASAP7_75t_R U17 ( .A(rst_n), .Y(n12) );
  INVx8_ASAP7_75t_R U18 ( .A(rst_n), .Y(n13) );
  INVx8_ASAP7_75t_R U19 ( .A(rst_n), .Y(n8) );
  TIELOx1_ASAP7_75t_R U20 ( .L(n4) );
  INVxp33_ASAP7_75t_R U21 ( .A(n3), .Y(out_valid) );
  NOR2xp33_ASAP7_75t_R U22 ( .A(n10), .B(n9), .Y(N12) );
  NOR2xp33_ASAP7_75t_R U23 ( .A(n7), .B(n5), .Y(n15) );
  NOR3xp33_ASAP7_75t_R U24 ( .A(n15), .B(n16), .C(n14), .Y(N9) );
  AND2x2_ASAP7_75t_R U25 ( .A(n10), .B(n7), .Y(N8) );
  NOR3xp33_ASAP7_75t_R U26 ( .A(n7), .B(n16), .C(n5), .Y(N10) );
endmodule

