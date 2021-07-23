/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP3
// Date      : Wed Jul 21 14:56:18 2021
/////////////////////////////////////////////////////////////


module mas_mul_vedic_2x2_0 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n2, n3, n4, n5;

  XOR2X1 U8 ( .IN1(n4), .IN2(n5), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n3), .IN2(n2), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n2), .QN(res[2]) );
  INVX0 U3 ( .INP(n3), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n3) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n4) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n2) );
endmodule


module mas_ripple_carry_adder_4b_0 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  XOR2X1 U1 ( .IN1(n1), .IN2(n2), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n5), .IN2(n6), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n7), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n4), .IN4(n3), .Q(n1) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n6), .IN4(n5), .Q(n3) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n7), .Q(n5) );
  XOR2X1 U10 ( .IN1(in2[1]), .IN2(in1[1]), .Q(n6) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n4) );
  XOR2X1 U2 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n2) );
  XOR2X1 U5 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n7) );
  XOR2X2 U9 ( .IN1(n3), .IN2(n4), .Q(res[2]) );
  AO22X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n2), .IN4(n1), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_358 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15;

  XOR2X1 U1 ( .IN1(n15), .IN2(n14), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n11), .IN2(n10), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n9), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n8), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n13), .IN4(n12), .Q(n15) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n11), .Q(n13) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n9), .Q(n11) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n9) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n10) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n12) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n14) );
  DELLN1X2 U2 ( .INP(n15), .Z(n8) );
  XOR2X2 U13 ( .IN1(n13), .IN2(n12), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_4b_359 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15;

  XOR2X1 U1 ( .IN1(n15), .IN2(n14), .Q(res[3]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n9), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n13), .Q(n15) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n11), .Q(n13) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n9), .Q(n11) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n9) );
  XOR2X1 U10 ( .IN1(in2[1]), .IN2(in1[1]), .Q(n10) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n12) );
  XOR2X1 U12 ( .IN1(in2[3]), .IN2(in1[3]), .Q(n14) );
  AO22X2 U2 ( .IN1(in2[3]), .IN2(in1[3]), .IN3(n15), .IN4(n14), .Q(cout) );
  DELLN2X2 U3 ( .INP(n11), .Z(n8) );
  XOR2X1 U5 ( .IN1(n8), .IN2(n10), .Q(res[1]) );
  XOR2X2 U13 ( .IN1(n13), .IN2(n12), .Q(res[2]) );
endmodule


module mas_mul_vedic_2x2_253 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_254 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n12, n1, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n7), .IN2(n8), .Q(res[1]) );
  INVX0 U1 ( .INP(n12), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(res[3]) );
  NOR2X0 U3 ( .IN1(n9), .IN2(n10), .QN(n12) );
  INVX0 U4 ( .INP(n9), .ZN(res[0]) );
  NAND2X0 U5 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n7) );
  NAND2X0 U7 ( .IN1(in1[0]), .IN2(in2[0]), .QN(n9) );
  NAND2X0 U9 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n10) );
  NOR2X0 U10 ( .IN1(n12), .IN2(n10), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_255 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n14, n1, n6, n7, n9, n10, n11, n12;

  XOR2X1 U8 ( .IN1(n9), .IN2(n10), .Q(res[1]) );
  INVX0 U1 ( .INP(in2[0]), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(n6) );
  INVX0 U3 ( .INP(n14), .ZN(n7) );
  INVX0 U4 ( .INP(n7), .ZN(res[3]) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n9) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(n6), .QN(n10) );
  INVX0 U7 ( .INP(n11), .ZN(res[0]) );
  NAND2X0 U9 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n12) );
  NAND2X0 U10 ( .IN1(n6), .IN2(in1[0]), .QN(n11) );
  NOR2X0 U11 ( .IN1(n11), .IN2(n12), .QN(n14) );
  NOR2X0 U12 ( .IN1(n14), .IN2(n12), .QN(res[2]) );
endmodule


module mas_mul_vedic_4x4_0 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_, n1, n2, n3;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_0 mulv_2b_0 ( .in1(in1[1:0]), .in2({in2[1], n3}), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_255 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_254 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_253 mulv_2b_3 ( .in1({n1, in1[2]}), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_0 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_359 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_358 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
  NBUFFX2 U3 ( .INP(in1[3]), .Z(n1) );
  INVX0 U4 ( .INP(in2[0]), .ZN(n2) );
  INVX0 U5 ( .INP(n2), .ZN(n3) );
endmodule


module mas_ripple_carry_adder_4b_347 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_348 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_0 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_348 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_347 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_349 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_350 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_351 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_241 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_242 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_243 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_244 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_61 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_244 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_243 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_242 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_241 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_351 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_350 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_349 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_352 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(n8), .IN2(cin), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_353 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_4b_354 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_245 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_246 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  INVX0 U1 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U6 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U7 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_247 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_248 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_62 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_248 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_247 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_246 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_245 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_354 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_353 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_352 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_355 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_356 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n13), .IN2(n14), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in2[3]), .IN2(in1[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_357 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in2[0]), .IN2(in1[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U10 ( .IN1(in2[1]), .IN2(in1[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U9 ( .IN1(in2[0]), .IN2(in1[0]), .Q(n8) );
  AO22X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_249 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_250 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  INVX0 U6 ( .INP(n6), .ZN(res[0]) );
  NOR2X0 U7 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
endmodule


module mas_mul_vedic_2x2_251 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n6, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n7), .IN2(n8), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(n6), .IN2(in1[0]), .QN(n7) );
  INVX0 U2 ( .INP(in2[1]), .ZN(n1) );
  INVX0 U3 ( .INP(n1), .ZN(n6) );
  NOR2X0 U4 ( .IN1(n9), .IN2(n10), .QN(res[3]) );
  NOR2X0 U5 ( .IN1(res[3]), .IN2(n10), .QN(res[2]) );
  INVX0 U6 ( .INP(n9), .ZN(res[0]) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n9) );
  NAND2X0 U9 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  NAND2X0 U10 ( .IN1(n6), .IN2(in1[1]), .QN(n10) );
endmodule


module mas_mul_vedic_2x2_252 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
endmodule


module mas_mul_vedic_4x4_63 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_, n1, n2;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_252 mulv_2b_0 ( .in1(in1[1:0]), .in2({n2, in2[0]}), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_251 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_250 mulv_2b_2 ( .in1(in1[3:2]), .in2({n2, in2[0]}), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_249 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_357 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_356 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_355 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
  INVX0 U3 ( .INP(n1), .ZN(n2) );
  INVX0 U4 ( .INP(in2[1]), .ZN(n1) );
endmodule


module mas_ripple_carry_adder_4b_343 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15;

  XOR2X1 U1 ( .IN1(n15), .IN2(n14), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n13), .IN2(n12), .Q(res[2]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n8), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n13), .Q(n15) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n11), .IN4(n10), .Q(n13) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n9), .Q(n11) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n9) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n10) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n12) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n14) );
  DELLN1X2 U3 ( .INP(n15), .Z(n8) );
  XOR2X2 U4 ( .IN1(n11), .IN2(n10), .Q(res[1]) );
  XOR2X2 U13 ( .IN1(cin), .IN2(n9), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_344 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X2 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_82 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_344 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_343 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_345 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2X1 U1 ( .IN1(n16), .IN2(n15), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n12), .IN2(n11), .Q(res[1]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n16), .IN4(n15), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n14), .IN4(n13), .Q(n16) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n10) );
  XOR2X1 U10 ( .IN1(in2[1]), .IN2(in1[1]), .Q(n11) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n13) );
  XOR2X1 U12 ( .IN1(in2[3]), .IN2(in1[3]), .Q(n15) );
  XOR2X1 U2 ( .IN1(n9), .IN2(n10), .Q(res[0]) );
  INVX0 U4 ( .INP(cin), .ZN(n8) );
  INVX0 U13 ( .INP(n8), .ZN(n9) );
  XOR2X1 U14 ( .IN1(n14), .IN2(n13), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_4b_346 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  XOR2X1 U4 ( .IN1(cin), .IN2(n12), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n17), .IN4(n18), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n15), .IN4(n16), .Q(n18) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n12), .Q(n14) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n12) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n13) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n15) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n17) );
  DELLN1X2 U1 ( .INP(n17), .Z(n10) );
  XOR2X1 U2 ( .IN1(n9), .IN2(n8), .Q(res[2]) );
  DELLN1X2 U3 ( .INP(n15), .Z(n8) );
  DELLN2X2 U13 ( .INP(n16), .Z(n9) );
  XOR2X1 U14 ( .IN1(n11), .IN2(n10), .Q(res[3]) );
  DELLN2X2 U15 ( .INP(n18), .Z(n11) );
  XOR2X1 U16 ( .IN1(n14), .IN2(n13), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_8b_83 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_346 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_345 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_0 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_0 mulv_4b_0 ( .in1({n5, n17, n1, n19}), .in2({n2, n25, 
        in2[1], n13}), .res({mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_63 mulv_4b_1 ( .in1({n5, n17, n27, n19}), .in2({n4, n21, 
        n9, n7}), .res(mulv_out1) );
  mas_mul_vedic_4x4_62 mulv_4b_2 ( .in1({in1[7:6], n23, n15}), .in2({n29, n25, 
        n3, n13}), .res(mulv_out2) );
  mas_mul_vedic_4x4_61 mulv_4b_3 ( .in1({in1[7:6], n23, n15}), .in2({n4, n21, 
        n9, n7}), .res(mulv_out3) );
  mas_ripple_carry_adder_8b_0 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_83 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_82 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  INVX1 U3 ( .INP(n18), .ZN(n19) );
  INVX1 U4 ( .INP(n16), .ZN(n17) );
  INVX0 U5 ( .INP(n14), .ZN(n15) );
  INVX0 U6 ( .INP(n22), .ZN(n23) );
  INVX0 U7 ( .INP(n20), .ZN(n21) );
  INVX0 U8 ( .INP(n26), .ZN(n1) );
  INVX0 U9 ( .INP(n26), .ZN(n27) );
  INVX0 U10 ( .INP(n24), .ZN(n25) );
  INVX0 U11 ( .INP(n28), .ZN(n2) );
  INVX0 U12 ( .INP(n28), .ZN(n29) );
  NBUFFX2 U13 ( .INP(in2[1]), .Z(n3) );
  INVX0 U14 ( .INP(n10), .ZN(n4) );
  INVX0 U15 ( .INP(n11), .ZN(n5) );
  INVX0 U16 ( .INP(in2[4]), .ZN(n6) );
  INVX0 U17 ( .INP(n6), .ZN(n7) );
  INVX0 U18 ( .INP(in2[5]), .ZN(n8) );
  INVX0 U19 ( .INP(n8), .ZN(n9) );
  INVX0 U20 ( .INP(in2[7]), .ZN(n10) );
  INVX0 U21 ( .INP(in1[3]), .ZN(n11) );
  INVX0 U22 ( .INP(in2[0]), .ZN(n12) );
  INVX0 U23 ( .INP(n12), .ZN(n13) );
  INVX0 U24 ( .INP(in1[4]), .ZN(n14) );
  INVX0 U25 ( .INP(in1[2]), .ZN(n16) );
  INVX0 U26 ( .INP(in1[0]), .ZN(n18) );
  INVX0 U27 ( .INP(in2[6]), .ZN(n20) );
  INVX0 U28 ( .INP(in1[5]), .ZN(n22) );
  INVX0 U29 ( .INP(in2[2]), .ZN(n24) );
  INVX0 U30 ( .INP(in1[1]), .ZN(n26) );
  INVX0 U31 ( .INP(in2[3]), .ZN(n28) );
endmodule


module mas_ripple_carry_adder_4b_285 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X2 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_286 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_8b_71 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_286 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_285 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_287 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_288 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_72 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_288 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_287 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_0 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_72 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_71 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_4b_295 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_296 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_297 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_193 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_194 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_195 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_196 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_49 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_196 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_195 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_194 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_193 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_297 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_296 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_295 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_298 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_299 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_300 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_197 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_198 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_199 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_200 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_50 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_200 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_199 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_198 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_197 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_300 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_299 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_298 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_301 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_302 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_303 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_201 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U7 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
endmodule


module mas_mul_vedic_2x2_202 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U7 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
endmodule


module mas_mul_vedic_2x2_203 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_204 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_51 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_204 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_203 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_202 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_201 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_303 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_302 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_301 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_304 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_305 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_306 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_205 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U7 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
endmodule


module mas_mul_vedic_2x2_206 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U7 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
endmodule


module mas_mul_vedic_2x2_207 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_208 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_52 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_208 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_207 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_206 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_205 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_306 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_305 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_304 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_289 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_290 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_73 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_290 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_289 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_291 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_292 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_74 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_292 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_291 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_293 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_294 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_75 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_294 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_293 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_13 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_52 mulv_4b_0 ( .in1(in1[3:0]), .in2(in2[3:0]), .res({
        mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_51 mulv_4b_1 ( .in1(in1[3:0]), .in2(in2[7:4]), .res(
        mulv_out1) );
  mas_mul_vedic_4x4_50 mulv_4b_2 ( .in1(in1[7:4]), .in2(in2[3:0]), .res(
        mulv_out2) );
  mas_mul_vedic_4x4_49 mulv_4b_3 ( .in1(in1[7:4]), .in2(in2[7:4]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_8b_75 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_74 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_73 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
endmodule


module mas_ripple_carry_adder_4b_313 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_314 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_315 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_209 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_210 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_211 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_212 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_53 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_212 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_211 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_210 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_209 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_315 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_314 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_313 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_316 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
endmodule


module mas_ripple_carry_adder_4b_317 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_318 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_213 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_214 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n1), .IN2(n5), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  INVX0 U2 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U7 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_215 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  INVX0 U2 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  NOR2X0 U7 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
endmodule


module mas_mul_vedic_2x2_216 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_54 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_216 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_215 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_214 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_213 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_318 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_317 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_316 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_319 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_320 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_321 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_217 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U7 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
endmodule


module mas_mul_vedic_2x2_218 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U7 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
endmodule


module mas_mul_vedic_2x2_219 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_220 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_55 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_220 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_219 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_218 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_217 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_321 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_320 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_319 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_322 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_4b_323 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2X1 U1 ( .IN1(n16), .IN2(n15), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n9), .IN2(n13), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n12), .IN2(n11), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n10), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n11) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n13) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n15) );
  INVX0 U5 ( .INP(n14), .ZN(n8) );
  INVX0 U13 ( .INP(n8), .ZN(n9) );
  AO22X1 U14 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n15), .IN4(n16), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_324 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U2 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U3 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U5 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X2 U9 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  AO22X2 U12 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_221 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U7 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
endmodule


module mas_mul_vedic_2x2_222 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n12, n1, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n7), .IN2(n8), .Q(res[1]) );
  INVX0 U1 ( .INP(n12), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(res[3]) );
  NOR2X0 U3 ( .IN1(n9), .IN2(n10), .QN(n12) );
  INVX0 U4 ( .INP(n9), .ZN(res[0]) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n9) );
  NAND2X0 U7 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  NAND2X0 U9 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n10) );
  NOR2X0 U10 ( .IN1(n12), .IN2(n10), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_223 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n12, n1, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n7), .IN2(n8), .Q(res[1]) );
  INVX0 U1 ( .INP(n12), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(res[3]) );
  INVX0 U3 ( .INP(n9), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n10) );
  NOR2X0 U6 ( .IN1(n12), .IN2(n10), .QN(res[2]) );
  NOR2X0 U7 ( .IN1(n9), .IN2(n10), .QN(n12) );
  NAND2X0 U9 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n9) );
  NAND2X0 U10 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n7) );
endmodule


module mas_mul_vedic_2x2_224 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_56 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_224 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_223 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_222 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_221 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_324 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_323 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_322 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_307 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_308 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_76 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_308 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_307 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_309 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in2[0]), .IN2(in1[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_310 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  XOR2X1 U3 ( .IN1(n14), .IN2(n13), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n12), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n17), .IN4(n18), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n15), .IN4(n16), .Q(n18) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n12), .Q(n14) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n12) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n13) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n15) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n17) );
  XOR2X1 U1 ( .IN1(n11), .IN2(n15), .Q(res[2]) );
  XOR2X1 U2 ( .IN1(n9), .IN2(n17), .Q(res[3]) );
  INVX0 U13 ( .INP(n18), .ZN(n8) );
  INVX0 U14 ( .INP(n8), .ZN(n9) );
  INVX0 U15 ( .INP(n16), .ZN(n10) );
  INVX0 U16 ( .INP(n10), .ZN(n11) );
endmodule


module mas_ripple_carry_adder_8b_77 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_310 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_309 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_311 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_312 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_78 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_312 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_311 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_14 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_56 mulv_4b_0 ( .in1({in1[3], n7, n5, n6}), .in2(in2[3:0]), 
        .res({mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_55 mulv_4b_1 ( .in1({in1[3], n17, n9, n15}), .in2(in2[7:4]), .res(mulv_out1) );
  mas_mul_vedic_4x4_54 mulv_4b_2 ( .in1({n3, n1, n4, n2}), .in2(in2[3:0]), 
        .res(mulv_out2) );
  mas_mul_vedic_4x4_53 mulv_4b_3 ( .in1({n19, n11, n21, n13}), .in2(in2[7:4]), 
        .res(mulv_out3) );
  mas_ripple_carry_adder_8b_78 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_77 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_76 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  INVX0 U3 ( .INP(n10), .ZN(n1) );
  INVX0 U4 ( .INP(n10), .ZN(n11) );
  INVX0 U5 ( .INP(n12), .ZN(n2) );
  INVX0 U6 ( .INP(n12), .ZN(n13) );
  INVX0 U7 ( .INP(n18), .ZN(n3) );
  INVX0 U8 ( .INP(n18), .ZN(n19) );
  INVX0 U9 ( .INP(n20), .ZN(n4) );
  INVX0 U10 ( .INP(n20), .ZN(n21) );
  INVX0 U11 ( .INP(n8), .ZN(n5) );
  INVX0 U12 ( .INP(n14), .ZN(n6) );
  INVX0 U13 ( .INP(n14), .ZN(n15) );
  INVX0 U14 ( .INP(n16), .ZN(n7) );
  INVX0 U15 ( .INP(n16), .ZN(n17) );
  INVX0 U16 ( .INP(in1[1]), .ZN(n8) );
  INVX0 U17 ( .INP(n8), .ZN(n9) );
  INVX0 U18 ( .INP(in1[6]), .ZN(n10) );
  INVX0 U19 ( .INP(in1[4]), .ZN(n12) );
  INVX0 U20 ( .INP(in1[0]), .ZN(n14) );
  INVX0 U21 ( .INP(in1[2]), .ZN(n16) );
  INVX0 U22 ( .INP(in1[7]), .ZN(n18) );
  INVX0 U23 ( .INP(in1[5]), .ZN(n20) );
endmodule


module mas_ripple_carry_adder_4b_331 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_332 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_333 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_225 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_226 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_227 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_228 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_57 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_228 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_227 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_226 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_225 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_333 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_332 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_331 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_334 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_335 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_336 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_229 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_230 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_231 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_232 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_58 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_232 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_231 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_230 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_229 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_336 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_335 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_334 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_337 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U5 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  AO22X1 U8 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_338 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n13), .IN2(n14), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_339 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X2 U6 ( .IN1(in2[2]), .IN2(in1[2]), .IN3(n11), .IN4(n12), .Q(n14) );
endmodule


module mas_mul_vedic_2x2_233 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_234 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n1), .IN2(n5), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n7), .IN2(n6), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_235 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
endmodule


module mas_mul_vedic_2x2_236 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
endmodule


module mas_mul_vedic_4x4_59 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_236 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_235 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_234 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_233 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_339 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_338 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_337 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_340 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_341 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n13), .IN2(n14), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in2[3]), .IN2(in1[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_4b_342 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
endmodule


module mas_mul_vedic_2x2_237 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_238 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_239 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n12, n6, n8, n9, n10, n11;

  XOR2X1 U8 ( .IN1(n8), .IN2(n9), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n10), .IN2(n11), .QN(n12) );
  NAND2X1 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n8) );
  INVX0 U3 ( .INP(n10), .ZN(res[0]) );
  INVX0 U4 ( .INP(n12), .ZN(n6) );
  INVX0 U5 ( .INP(n6), .ZN(res[3]) );
  NOR2X0 U6 ( .IN1(n12), .IN2(n11), .QN(res[2]) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n10) );
  NAND2X0 U9 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n9) );
  NAND2X0 U10 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n11) );
endmodule


module mas_mul_vedic_2x2_240 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U5 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
endmodule


module mas_mul_vedic_4x4_60 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_, n1;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_240 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_239 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_238 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_237 mulv_2b_3 ( .in1(in1[3:2]), .in2({n1, in2[2]}), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_342 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_341 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_340 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
  DELLN1X2 U3 ( .INP(in2[3]), .Z(n1) );
endmodule


module mas_ripple_carry_adder_4b_325 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_326 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_8b_79 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_326 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_325 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_327 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in2[1]), .IN2(in1[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in2[3]), .IN2(in1[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n10), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
endmodule


module mas_ripple_carry_adder_4b_328 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_8b_80 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_328 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_327 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_329 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X2 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
endmodule


module mas_ripple_carry_adder_4b_330 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_81 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_330 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_329 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_15 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_60 mulv_4b_0 ( .in1(in1[3:0]), .in2({n6, n3, n22, n18}), 
        .res({mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_59 mulv_4b_1 ( .in1(in1[3:0]), .in2({n7, n5, n2, n4}), 
        .res(mulv_out1) );
  mas_mul_vedic_4x4_58 mulv_4b_2 ( .in1(in1[7:4]), .in2({n12, n10, n22, n18}), 
        .res(mulv_out2) );
  mas_mul_vedic_4x4_57 mulv_4b_3 ( .in1(in1[7:4]), .in2({n20, n16, n8, n14}), 
        .res(mulv_out3) );
  mas_ripple_carry_adder_8b_81 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_80 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_79 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  INVX0 U3 ( .INP(n17), .ZN(n18) );
  INVX0 U4 ( .INP(n21), .ZN(n22) );
  INVX0 U5 ( .INP(in2[5]), .ZN(n1) );
  INVX0 U6 ( .INP(n1), .ZN(n2) );
  INVX0 U7 ( .INP(n9), .ZN(n3) );
  INVX0 U8 ( .INP(n13), .ZN(n4) );
  INVX0 U9 ( .INP(n13), .ZN(n14) );
  INVX0 U10 ( .INP(n15), .ZN(n5) );
  INVX0 U11 ( .INP(n15), .ZN(n16) );
  INVX0 U12 ( .INP(n11), .ZN(n6) );
  INVX0 U13 ( .INP(n11), .ZN(n12) );
  INVX0 U14 ( .INP(n19), .ZN(n7) );
  DELLN2X2 U15 ( .INP(n2), .Z(n8) );
  INVX0 U16 ( .INP(in2[2]), .ZN(n9) );
  INVX0 U17 ( .INP(n9), .ZN(n10) );
  INVX0 U18 ( .INP(in2[3]), .ZN(n11) );
  INVX0 U19 ( .INP(in2[4]), .ZN(n13) );
  INVX0 U20 ( .INP(in2[6]), .ZN(n15) );
  INVX0 U21 ( .INP(in2[0]), .ZN(n17) );
  INVX0 U22 ( .INP(in2[7]), .ZN(n19) );
  INVX0 U23 ( .INP(n19), .ZN(n20) );
  INVX0 U24 ( .INP(in2[1]), .ZN(n21) );
endmodule


module mas_ripple_carry_adder_4b_277 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15;

  XOR2X1 U1 ( .IN1(n15), .IN2(n14), .Q(res[3]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n15), .Q(cout) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n8), .Q(n13) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n9), .Q(n11) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n9) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n10) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n12) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n14) );
  XOR2X2 U2 ( .IN1(n11), .IN2(n10), .Q(res[1]) );
  XOR2X2 U3 ( .IN1(cin), .IN2(n9), .Q(res[0]) );
  DELLN1X2 U4 ( .INP(n11), .Z(n8) );
  XOR2X1 U6 ( .IN1(n13), .IN2(n12), .Q(res[2]) );
  AO22X1 U13 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n13), .Q(n15) );
endmodule


module mas_ripple_carry_adder_4b_278 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n18), .IN4(n17), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n16), .IN4(n15), .Q(n18) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n14), .IN4(n13), .Q(n16) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n12), .Q(n14) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n12) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n13) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n15) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n17) );
  XOR2X1 U1 ( .IN1(n11), .IN2(n17), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n10), .IN2(n13), .Q(res[1]) );
  XOR2X1 U3 ( .IN1(n8), .IN2(n12), .Q(res[0]) );
  DELLN1X2 U4 ( .INP(cin), .Z(n8) );
  INVX0 U13 ( .INP(n14), .ZN(n9) );
  INVX0 U14 ( .INP(n9), .ZN(n10) );
  DELLN1X2 U15 ( .INP(n18), .Z(n11) );
  XOR2X2 U16 ( .IN1(n16), .IN2(n15), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_67 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_278 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_277 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_279 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n17), .IN4(n18), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n15), .IN4(n16), .Q(n18) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n12), .Q(n14) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n12) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n13) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n15) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n17) );
  XOR2X2 U1 ( .IN1(n17), .IN2(n18), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n11), .IN2(n9), .Q(res[0]) );
  XOR2X1 U3 ( .IN1(n14), .IN2(n13), .Q(res[1]) );
  INVX0 U4 ( .INP(n12), .ZN(n8) );
  INVX0 U13 ( .INP(n8), .ZN(n9) );
  INVX0 U14 ( .INP(cin), .ZN(n10) );
  INVX0 U15 ( .INP(n10), .ZN(n11) );
  XOR2X2 U16 ( .IN1(n16), .IN2(n15), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_4b_280 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2X1 U4 ( .IN1(cin), .IN2(n10), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n16), .IN4(n15), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n11) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n13) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n15) );
  XOR2X1 U1 ( .IN1(n9), .IN2(n13), .Q(res[2]) );
  XOR2X1 U2 ( .IN1(n16), .IN2(n15), .Q(res[3]) );
  INVX0 U3 ( .INP(n14), .ZN(n8) );
  INVX0 U13 ( .INP(n8), .ZN(n9) );
  XOR2X2 U14 ( .IN1(n12), .IN2(n11), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_8b_68 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_280 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_279 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_16 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_68 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_67 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_4b_281 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in2[0]), .IN2(in1[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in2[3]), .IN2(in1[3]), .Q(n13) );
  XOR2X2 U2 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X2 U3 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  XOR2X1 U4 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_282 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n16), .IN4(n15), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n14), .IN4(n13), .Q(n16) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n10) );
  XOR2X1 U10 ( .IN1(in2[1]), .IN2(in1[1]), .Q(n11) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n13) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n15) );
  XOR2X2 U1 ( .IN1(n16), .IN2(n15), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n9), .IN2(n10), .Q(res[0]) );
  INVX0 U3 ( .INP(cin), .ZN(n8) );
  INVX0 U4 ( .INP(n8), .ZN(n9) );
  XOR2X2 U13 ( .IN1(n14), .IN2(n13), .Q(res[2]) );
  XOR2X2 U14 ( .IN1(n12), .IN2(n11), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_8b_69 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_282 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_281 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_283 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n21), .IN4(n22), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n19), .IN4(n20), .Q(n22) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n17), .IN4(n18), .Q(n20) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n16), .Q(n18) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n16) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n17) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n19) );
  XOR2X1 U1 ( .IN1(n10), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n15), .IN2(n9), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n12), .IN2(n17), .Q(res[1]) );
  DELLN1X2 U4 ( .INP(n21), .Z(n13) );
  INVX0 U12 ( .INP(n19), .ZN(n8) );
  INVX0 U13 ( .INP(n8), .ZN(n9) );
  DELLN2X2 U14 ( .INP(n22), .Z(n10) );
  INVX0 U15 ( .INP(n18), .ZN(n11) );
  INVX0 U16 ( .INP(n11), .ZN(n12) );
  XOR2X1 U17 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n21) );
  INVX0 U18 ( .INP(n20), .ZN(n14) );
  INVX0 U19 ( .INP(n14), .ZN(n15) );
  XOR2X1 U20 ( .IN1(cin), .IN2(n16), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_284 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U2 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
endmodule


module mas_ripple_carry_adder_8b_70 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_284 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_283 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_17 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_70 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_69 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_mul_vedic_16x16_0 ( in1, in2, res );
  input [15:0] in1;
  input [15:0] in2;
  output [31:0] res;
  wire   n_13_net__8_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68;
  wire   [15:8] mulv_out0;
  wire   [15:0] mulv_out1;
  wire   [15:0] mulv_out2;
  wire   [15:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [15:0] rca_out0;
  wire   [15:8] rca_out1;

  mas_mul_vedic_8x8_0 mulv_8b_0 ( .in1({n3, n2, in1[5:0]}), .in2({in2[7:2], n4, 
        in2[0]}), .res({mulv_out0, res[7:0]}) );
  mas_mul_vedic_8x8_15 mulv_8b_1 ( .in1({n51, n49, n47, n45, n43, n41, n39, 
        n37}), .in2({n35, n33, n31, n29, n27, n25, in2[9:8]}), .res(mulv_out1)
         );
  mas_mul_vedic_8x8_14 mulv_8b_2 ( .in1({n67, n65, n63, n61, n1, n57, n55, n53}), .in2({n19, n17, n15, n13, n11, n9, n7, n5}), .res(mulv_out2) );
  mas_mul_vedic_8x8_13 mulv_8b_3 ( .in1({n67, n65, n63, n61, n59, n57, n55, 
        n53}), .in2({n35, n33, n31, n29, n27, n25, n23, n21}), .res(mulv_out3)
         );
  mas_ripple_carry_adder_16b_0 add_16b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_16b_17 add_16b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(
        rca_cout[1]), .res({rca_out1, res[15:8]}) );
  mas_ripple_carry_adder_16b_16 add_16b_2 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, n_13_net__8_, rca_out1}), .in2(mulv_out3), .cin(1'b0), 
        .res(res[31:16]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_13_net__8_) );
  INVX1 U3 ( .INP(n28), .ZN(n27) );
  INVX0 U4 ( .INP(n38), .ZN(n37) );
  INVX0 U5 ( .INP(n40), .ZN(n39) );
  INVX0 U6 ( .INP(n46), .ZN(n45) );
  INVX0 U7 ( .INP(n48), .ZN(n47) );
  INVX0 U8 ( .INP(n54), .ZN(n53) );
  INVX0 U9 ( .INP(n30), .ZN(n29) );
  INVX0 U10 ( .INP(n62), .ZN(n61) );
  INVX0 U11 ( .INP(n64), .ZN(n63) );
  INVX0 U12 ( .INP(n42), .ZN(n41) );
  INVX0 U13 ( .INP(n10), .ZN(n9) );
  INVX0 U14 ( .INP(n12), .ZN(n11) );
  INVX0 U15 ( .INP(n18), .ZN(n17) );
  INVX0 U16 ( .INP(n58), .ZN(n57) );
  INVX0 U17 ( .INP(n26), .ZN(n25) );
  INVX0 U18 ( .INP(n34), .ZN(n33) );
  INVX0 U19 ( .INP(n66), .ZN(n65) );
  INVX0 U20 ( .INP(n36), .ZN(n35) );
  INVX0 U21 ( .INP(n68), .ZN(n67) );
  INVX0 U22 ( .INP(n14), .ZN(n13) );
  INVX0 U23 ( .INP(n16), .ZN(n15) );
  INVX0 U24 ( .INP(n20), .ZN(n19) );
  INVX0 U25 ( .INP(n32), .ZN(n31) );
  INVX0 U26 ( .INP(n44), .ZN(n43) );
  INVX0 U27 ( .INP(n6), .ZN(n5) );
  INVX0 U28 ( .INP(n22), .ZN(n21) );
  INVX0 U29 ( .INP(n24), .ZN(n23) );
  INVX0 U30 ( .INP(n60), .ZN(n1) );
  INVX0 U31 ( .INP(n60), .ZN(n59) );
  INVX0 U32 ( .INP(n50), .ZN(n2) );
  INVX0 U33 ( .INP(n50), .ZN(n49) );
  INVX0 U34 ( .INP(n52), .ZN(n3) );
  INVX0 U35 ( .INP(n52), .ZN(n51) );
  INVX0 U36 ( .INP(n8), .ZN(n4) );
  INVX0 U37 ( .INP(n8), .ZN(n7) );
  INVX1 U38 ( .INP(n56), .ZN(n55) );
  INVX0 U39 ( .INP(in2[9]), .ZN(n24) );
  INVX0 U40 ( .INP(in2[11]), .ZN(n28) );
  INVX0 U41 ( .INP(in2[15]), .ZN(n36) );
  INVX0 U42 ( .INP(in2[13]), .ZN(n32) );
  INVX0 U43 ( .INP(in2[3]), .ZN(n12) );
  INVX0 U44 ( .INP(in2[12]), .ZN(n30) );
  INVX0 U45 ( .INP(in2[14]), .ZN(n34) );
  INVX0 U46 ( .INP(in2[0]), .ZN(n6) );
  INVX0 U47 ( .INP(in2[2]), .ZN(n10) );
  INVX0 U48 ( .INP(in2[8]), .ZN(n22) );
  INVX0 U49 ( .INP(in2[10]), .ZN(n26) );
  INVX0 U50 ( .INP(in1[13]), .ZN(n64) );
  INVX0 U51 ( .INP(in1[11]), .ZN(n60) );
  INVX0 U52 ( .INP(in2[5]), .ZN(n16) );
  INVX0 U53 ( .INP(in2[7]), .ZN(n20) );
  INVX0 U54 ( .INP(in2[1]), .ZN(n8) );
  INVX0 U55 ( .INP(in1[8]), .ZN(n54) );
  INVX0 U56 ( .INP(in1[12]), .ZN(n62) );
  INVX0 U57 ( .INP(in1[1]), .ZN(n40) );
  INVX0 U58 ( .INP(in1[15]), .ZN(n68) );
  INVX0 U59 ( .INP(in1[3]), .ZN(n44) );
  INVX0 U60 ( .INP(in1[9]), .ZN(n56) );
  INVX0 U61 ( .INP(in1[14]), .ZN(n66) );
  INVX0 U62 ( .INP(in1[0]), .ZN(n38) );
  INVX0 U63 ( .INP(in1[10]), .ZN(n58) );
  INVX0 U64 ( .INP(in1[7]), .ZN(n52) );
  INVX0 U65 ( .INP(in2[4]), .ZN(n14) );
  INVX0 U66 ( .INP(in2[6]), .ZN(n18) );
  INVX0 U67 ( .INP(in1[5]), .ZN(n48) );
  INVX0 U68 ( .INP(in1[6]), .ZN(n50) );
  INVX0 U69 ( .INP(in1[4]), .ZN(n46) );
  INVX0 U70 ( .INP(in1[2]), .ZN(n42) );
endmodule


module mas_ripple_carry_adder_4b_17 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;

  AO22X1 U5 ( .IN1(n9), .IN2(in2[3]), .IN3(n15), .IN4(n16), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n14), .IN4(n13), .Q(n16) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n10), .Q(n12) );
  INVX0 U1 ( .INP(in1[3]), .ZN(n8) );
  INVX0 U2 ( .INP(n8), .ZN(n9) );
  XOR2X1 U3 ( .IN1(n9), .IN2(in2[3]), .Q(n15) );
  XOR2X1 U4 ( .IN1(n16), .IN2(n15), .Q(res[3]) );
  XOR2X2 U9 ( .IN1(n12), .IN2(n11), .Q(res[1]) );
  XOR2X2 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n11) );
  XOR2X2 U11 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n10) );
  XOR2X1 U12 ( .IN1(cin), .IN2(n10), .Q(res[0]) );
  XOR2X2 U13 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n13) );
  XOR2X2 U14 ( .IN1(n14), .IN2(n13), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_4b_18 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X2 U1 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X2 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U3 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U4 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X2 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X2 U10 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X2 U11 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X2 U12 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_8b_9 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_18 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_17 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_19 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n17), .IN4(n18), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n16), .IN4(n15), .Q(n18) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n12), .Q(n14) );
  XOR2X1 U1 ( .IN1(n9), .IN2(n13), .Q(res[1]) );
  INVX0 U2 ( .INP(n14), .ZN(n8) );
  INVX0 U3 ( .INP(n8), .ZN(n9) );
  INVX0 U4 ( .INP(n16), .ZN(n10) );
  INVX0 U9 ( .INP(n10), .ZN(n11) );
  XOR2X1 U10 ( .IN1(n11), .IN2(n15), .Q(res[2]) );
  XOR2X2 U11 ( .IN1(cin), .IN2(n12), .Q(res[0]) );
  XOR2X2 U12 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n15) );
  XOR2X2 U13 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n17) );
  XOR2X2 U14 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n12) );
  XOR2X2 U15 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n13) );
  XOR2X1 U16 ( .IN1(n17), .IN2(n18), .Q(res[3]) );
endmodule


module mas_ripple_carry_adder_4b_20 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X2 U1 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U2 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X2 U3 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X2 U9 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U10 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U11 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X2 U12 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
endmodule


module mas_ripple_carry_adder_8b_10 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_20 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_19 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_5 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_10 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_9 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), 
        .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_4b_21 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_22 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_11 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_22 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_21 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_23 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_24 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_12 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_24 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_23 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_6 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_12 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_11 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_32b_0 ( in1, in2, cin, cout, res );
  input [31:0] in1;
  input [31:0] in2;
  output [31:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_16b_6 rca0 ( .in1(in1[15:0]), .in2(in2[15:0]), .cin(
        cin), .cout(c), .res(res[15:0]) );
  mas_ripple_carry_adder_16b_5 rca1 ( .in1(in1[31:16]), .in2(in2[31:16]), 
        .cin(c), .cout(cout), .res(res[31:16]) );
endmodule


module mas_ripple_carry_adder_4b_43 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_44 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_45 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_1 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_2 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_3 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_4 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_1 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_4 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_3 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_2 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_1 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_45 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_44 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_43 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_46 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_47 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_48 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_5 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_6 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_7 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_8 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_2 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_8 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_7 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_6 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_5 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_48 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_47 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_46 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_49 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_50 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_51 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_9 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_10 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_11 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_12 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_3 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_12 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_11 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_10 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_9 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_51 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_50 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_49 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_52 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_53 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_54 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_13 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_14 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_15 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_16 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_4 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_16 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_15 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_14 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_13 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_54 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_53 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_52 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_37 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_38 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_19 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_38 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_37 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_39 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_40 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_20 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_40 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_39 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_41 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_42 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_21 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_42 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_41 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_1 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_4 mulv_4b_0 ( .in1(in1[3:0]), .in2(in2[3:0]), .res({
        mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_3 mulv_4b_1 ( .in1(in1[3:0]), .in2(in2[7:4]), .res(
        mulv_out1) );
  mas_mul_vedic_4x4_2 mulv_4b_2 ( .in1(in1[7:4]), .in2(in2[3:0]), .res(
        mulv_out2) );
  mas_mul_vedic_4x4_1 mulv_4b_3 ( .in1(in1[7:4]), .in2(in2[7:4]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_8b_21 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_20 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_19 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
endmodule


module mas_ripple_carry_adder_4b_61 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_62 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_63 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_17 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_18 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_19 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_20 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_5 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_20 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_19 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_18 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_17 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_63 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_62 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_61 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_64 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_65 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_66 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n11), .IN2(n12), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
endmodule


module mas_mul_vedic_2x2_21 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_22 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NAND2X0 U2 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_23 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_24 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_6 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_24 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_23 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_22 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_21 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_66 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_65 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_64 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_67 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_68 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_69 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_25 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_26 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_27 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_28 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_7 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_28 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_27 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_26 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_25 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_69 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_68 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_67 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_70 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n10), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_71 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_72 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_29 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_30 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_31 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_32 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_8 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_32 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_31 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_30 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_29 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_72 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_71 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_70 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_55 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_56 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_22 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_56 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_55 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_57 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(n8), .IN2(cin), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_58 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_23 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_58 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_57 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_59 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_60 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_24 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_60 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_59 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_2 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_8 mulv_4b_0 ( .in1({in1[3], n5, in1[1], n4}), .in2(
        in2[3:0]), .res({mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_7 mulv_4b_1 ( .in1({in1[3], n5, n7, n4}), .in2(in2[7:4]), 
        .res(mulv_out1) );
  mas_mul_vedic_4x4_6 mulv_4b_2 ( .in1(in1[7:4]), .in2(in2[3:0]), .res(
        mulv_out2) );
  mas_mul_vedic_4x4_5 mulv_4b_3 ( .in1({n6, n2, n3, n1}), .in2(in2[7:4]), 
        .res(mulv_out3) );
  mas_ripple_carry_adder_8b_24 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_23 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_22 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  NBUFFX2 U3 ( .INP(in1[4]), .Z(n1) );
  NBUFFX2 U4 ( .INP(in1[6]), .Z(n2) );
  NBUFFX2 U5 ( .INP(in1[5]), .Z(n3) );
  NBUFFX2 U6 ( .INP(in1[0]), .Z(n4) );
  NBUFFX2 U7 ( .INP(in1[2]), .Z(n5) );
  NBUFFX2 U8 ( .INP(in1[7]), .Z(n6) );
  NBUFFX2 U9 ( .INP(in1[1]), .Z(n7) );
endmodule


module mas_ripple_carry_adder_4b_79 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_80 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_81 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_33 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_34 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_35 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_36 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_9 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_36 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_35 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_34 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_33 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_81 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_80 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_79 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_82 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_83 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_84 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_37 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_38 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_39 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_40 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_10 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_40 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_39 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_38 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_37 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_84 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_83 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_82 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_85 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(n8), .IN2(cin), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_86 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_87 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in2[0]), .IN2(in1[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_41 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_42 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_43 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_44 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_11 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_44 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_43 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_42 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_41 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_87 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_86 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_85 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_88 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_89 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_90 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_45 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_46 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n1), .IN2(n5), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_47 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_48 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_12 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_48 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_47 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_46 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_45 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_90 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_89 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_88 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_73 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_74 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_25 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_74 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_73 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_75 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_76 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_26 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_76 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_75 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_77 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_78 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_27 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_78 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_77 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_3 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_12 mulv_4b_0 ( .in1(in1[3:0]), .in2(in2[3:0]), .res({
        mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_11 mulv_4b_1 ( .in1(in1[3:0]), .in2(in2[7:4]), .res(
        mulv_out1) );
  mas_mul_vedic_4x4_10 mulv_4b_2 ( .in1(in1[7:4]), .in2({n7, n3, n8, n4}), 
        .res(mulv_out2) );
  mas_mul_vedic_4x4_9 mulv_4b_3 ( .in1(in1[7:4]), .in2({n5, n2, n6, n1}), 
        .res(mulv_out3) );
  mas_ripple_carry_adder_8b_27 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_26 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_25 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  NBUFFX2 U3 ( .INP(in2[4]), .Z(n1) );
  NBUFFX2 U4 ( .INP(in2[6]), .Z(n2) );
  NBUFFX2 U5 ( .INP(in2[2]), .Z(n3) );
  NBUFFX2 U6 ( .INP(in2[0]), .Z(n4) );
  NBUFFX2 U7 ( .INP(in2[7]), .Z(n5) );
  NBUFFX2 U8 ( .INP(in2[5]), .Z(n6) );
  NBUFFX2 U9 ( .INP(in2[3]), .Z(n7) );
  NBUFFX2 U10 ( .INP(in2[1]), .Z(n8) );
endmodule


module mas_ripple_carry_adder_4b_97 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_98 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_99 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_49 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_50 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_51 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_52 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_13 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_52 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_51 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_50 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_49 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_99 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_98 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), .in2(
        rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, res[3:2]})
         );
  mas_ripple_carry_adder_4b_97 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_100 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_101 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_102 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n11), .IN2(n12), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_53 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_54 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_55 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_56 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U3 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_14 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_56 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_55 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_54 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_53 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_102 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_101 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_100 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_103 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_104 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_105 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_57 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NOR2X0 U6 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U7 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_58 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_59 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n1), .IN2(n5), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_60 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_15 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_60 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_59 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_58 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_57 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_105 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_104 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_103 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_106 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n10), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_107 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_108 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_61 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_62 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n11, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n7), .IN2(n8), .Q(res[1]) );
  INVX0 U1 ( .INP(n9), .ZN(res[0]) );
  NOR2X0 U2 ( .IN1(n9), .IN2(n10), .QN(res[3]) );
  NAND2X0 U3 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n9) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n7) );
  NAND2X0 U5 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n10) );
  NOR2X0 U7 ( .IN1(n9), .IN2(n10), .QN(n11) );
  NOR2X0 U9 ( .IN1(n11), .IN2(n10), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_63 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n11, n6, n7, n8, n9;

  XOR2X1 U8 ( .IN1(n7), .IN2(n6), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n8), .IN2(n9), .QN(res[3]) );
  NAND2X0 U2 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n8) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n7) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n9) );
  NOR2X0 U6 ( .IN1(n8), .IN2(n9), .QN(n11) );
  NOR2X0 U7 ( .IN1(n11), .IN2(n9), .QN(res[2]) );
  INVX0 U9 ( .INP(n8), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_64 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_4x4_16 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_64 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_63 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_62 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_61 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_108 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_107 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_106 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_91 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_92 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_28 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_92 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_91 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_93 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_94 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_29 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_94 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_93 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_95 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n10), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_96 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_30 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_96 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_95 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_4 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_16 mulv_4b_0 ( .in1({n12, in1[2:0]}), .in2(in2[3:0]), 
        .res({mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_15 mulv_4b_1 ( .in1({n12, n4, n9, n3}), .in2(in2[7:4]), 
        .res(mulv_out1) );
  mas_mul_vedic_4x4_14 mulv_4b_2 ( .in1({in1[7:6], n8, n2}), .in2({n15, n10, 
        n16, n11}), .res(mulv_out2) );
  mas_mul_vedic_4x4_13 mulv_4b_3 ( .in1({n7, n1, n8, n2}), .in2({n13, n6, n14, 
        n5}), .res(mulv_out3) );
  mas_ripple_carry_adder_8b_30 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_29 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_28 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  NBUFFX2 U3 ( .INP(in1[6]), .Z(n1) );
  NBUFFX2 U4 ( .INP(in1[4]), .Z(n2) );
  NBUFFX2 U5 ( .INP(in1[0]), .Z(n3) );
  NBUFFX2 U6 ( .INP(in1[2]), .Z(n4) );
  NBUFFX2 U7 ( .INP(in2[4]), .Z(n5) );
  NBUFFX2 U8 ( .INP(in2[6]), .Z(n6) );
  NBUFFX2 U9 ( .INP(in1[7]), .Z(n7) );
  NBUFFX2 U10 ( .INP(in1[5]), .Z(n8) );
  NBUFFX2 U11 ( .INP(in1[1]), .Z(n9) );
  NBUFFX2 U12 ( .INP(in2[2]), .Z(n10) );
  NBUFFX2 U13 ( .INP(in2[0]), .Z(n11) );
  NBUFFX2 U14 ( .INP(in1[3]), .Z(n12) );
  NBUFFX2 U15 ( .INP(in2[7]), .Z(n13) );
  NBUFFX2 U16 ( .INP(in2[5]), .Z(n14) );
  NBUFFX2 U17 ( .INP(in2[3]), .Z(n15) );
  NBUFFX2 U18 ( .INP(in2[1]), .Z(n16) );
endmodule


module mas_ripple_carry_adder_4b_25 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_26 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_13 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_26 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_25 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_27 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_28 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_14 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_28 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_27 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_7 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_14 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_13 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_4b_29 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n13), .IN2(n14), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_30 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_15 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_30 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_29 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_31 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_32 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U2 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
endmodule


module mas_ripple_carry_adder_8b_16 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_32 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_31 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_8 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_16 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_15 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_4b_33 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_34 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_17 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_34 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_33 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_35 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_36 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_18 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_36 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_35 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_9 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_18 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_17 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_mul_vedic_16x16_1 ( in1, in2, res );
  input [15:0] in1;
  input [15:0] in2;
  output [31:0] res;
  wire   n_13_net__8_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65;
  wire   [15:8] mulv_out0;
  wire   [15:0] mulv_out1;
  wire   [15:0] mulv_out2;
  wire   [15:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [15:0] rca_out0;
  wire   [15:8] rca_out1;

  mas_mul_vedic_8x8_4 mulv_8b_0 ( .in1({n48, n46, n44, n42, n40, n38, n36, n34}), .in2({n16, n14, n12, n10, n8, n6, n4, n2}), .res({mulv_out0, res[7:0]}) );
  mas_mul_vedic_8x8_3 mulv_8b_1 ( .in1({n48, n46, n44, n42, n40, n38, n36, n34}), .in2({n32, n30, n28, n26, n24, n22, n20, n18}), .res(mulv_out1) );
  mas_mul_vedic_8x8_2 mulv_8b_2 ( .in1({n64, n62, n60, n58, n1, n54, n52, n50}), .in2({n16, n14, n12, n10, n8, n6, n4, n2}), .res(mulv_out2) );
  mas_mul_vedic_8x8_1 mulv_8b_3 ( .in1({n64, n62, n60, n58, n56, n54, n52, n50}), .in2({n32, n30, n28, n26, n24, n22, n20, n18}), .res(mulv_out3) );
  mas_ripple_carry_adder_16b_9 add_16b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_16b_8 add_16b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(
        rca_cout[1]), .res({rca_out1, res[15:8]}) );
  mas_ripple_carry_adder_16b_7 add_16b_2 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, n_13_net__8_, rca_out1}), .in2(mulv_out3), .cin(1'b0), 
        .res(res[31:16]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_13_net__8_) );
  INVX0 U3 ( .INP(n59), .ZN(n58) );
  INVX0 U4 ( .INP(n63), .ZN(n62) );
  INVX0 U5 ( .INP(n57), .ZN(n1) );
  INVX0 U6 ( .INP(n57), .ZN(n56) );
  INVX0 U7 ( .INP(n27), .ZN(n26) );
  INVX0 U8 ( .INP(n61), .ZN(n60) );
  INVX0 U9 ( .INP(n31), .ZN(n30) );
  INVX0 U10 ( .INP(n65), .ZN(n64) );
  INVX0 U11 ( .INP(n53), .ZN(n52) );
  INVX0 U12 ( .INP(n23), .ZN(n22) );
  INVX0 U13 ( .INP(n19), .ZN(n18) );
  INVX0 U14 ( .INP(n33), .ZN(n32) );
  INVX0 U15 ( .INP(n29), .ZN(n28) );
  INVX0 U16 ( .INP(n25), .ZN(n24) );
  INVX0 U17 ( .INP(n21), .ZN(n20) );
  INVX0 U18 ( .INP(n47), .ZN(n46) );
  INVX0 U19 ( .INP(n35), .ZN(n34) );
  INVX0 U20 ( .INP(n39), .ZN(n38) );
  INVX0 U21 ( .INP(n11), .ZN(n10) );
  INVX0 U22 ( .INP(n15), .ZN(n14) );
  INVX0 U23 ( .INP(n49), .ZN(n48) );
  INVX0 U24 ( .INP(n37), .ZN(n36) );
  INVX0 U25 ( .INP(n7), .ZN(n6) );
  INVX0 U26 ( .INP(n3), .ZN(n2) );
  INVX0 U27 ( .INP(n17), .ZN(n16) );
  INVX0 U28 ( .INP(n13), .ZN(n12) );
  INVX0 U29 ( .INP(n9), .ZN(n8) );
  INVX0 U30 ( .INP(n5), .ZN(n4) );
  INVX0 U31 ( .INP(n43), .ZN(n42) );
  INVX0 U32 ( .INP(n41), .ZN(n40) );
  INVX0 U33 ( .INP(n45), .ZN(n44) );
  INVX0 U34 ( .INP(n51), .ZN(n50) );
  INVX0 U35 ( .INP(n55), .ZN(n54) );
  INVX0 U36 ( .INP(in1[2]), .ZN(n39) );
  INVX0 U37 ( .INP(in1[4]), .ZN(n43) );
  INVX0 U38 ( .INP(in2[13]), .ZN(n29) );
  INVX0 U39 ( .INP(in2[15]), .ZN(n33) );
  INVX0 U40 ( .INP(in2[1]), .ZN(n5) );
  INVX0 U41 ( .INP(in2[9]), .ZN(n21) );
  INVX0 U42 ( .INP(in2[11]), .ZN(n25) );
  INVX0 U43 ( .INP(in2[12]), .ZN(n27) );
  INVX0 U44 ( .INP(in1[1]), .ZN(n37) );
  INVX0 U45 ( .INP(in2[14]), .ZN(n31) );
  INVX0 U46 ( .INP(in1[15]), .ZN(n65) );
  INVX0 U47 ( .INP(in1[13]), .ZN(n61) );
  INVX0 U48 ( .INP(in2[0]), .ZN(n3) );
  INVX0 U49 ( .INP(in1[6]), .ZN(n47) );
  INVX0 U50 ( .INP(in2[8]), .ZN(n19) );
  INVX0 U51 ( .INP(in2[10]), .ZN(n23) );
  INVX0 U52 ( .INP(in1[11]), .ZN(n57) );
  INVX0 U53 ( .INP(in1[9]), .ZN(n53) );
  INVX0 U54 ( .INP(in2[5]), .ZN(n13) );
  INVX0 U55 ( .INP(in2[7]), .ZN(n17) );
  INVX0 U56 ( .INP(in1[14]), .ZN(n63) );
  INVX0 U57 ( .INP(in1[12]), .ZN(n59) );
  INVX0 U58 ( .INP(in1[0]), .ZN(n35) );
  INVX0 U59 ( .INP(in2[3]), .ZN(n9) );
  INVX0 U60 ( .INP(in1[10]), .ZN(n55) );
  INVX0 U61 ( .INP(in1[8]), .ZN(n51) );
  INVX0 U62 ( .INP(in2[4]), .ZN(n11) );
  INVX0 U63 ( .INP(in1[7]), .ZN(n49) );
  INVX0 U64 ( .INP(in1[5]), .ZN(n45) );
  INVX0 U65 ( .INP(in2[6]), .ZN(n15) );
  INVX0 U66 ( .INP(in1[3]), .ZN(n41) );
  INVX0 U67 ( .INP(in2[2]), .ZN(n7) );
endmodule


module mas_ripple_carry_adder_4b_127 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_128 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_129 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_65 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_66 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_67 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_68 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_17 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_68 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_67 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_66 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_65 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_129 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_128 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_127 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_130 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_131 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_132 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_69 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_70 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_71 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_72 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_18 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_72 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_71 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_70 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_69 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_132 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_131 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_130 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_133 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_134 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_135 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_73 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_74 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_75 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_76 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_19 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_76 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_75 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_74 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_73 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_135 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_134 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_133 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_136 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_137 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_138 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_77 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_78 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_79 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_80 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_20 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_80 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_79 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_78 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_77 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_138 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_137 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_136 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_121 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_122 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_37 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_122 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_121 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_123 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_124 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_38 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_124 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_123 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_125 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_126 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_39 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_126 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_125 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_5 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_20 mulv_4b_0 ( .in1(in1[3:0]), .in2(in2[3:0]), .res({
        mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_19 mulv_4b_1 ( .in1(in1[3:0]), .in2(in2[7:4]), .res(
        mulv_out1) );
  mas_mul_vedic_4x4_18 mulv_4b_2 ( .in1(in1[7:4]), .in2(in2[3:0]), .res(
        mulv_out2) );
  mas_mul_vedic_4x4_17 mulv_4b_3 ( .in1(in1[7:4]), .in2(in2[7:4]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_8b_39 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_38 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_37 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
endmodule


module mas_ripple_carry_adder_4b_145 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_146 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_147 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_81 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_82 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_83 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_84 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_21 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_84 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_83 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_82 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_81 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_147 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_146 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_145 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_148 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_149 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_150 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_85 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U4 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NOR2X0 U6 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U7 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_86 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U5 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U6 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U7 ( .INP(n6), .ZN(res[0]) );
endmodule


module mas_mul_vedic_2x2_87 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_88 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_22 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_88 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_87 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_86 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_85 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_150 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_149 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_148 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_151 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_152 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_153 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_89 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_90 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_91 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_92 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_23 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_92 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_91 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_90 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_89 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_153 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_152 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_151 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_154 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_4b_155 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in2[3]), .IN2(in1[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_156 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  AO22X2 U2 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  XOR2X1 U5 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_93 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_94 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_95 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n7), .IN2(n6), .QN(res[3]) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_96 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_24 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_96 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_95 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_94 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_93 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_156 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_155 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_154 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_139 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_140 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_40 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_140 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_139 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_141 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_142 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_41 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_142 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_141 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_143 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n10), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_144 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_42 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_144 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_143 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_6 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_24 mulv_4b_0 ( .in1({in1[3], n4, n10, n6}), .in2(in2[3:0]), 
        .res({mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_23 mulv_4b_1 ( .in1({in1[3], n4, n10, n6}), .in2(in2[7:4]), 
        .res(mulv_out1) );
  mas_mul_vedic_4x4_22 mulv_4b_2 ( .in1({in1[7:6], n8, n2}), .in2(in2[3:0]), 
        .res(mulv_out2) );
  mas_mul_vedic_4x4_21 mulv_4b_3 ( .in1({in1[7:6], n8, n2}), .in2(in2[7:4]), 
        .res(mulv_out3) );
  mas_ripple_carry_adder_8b_42 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_41 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_40 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  INVX0 U3 ( .INP(n9), .ZN(n10) );
  INVX0 U4 ( .INP(in1[4]), .ZN(n1) );
  INVX0 U5 ( .INP(n1), .ZN(n2) );
  INVX0 U6 ( .INP(in1[2]), .ZN(n3) );
  INVX0 U7 ( .INP(n3), .ZN(n4) );
  INVX0 U8 ( .INP(in1[0]), .ZN(n5) );
  INVX0 U9 ( .INP(n5), .ZN(n6) );
  INVX0 U10 ( .INP(in1[5]), .ZN(n7) );
  INVX0 U11 ( .INP(n7), .ZN(n8) );
  INVX0 U12 ( .INP(in1[1]), .ZN(n9) );
endmodule


module mas_ripple_carry_adder_4b_163 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_164 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_165 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_97 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U2 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NOR2X0 U4 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U5 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
endmodule


module mas_mul_vedic_2x2_98 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U2 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
endmodule


module mas_mul_vedic_2x2_99 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_100 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_25 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_100 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_99 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_98 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_97 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_165 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_164 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_163 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_166 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_167 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_168 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_101 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U2 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
endmodule


module mas_mul_vedic_2x2_102 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U2 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
endmodule


module mas_mul_vedic_2x2_103 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_104 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_26 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_104 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_103 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_102 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_101 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_168 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_167 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_166 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_169 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_170 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_171 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_105 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_106 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n1), .IN2(n5), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_107 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_108 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_27 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_108 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_107 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_106 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_105 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_171 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_170 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_169 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_172 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_173 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_174 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_109 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_110 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n1), .IN2(n5), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_111 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n12, n1, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n8), .IN2(n7), .Q(res[1]) );
  INVX0 U1 ( .INP(n12), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(res[3]) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n10) );
  NOR2X0 U5 ( .IN1(n9), .IN2(n10), .QN(n12) );
  NOR2X0 U6 ( .IN1(n12), .IN2(n10), .QN(res[2]) );
  INVX0 U7 ( .INP(n9), .ZN(res[0]) );
  NAND2X0 U9 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n9) );
  NAND2X0 U10 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n7) );
endmodule


module mas_mul_vedic_2x2_112 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_28 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_112 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_111 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_110 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_109 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_174 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_173 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_172 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_157 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_158 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_43 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_158 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_157 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_159 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n10), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_160 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2X1 U1 ( .IN1(n9), .IN2(n15), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n14), .IN2(n13), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n12), .IN2(n11), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n10), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n15), .IN4(n16), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n11) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n13) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n15) );
  INVX0 U13 ( .INP(n16), .ZN(n8) );
  INVX0 U14 ( .INP(n8), .ZN(n9) );
endmodule


module mas_ripple_carry_adder_8b_44 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_160 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_159 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_161 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_162 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_45 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_162 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_161 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_7 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_28 mulv_4b_0 ( .in1(in1[3:0]), .in2({n14, n8, n16, n6}), 
        .res({mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_27 mulv_4b_1 ( .in1(in1[3:0]), .in2({n10, n4, n12, n2}), 
        .res(mulv_out1) );
  mas_mul_vedic_4x4_26 mulv_4b_2 ( .in1(in1[7:4]), .in2({n14, n8, n16, n6}), 
        .res(mulv_out2) );
  mas_mul_vedic_4x4_25 mulv_4b_3 ( .in1(in1[7:4]), .in2({n10, n4, n12, n2}), 
        .res(mulv_out3) );
  mas_ripple_carry_adder_8b_45 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_44 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_43 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  INVX1 U3 ( .INP(n13), .ZN(n14) );
  INVX0 U4 ( .INP(n15), .ZN(n16) );
  INVX0 U5 ( .INP(in2[4]), .ZN(n1) );
  INVX0 U6 ( .INP(n1), .ZN(n2) );
  INVX0 U7 ( .INP(in2[6]), .ZN(n3) );
  INVX0 U8 ( .INP(n3), .ZN(n4) );
  INVX0 U9 ( .INP(in2[0]), .ZN(n5) );
  INVX0 U10 ( .INP(n5), .ZN(n6) );
  INVX0 U11 ( .INP(in2[2]), .ZN(n7) );
  INVX0 U12 ( .INP(n7), .ZN(n8) );
  INVX0 U13 ( .INP(in2[7]), .ZN(n9) );
  INVX0 U14 ( .INP(n9), .ZN(n10) );
  INVX0 U15 ( .INP(in2[5]), .ZN(n11) );
  INVX0 U16 ( .INP(n11), .ZN(n12) );
  INVX0 U17 ( .INP(in2[3]), .ZN(n13) );
  INVX0 U18 ( .INP(in2[1]), .ZN(n15) );
endmodule


module mas_ripple_carry_adder_4b_181 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_182 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_183 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_113 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U2 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
endmodule


module mas_mul_vedic_2x2_114 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U2 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
endmodule


module mas_mul_vedic_2x2_115 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_116 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_29 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_116 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_115 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_114 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_113 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_183 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_182 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_181 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_184 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_185 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_4b_186 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_117 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U2 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
endmodule


module mas_mul_vedic_2x2_118 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U4 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U7 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_119 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  INVX0 U2 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U7 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_120 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_30 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_120 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_119 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_118 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_117 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_186 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_185 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_184 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_187 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n10), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_188 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_189 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U9 ( .IN1(in2[0]), .IN2(in1[0]), .Q(n8) );
endmodule


module mas_mul_vedic_2x2_121 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_122 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_123 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_124 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_31 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_124 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_123 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_122 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_121 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_189 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_188 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_187 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_190 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U3 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U10 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_4b_191 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2X1 U1 ( .IN1(n16), .IN2(n15), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n9), .IN2(n13), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n12), .IN2(n11), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n10), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n15), .IN4(n16), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n11) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n13) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n15) );
  INVX0 U13 ( .INP(n14), .ZN(n8) );
  INVX0 U14 ( .INP(n8), .ZN(n9) );
endmodule


module mas_ripple_carry_adder_4b_192 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  AO22X2 U2 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  XOR2X1 U5 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U9 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_125 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_126 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n12, n1, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n8), .IN2(n7), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n9), .IN2(n10), .QN(n12) );
  INVX0 U2 ( .INP(n12), .ZN(n1) );
  INVX0 U3 ( .INP(n1), .ZN(res[3]) );
  INVX0 U4 ( .INP(n9), .ZN(res[0]) );
  NAND2X0 U5 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n10) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n7) );
  NAND2X0 U9 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n9) );
  NOR2X0 U10 ( .IN1(n12), .IN2(n10), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_127 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X1 U1 ( .IN1(n7), .IN2(n6), .QN(res[3]) );
  NAND2X1 U2 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  INVX0 U4 ( .INP(n6), .ZN(res[0]) );
  NOR2X0 U5 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_128 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_32 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_128 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_127 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_126 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_125 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_192 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_191 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_190 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_175 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_176 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U11 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_46 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_176 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_175 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_177 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in2[3]), .IN2(in1[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  AO22X1 U3 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  XOR2X1 U4 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U5 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_178 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U2 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X2 U3 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
endmodule


module mas_ripple_carry_adder_8b_47 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_178 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_177 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_179 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in2[0]), .IN2(in1[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_180 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_48 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_180 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_179 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_8 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_32 mulv_4b_0 ( .in1({n6, n9, n5, n7}), .in2({n13, n11, n10, 
        n33}), .res({mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_31 mulv_4b_1 ( .in1({n31, n9, n29, n19}), .in2({n37, n21, 
        n39, n23}), .res(mulv_out1) );
  mas_mul_vedic_4x4_30 mulv_4b_2 ( .in1({n3, n1, n4, n2}), .in2({n13, n35, n41, 
        n33}), .res(mulv_out2) );
  mas_mul_vedic_4x4_29 mulv_4b_3 ( .in1({n25, n15, n27, n17}), .in2({n37, n21, 
        n39, n23}), .res(mulv_out3) );
  mas_ripple_carry_adder_8b_48 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_47 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_46 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  INVX0 U3 ( .INP(n32), .ZN(n33) );
  INVX0 U4 ( .INP(n22), .ZN(n23) );
  INVX0 U5 ( .INP(n38), .ZN(n39) );
  INVX0 U6 ( .INP(n12), .ZN(n13) );
  INVX0 U7 ( .INP(n20), .ZN(n21) );
  INVX0 U8 ( .INP(n36), .ZN(n37) );
  INVX0 U9 ( .INP(n14), .ZN(n1) );
  INVX0 U10 ( .INP(n14), .ZN(n15) );
  INVX0 U11 ( .INP(n16), .ZN(n2) );
  INVX0 U12 ( .INP(n16), .ZN(n17) );
  INVX0 U13 ( .INP(n24), .ZN(n3) );
  INVX0 U14 ( .INP(n24), .ZN(n25) );
  INVX0 U15 ( .INP(n26), .ZN(n4) );
  INVX0 U16 ( .INP(n26), .ZN(n27) );
  INVX0 U17 ( .INP(n28), .ZN(n5) );
  INVX0 U18 ( .INP(n28), .ZN(n29) );
  INVX0 U19 ( .INP(n30), .ZN(n6) );
  INVX0 U20 ( .INP(n30), .ZN(n31) );
  INVX0 U21 ( .INP(n18), .ZN(n7) );
  INVX0 U22 ( .INP(n18), .ZN(n19) );
  INVX0 U23 ( .INP(in1[2]), .ZN(n8) );
  INVX0 U24 ( .INP(n8), .ZN(n9) );
  INVX0 U25 ( .INP(n40), .ZN(n10) );
  INVX0 U26 ( .INP(n40), .ZN(n41) );
  INVX0 U27 ( .INP(n34), .ZN(n11) );
  INVX0 U28 ( .INP(n34), .ZN(n35) );
  INVX0 U29 ( .INP(in2[3]), .ZN(n12) );
  INVX0 U30 ( .INP(in1[6]), .ZN(n14) );
  INVX0 U31 ( .INP(in1[4]), .ZN(n16) );
  INVX0 U32 ( .INP(in1[0]), .ZN(n18) );
  INVX0 U33 ( .INP(in2[6]), .ZN(n20) );
  INVX0 U34 ( .INP(in2[4]), .ZN(n22) );
  INVX0 U35 ( .INP(in1[7]), .ZN(n24) );
  INVX0 U36 ( .INP(in1[5]), .ZN(n26) );
  INVX0 U37 ( .INP(in1[1]), .ZN(n28) );
  INVX0 U38 ( .INP(in1[3]), .ZN(n30) );
  INVX0 U39 ( .INP(in2[0]), .ZN(n32) );
  INVX0 U40 ( .INP(in2[2]), .ZN(n34) );
  INVX0 U41 ( .INP(in2[7]), .ZN(n36) );
  INVX0 U42 ( .INP(in2[5]), .ZN(n38) );
  INVX0 U43 ( .INP(in2[1]), .ZN(n40) );
endmodule


module mas_ripple_carry_adder_4b_109 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U3 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  XOR2X1 U4 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_4b_110 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X2 U2 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X2 U3 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  XOR2X2 U4 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_31 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_110 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_109 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_111 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X2 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_4b_112 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U1 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U2 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X2 U12 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_32 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_112 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_111 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_10 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_32 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_31 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_4b_113 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in2[0]), .IN2(in1[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in2[0]), .IN2(in1[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in2[3]), .IN2(in1[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_114 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in2[1]), .IN2(in1[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in2[3]), .IN2(in1[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U2 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U3 ( .IN1(n13), .IN2(n14), .Q(res[3]) );
  XOR2X2 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_8b_33 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_114 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_113 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_115 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X2 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X2 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U4 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U11 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  XOR2X2 U12 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_4b_116 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_34 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_116 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_115 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_11 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_34 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_33 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_4b_117 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in2[0]), .IN2(in1[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_118 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in2[0]), .IN2(in1[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_8b_35 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_118 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_117 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_119 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_120 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_36 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_120 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_119 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_12 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_36 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_35 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_mul_vedic_16x16_2 ( in1, in2, res );
  input [15:0] in1;
  input [15:0] in2;
  output [31:0] res;
  wire   n_13_net__8_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67;
  wire   [15:8] mulv_out0;
  wire   [15:0] mulv_out1;
  wire   [15:0] mulv_out2;
  wire   [15:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [15:0] rca_out0;
  wire   [15:8] rca_out1;

  mas_mul_vedic_8x8_8 mulv_8b_0 ( .in1({n50, n48, n46, n44, n42, in1[2], n38, 
        n36}), .in2({in2[7:3], n9, n7, in2[0]}), .res({mulv_out0, res[7:0]})
         );
  mas_mul_vedic_8x8_7 mulv_8b_1 ( .in1({n50, n48, n46, n44, n42, n40, n38, n36}), .in2({n34, n32, n30, n28, n26, n24, n22, n1}), .res(mulv_out1) );
  mas_mul_vedic_8x8_6 mulv_8b_2 ( .in1({n4, n2, n62, n60, n3, n56, n54, n52}), 
        .in2({n19, n17, n15, n13, n11, n9, n7, n5}), .res(mulv_out2) );
  mas_mul_vedic_8x8_5 mulv_8b_3 ( .in1({n66, n64, n62, n60, n58, n56, n54, n52}), .in2({n34, n32, n30, n28, n26, n24, n22, n1}), .res(mulv_out3) );
  mas_ripple_carry_adder_16b_12 add_16b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_16b_11 add_16b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(
        rca_cout[1]), .res({rca_out1, res[15:8]}) );
  mas_ripple_carry_adder_16b_10 add_16b_2 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, n_13_net__8_, rca_out1}), .in2(mulv_out3), .cin(1'b0), 
        .res(res[31:16]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_13_net__8_) );
  INVX1 U3 ( .INP(n8), .ZN(n7) );
  INVX1 U4 ( .INP(n55), .ZN(n54) );
  INVX1 U5 ( .INP(n37), .ZN(n36) );
  INVX1 U6 ( .INP(n39), .ZN(n38) );
  INVX0 U7 ( .INP(n45), .ZN(n44) );
  INVX0 U8 ( .INP(n47), .ZN(n46) );
  INVX0 U9 ( .INP(n23), .ZN(n22) );
  INVX0 U10 ( .INP(n43), .ZN(n42) );
  INVX0 U11 ( .INP(n49), .ZN(n48) );
  INVX0 U12 ( .INP(n51), .ZN(n50) );
  INVX0 U13 ( .INP(n10), .ZN(n9) );
  INVX0 U14 ( .INP(n14), .ZN(n13) );
  INVX0 U15 ( .INP(n18), .ZN(n17) );
  INVX0 U16 ( .INP(n20), .ZN(n19) );
  INVX0 U17 ( .INP(n16), .ZN(n15) );
  INVX0 U18 ( .INP(n12), .ZN(n11) );
  INVX0 U19 ( .INP(n6), .ZN(n5) );
  INVX0 U20 ( .INP(n41), .ZN(n40) );
  INVX0 U21 ( .INP(n21), .ZN(n1) );
  INVX0 U22 ( .INP(n61), .ZN(n60) );
  INVX0 U23 ( .INP(n65), .ZN(n2) );
  INVX0 U24 ( .INP(n65), .ZN(n64) );
  INVX0 U25 ( .INP(n59), .ZN(n3) );
  INVX0 U26 ( .INP(n59), .ZN(n58) );
  INVX0 U27 ( .INP(n57), .ZN(n56) );
  INVX0 U28 ( .INP(n53), .ZN(n52) );
  INVX0 U29 ( .INP(n63), .ZN(n62) );
  INVX0 U30 ( .INP(n29), .ZN(n28) );
  INVX0 U31 ( .INP(n67), .ZN(n4) );
  INVX0 U32 ( .INP(n67), .ZN(n66) );
  INVX0 U33 ( .INP(n33), .ZN(n32) );
  INVX0 U34 ( .INP(n25), .ZN(n24) );
  INVX0 U35 ( .INP(n35), .ZN(n34) );
  INVX0 U36 ( .INP(n31), .ZN(n30) );
  INVX1 U37 ( .INP(n27), .ZN(n26) );
  INVX0 U38 ( .INP(in2[9]), .ZN(n23) );
  INVX0 U39 ( .INP(in2[11]), .ZN(n27) );
  INVX0 U40 ( .INP(in2[13]), .ZN(n31) );
  INVX0 U41 ( .INP(in2[15]), .ZN(n35) );
  INVX0 U42 ( .INP(in2[3]), .ZN(n12) );
  INVX0 U43 ( .INP(in2[12]), .ZN(n29) );
  INVX0 U44 ( .INP(in2[14]), .ZN(n33) );
  INVX0 U45 ( .INP(in1[1]), .ZN(n39) );
  INVX0 U46 ( .INP(in1[15]), .ZN(n67) );
  INVX0 U47 ( .INP(in1[13]), .ZN(n63) );
  INVX0 U48 ( .INP(in2[0]), .ZN(n6) );
  INVX0 U49 ( .INP(in2[2]), .ZN(n10) );
  INVX0 U50 ( .INP(in1[6]), .ZN(n49) );
  INVX0 U51 ( .INP(in2[8]), .ZN(n21) );
  INVX0 U52 ( .INP(in2[10]), .ZN(n25) );
  INVX0 U53 ( .INP(in1[11]), .ZN(n59) );
  INVX0 U54 ( .INP(in1[9]), .ZN(n55) );
  INVX0 U55 ( .INP(in2[5]), .ZN(n16) );
  INVX0 U56 ( .INP(in2[7]), .ZN(n20) );
  INVX0 U57 ( .INP(in1[14]), .ZN(n65) );
  INVX0 U58 ( .INP(in1[12]), .ZN(n61) );
  INVX0 U59 ( .INP(in1[0]), .ZN(n37) );
  INVX0 U60 ( .INP(in2[1]), .ZN(n8) );
  INVX0 U61 ( .INP(in1[10]), .ZN(n57) );
  INVX0 U62 ( .INP(in1[8]), .ZN(n53) );
  INVX0 U63 ( .INP(in1[7]), .ZN(n51) );
  INVX0 U64 ( .INP(in1[5]), .ZN(n47) );
  INVX0 U65 ( .INP(in1[3]), .ZN(n43) );
  INVX0 U66 ( .INP(in1[4]), .ZN(n45) );
  INVX0 U67 ( .INP(in1[2]), .ZN(n41) );
  INVX0 U68 ( .INP(in2[4]), .ZN(n14) );
  INVX0 U69 ( .INP(in2[6]), .ZN(n18) );
endmodule


module mas_ripple_carry_adder_4b_211 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_212 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_213 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_129 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_130 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_131 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_132 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_33 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_132 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_131 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_130 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_129 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_213 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_212 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_211 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_214 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_215 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_216 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_133 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_134 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_135 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_136 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_34 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_136 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_135 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_134 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_133 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_216 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_215 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_214 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_217 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_218 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_219 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_137 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_138 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_139 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_140 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_35 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_140 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_139 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_138 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_137 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_219 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_218 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_217 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_220 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_221 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_222 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_141 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_142 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_143 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_144 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_36 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_144 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_143 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_142 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_141 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_222 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_221 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_220 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_205 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_206 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_55 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_206 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_205 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_207 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_208 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_56 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_208 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_207 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_209 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_210 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_57 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_210 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_209 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_9 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_36 mulv_4b_0 ( .in1(in1[3:0]), .in2(in2[3:0]), .res({
        mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_35 mulv_4b_1 ( .in1(in1[3:0]), .in2(in2[7:4]), .res(
        mulv_out1) );
  mas_mul_vedic_4x4_34 mulv_4b_2 ( .in1(in1[7:4]), .in2(in2[3:0]), .res(
        mulv_out2) );
  mas_mul_vedic_4x4_33 mulv_4b_3 ( .in1(in1[7:4]), .in2(in2[7:4]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_8b_57 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_56 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_55 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
endmodule


module mas_ripple_carry_adder_4b_229 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_230 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_231 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_145 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_146 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_147 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_148 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_37 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_148 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_147 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_146 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_145 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_231 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_230 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_229 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_232 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_233 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_234 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_149 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_150 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_151 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_2x2_152 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
endmodule


module mas_mul_vedic_4x4_38 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_152 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_151 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_150 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_149 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_234 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_233 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_232 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_235 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_236 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_237 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_153 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_154 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_155 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_156 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_39 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_156 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_155 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_154 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_153 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_237 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_236 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_235 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_238 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_239 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_240 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_157 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_158 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_159 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n12, n1, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n8), .IN2(n7), .Q(res[1]) );
  INVX0 U1 ( .INP(n12), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(res[3]) );
  NAND2X0 U3 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n10) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  NOR2X0 U5 ( .IN1(n9), .IN2(n10), .QN(n12) );
  NOR2X0 U6 ( .IN1(n12), .IN2(n10), .QN(res[2]) );
  INVX0 U7 ( .INP(n9), .ZN(res[0]) );
  NAND2X0 U9 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n7) );
  NAND2X0 U10 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n9) );
endmodule


module mas_mul_vedic_2x2_160 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_40 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_160 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_159 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_158 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_157 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_240 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_239 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_238 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_223 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_224 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
endmodule


module mas_ripple_carry_adder_8b_58 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_224 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_223 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_225 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n10), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in2[0]), .IN2(in1[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_226 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_59 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_226 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_225 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_227 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in2[0]), .IN2(in1[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_228 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_60 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_228 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_227 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_10 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_40 mulv_4b_0 ( .in1({n16, n6, n14, n10}), .in2(in2[3:0]), 
        .res({mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_39 mulv_4b_1 ( .in1({n16, n6, n14, n10}), .in2(in2[7:4]), 
        .res(mulv_out1) );
  mas_mul_vedic_4x4_38 mulv_4b_2 ( .in1({n12, n2, n8, n4}), .in2(in2[3:0]), 
        .res(mulv_out2) );
  mas_mul_vedic_4x4_37 mulv_4b_3 ( .in1({n12, n2, n8, n4}), .in2(in2[7:4]), 
        .res(mulv_out3) );
  mas_ripple_carry_adder_8b_60 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_59 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_58 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  INVX0 U3 ( .INP(n15), .ZN(n16) );
  INVX0 U4 ( .INP(in1[6]), .ZN(n1) );
  INVX0 U5 ( .INP(n1), .ZN(n2) );
  INVX0 U6 ( .INP(in1[4]), .ZN(n3) );
  INVX0 U7 ( .INP(n3), .ZN(n4) );
  INVX0 U8 ( .INP(in1[2]), .ZN(n5) );
  INVX0 U9 ( .INP(n5), .ZN(n6) );
  INVX0 U10 ( .INP(in1[5]), .ZN(n7) );
  INVX0 U11 ( .INP(n7), .ZN(n8) );
  INVX0 U12 ( .INP(in1[0]), .ZN(n9) );
  INVX0 U13 ( .INP(n9), .ZN(n10) );
  INVX0 U14 ( .INP(in1[7]), .ZN(n11) );
  INVX0 U15 ( .INP(n11), .ZN(n12) );
  INVX0 U16 ( .INP(in1[1]), .ZN(n13) );
  INVX0 U17 ( .INP(n13), .ZN(n14) );
  INVX0 U18 ( .INP(in1[3]), .ZN(n15) );
endmodule


module mas_ripple_carry_adder_4b_247 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_248 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_249 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_161 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_162 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_163 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_164 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_41 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_164 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_163 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_162 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_161 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_249 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_248 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_247 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_250 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_251 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_252 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_165 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_166 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_167 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_168 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_42 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_168 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_167 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_166 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_165 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_252 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_251 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_250 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_253 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_254 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_255 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_169 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_170 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_171 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_172 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_43 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_172 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_171 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_170 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_169 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_255 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_254 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_253 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_256 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_257 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_258 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_mul_vedic_2x2_173 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_174 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n11, n6, n7, n8, n9;

  XOR2X1 U8 ( .IN1(n7), .IN2(n6), .Q(res[1]) );
  NBUFFX4 U1 ( .INP(n11), .Z(res[3]) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n9) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n7) );
  NOR2X0 U4 ( .IN1(n8), .IN2(n9), .QN(n11) );
  NOR2X0 U5 ( .IN1(n11), .IN2(n9), .QN(res[2]) );
  INVX0 U6 ( .INP(n8), .ZN(res[0]) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n6) );
  NAND2X0 U9 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n8) );
endmodule


module mas_mul_vedic_2x2_175 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n12, n1, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n8), .IN2(n7), .Q(res[1]) );
  INVX0 U1 ( .INP(n12), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(res[3]) );
  NOR2X0 U3 ( .IN1(n9), .IN2(n10), .QN(n12) );
  NOR2X0 U4 ( .IN1(n12), .IN2(n10), .QN(res[2]) );
  INVX0 U5 ( .INP(n9), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n10) );
  NAND2X0 U9 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n7) );
  NAND2X0 U10 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n9) );
endmodule


module mas_mul_vedic_2x2_176 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_44 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_176 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_175 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_174 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_173 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_258 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_257 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_256 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_241 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_242 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_61 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_242 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_241 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_243 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_244 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_62 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_244 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_243 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_245 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_246 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_63 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_246 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_245 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_11 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_44 mulv_4b_0 ( .in1(in1[3:0]), .in2({n14, n6, n16, n12}), 
        .res({mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_43 mulv_4b_1 ( .in1(in1[3:0]), .in2({n8, n4, n10, n2}), 
        .res(mulv_out1) );
  mas_mul_vedic_4x4_42 mulv_4b_2 ( .in1(in1[7:4]), .in2({n14, n6, n16, n12}), 
        .res(mulv_out2) );
  mas_mul_vedic_4x4_41 mulv_4b_3 ( .in1(in1[7:4]), .in2({n8, n4, n10, n2}), 
        .res(mulv_out3) );
  mas_ripple_carry_adder_8b_63 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_62 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_61 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  INVX0 U3 ( .INP(n11), .ZN(n12) );
  INVX0 U4 ( .INP(in2[4]), .ZN(n1) );
  INVX0 U5 ( .INP(n1), .ZN(n2) );
  INVX0 U6 ( .INP(in2[6]), .ZN(n3) );
  INVX0 U7 ( .INP(n3), .ZN(n4) );
  INVX0 U8 ( .INP(in2[2]), .ZN(n5) );
  INVX0 U9 ( .INP(n5), .ZN(n6) );
  INVX0 U10 ( .INP(in2[7]), .ZN(n7) );
  INVX0 U11 ( .INP(n7), .ZN(n8) );
  INVX0 U12 ( .INP(in2[5]), .ZN(n9) );
  INVX0 U13 ( .INP(n9), .ZN(n10) );
  INVX0 U14 ( .INP(in2[0]), .ZN(n11) );
  INVX0 U15 ( .INP(in2[3]), .ZN(n13) );
  INVX1 U16 ( .INP(n13), .ZN(n14) );
  INVX0 U17 ( .INP(in2[1]), .ZN(n15) );
  INVX1 U18 ( .INP(n15), .ZN(n16) );
endmodule


module mas_ripple_carry_adder_4b_265 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_266 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_267 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_mul_vedic_2x2_177 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_178 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_179 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_180 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_45 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_180 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_179 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_178 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_177 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_267 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_266 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_265 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_268 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n8), .IN4(cin), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_269 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_4b_270 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U2 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U5 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  AO22X1 U9 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  XOR2X2 U12 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_mul_vedic_2x2_181 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_182 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n7), .IN2(n6), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_183 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n12, n1, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n7), .IN2(n8), .Q(res[1]) );
  INVX0 U1 ( .INP(n12), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(res[3]) );
  NOR2X0 U3 ( .IN1(n9), .IN2(n10), .QN(n12) );
  NOR2X0 U4 ( .IN1(n12), .IN2(n10), .QN(res[2]) );
  INVX0 U5 ( .INP(n9), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n10) );
  NAND2X0 U9 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n7) );
  NAND2X0 U10 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n9) );
endmodule


module mas_mul_vedic_2x2_184 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_46 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_184 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_183 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_182 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_181 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_270 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_269 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_268 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_271 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_272 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_273 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_mul_vedic_2x2_185 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_186 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NAND2X0 U2 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  INVX0 U4 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U7 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_187 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n1), .IN2(n5), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  INVX0 U2 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U3 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U4 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U6 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
  NOR2X0 U7 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_188 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_47 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_188 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_187 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_186 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_185 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_273 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_272 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_271 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_274 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_4b_275 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2X1 U1 ( .IN1(n15), .IN2(n16), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n12), .IN2(n11), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n10), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n15), .IN4(n16), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n15) );
  XOR2X1 U2 ( .IN1(n9), .IN2(n13), .Q(res[2]) );
  XOR2X1 U11 ( .IN1(in2[2]), .IN2(in1[2]), .Q(n13) );
  INVX0 U13 ( .INP(n14), .ZN(n8) );
  INVX0 U14 ( .INP(n8), .ZN(n9) );
endmodule


module mas_ripple_carry_adder_4b_276 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  XOR2X2 U12 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
endmodule


module mas_mul_vedic_2x2_189 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NAND2X0 U1 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U2 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NOR2X0 U3 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U4 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U5 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_2x2_190 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n6, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n7), .IN2(n8), .Q(res[1]) );
  INVX0 U1 ( .INP(in2[1]), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(n6) );
  NOR2X1 U3 ( .IN1(n9), .IN2(n10), .QN(res[3]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  INVX0 U5 ( .INP(n9), .ZN(res[0]) );
  NAND2X0 U6 ( .IN1(n6), .IN2(in1[0]), .QN(n7) );
  NOR2X0 U7 ( .IN1(res[3]), .IN2(n10), .QN(res[2]) );
  NAND2X0 U9 ( .IN1(n6), .IN2(in1[1]), .QN(n10) );
  NAND2X0 U10 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n9) );
endmodule


module mas_mul_vedic_2x2_191 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n12, n1, n7, n8, n9, n10;

  XOR2X1 U8 ( .IN1(n7), .IN2(n8), .Q(res[1]) );
  INVX0 U1 ( .INP(n12), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(res[3]) );
  NOR2X0 U3 ( .IN1(n9), .IN2(n10), .QN(n12) );
  INVX0 U4 ( .INP(n9), .ZN(res[0]) );
  NAND2X0 U5 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n8) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n10) );
  NAND2X0 U7 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n7) );
  NAND2X0 U9 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n9) );
  NOR2X0 U10 ( .IN1(n12), .IN2(n10), .QN(res[2]) );
endmodule


module mas_mul_vedic_2x2_192 ( in1, in2, res );
  input [1:0] in1;
  input [1:0] in2;
  output [3:0] res;
  wire   n1, n5, n6, n7;

  XOR2X1 U8 ( .IN1(n5), .IN2(n1), .Q(res[1]) );
  NOR2X0 U1 ( .IN1(n6), .IN2(n7), .QN(res[3]) );
  NOR2X0 U2 ( .IN1(res[3]), .IN2(n7), .QN(res[2]) );
  INVX0 U3 ( .INP(n6), .ZN(res[0]) );
  NAND2X0 U4 ( .IN1(in1[1]), .IN2(in2[0]), .QN(n5) );
  NAND2X0 U5 ( .IN1(in2[1]), .IN2(in1[1]), .QN(n7) );
  NAND2X0 U6 ( .IN1(in2[1]), .IN2(in1[0]), .QN(n1) );
  NAND2X0 U7 ( .IN1(in2[0]), .IN2(in1[0]), .QN(n6) );
endmodule


module mas_mul_vedic_4x4_48 ( in1, in2, res );
  input [3:0] in1;
  input [3:0] in2;
  output [7:0] res;
  wire   n_8_net__2_;
  wire   [3:2] mulv_out0;
  wire   [3:0] mulv_out1;
  wire   [3:0] mulv_out2;
  wire   [3:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [3:0] rca_out0;
  wire   [3:2] rca_out1;

  mas_mul_vedic_2x2_192 mulv_2b_0 ( .in1(in1[1:0]), .in2(in2[1:0]), .res({
        mulv_out0, res[1:0]}) );
  mas_mul_vedic_2x2_191 mulv_2b_1 ( .in1(in1[1:0]), .in2(in2[3:2]), .res(
        mulv_out1) );
  mas_mul_vedic_2x2_190 mulv_2b_2 ( .in1(in1[3:2]), .in2(in2[1:0]), .res(
        mulv_out2) );
  mas_mul_vedic_2x2_189 mulv_2b_3 ( .in1(in1[3:2]), .in2(in2[3:2]), .res(
        mulv_out3) );
  mas_ripple_carry_adder_4b_276 add_4b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_4b_275 add_4b_1 ( .in1({1'b0, 1'b0, mulv_out0}), 
        .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({rca_out1, 
        res[3:2]}) );
  mas_ripple_carry_adder_4b_274 add_4b_2 ( .in1({1'b0, n_8_net__2_, rca_out1}), 
        .in2(mulv_out3), .cin(1'b0), .res(res[7:4]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_8_net__2_) );
endmodule


module mas_ripple_carry_adder_4b_259 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  AO22X1 U2 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  XOR2X2 U3 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U4 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X2 U5 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_260 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X2 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_64 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_260 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_259 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_261 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n10), .Q(res[1]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in2[1]), .IN2(in1[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_4b_262 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U1 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X2 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U3 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
endmodule


module mas_ripple_carry_adder_8b_65 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_262 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_261 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_263 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_264 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_66 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_264 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_263 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_mul_vedic_8x8_12 ( in1, in2, res );
  input [7:0] in1;
  input [7:0] in2;
  output [15:0] res;
  wire   n_3_net__4_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42;
  wire   [7:4] mulv_out0;
  wire   [7:0] mulv_out1;
  wire   [7:0] mulv_out2;
  wire   [7:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [7:0] rca_out0;
  wire   [7:4] rca_out1;

  mas_mul_vedic_4x4_48 mulv_4b_0 ( .in1({n30, n18, n1, n20}), .in2({n9, n12, 
        n10, n8}), .res({mulv_out0, res[3:0]}) );
  mas_mul_vedic_4x4_47 mulv_4b_1 ( .in1({n30, n18, n28, n20}), .in2({n6, n4, 
        n7, n3}), .res(mulv_out1) );
  mas_mul_vedic_4x4_46 mulv_4b_2 ( .in1({n5, n2, n26, n16}), .in2({n40, n12, 
        n42, n32}), .res(mulv_out2) );
  mas_mul_vedic_4x4_45 mulv_4b_3 ( .in1({n24, n14, n26, n16}), .in2({n34, n22, 
        n36, n38}), .res(mulv_out3) );
  mas_ripple_carry_adder_8b_66 add_8b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_8b_65 add_8b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), .res({
        rca_out1, res[7:4]}) );
  mas_ripple_carry_adder_8b_64 add_8b_2 ( .in1({1'b0, 1'b0, 1'b0, n_3_net__4_, 
        rca_out1}), .in2(mulv_out3), .cin(1'b0), .res(res[15:8]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_3_net__4_) );
  INVX1 U3 ( .INP(n15), .ZN(n16) );
  INVX0 U4 ( .INP(n19), .ZN(n20) );
  INVX0 U5 ( .INP(n25), .ZN(n26) );
  INVX0 U6 ( .INP(n17), .ZN(n18) );
  INVX0 U7 ( .INP(n29), .ZN(n30) );
  INVX0 U8 ( .INP(n27), .ZN(n1) );
  INVX0 U9 ( .INP(n27), .ZN(n28) );
  INVX0 U10 ( .INP(n13), .ZN(n2) );
  INVX0 U11 ( .INP(n13), .ZN(n14) );
  INVX0 U12 ( .INP(n37), .ZN(n3) );
  INVX0 U13 ( .INP(n37), .ZN(n38) );
  INVX0 U14 ( .INP(n21), .ZN(n4) );
  INVX0 U15 ( .INP(n21), .ZN(n22) );
  INVX0 U16 ( .INP(n23), .ZN(n5) );
  INVX0 U17 ( .INP(n23), .ZN(n24) );
  INVX0 U18 ( .INP(n33), .ZN(n6) );
  INVX0 U19 ( .INP(n33), .ZN(n34) );
  INVX0 U20 ( .INP(n35), .ZN(n7) );
  INVX0 U21 ( .INP(n35), .ZN(n36) );
  INVX0 U22 ( .INP(n31), .ZN(n8) );
  INVX0 U23 ( .INP(n31), .ZN(n32) );
  INVX0 U24 ( .INP(n39), .ZN(n9) );
  INVX0 U25 ( .INP(n39), .ZN(n40) );
  INVX0 U26 ( .INP(n41), .ZN(n10) );
  INVX0 U27 ( .INP(n41), .ZN(n42) );
  INVX0 U28 ( .INP(in2[2]), .ZN(n11) );
  INVX0 U29 ( .INP(n11), .ZN(n12) );
  INVX0 U30 ( .INP(in1[6]), .ZN(n13) );
  INVX0 U31 ( .INP(in1[4]), .ZN(n15) );
  INVX0 U32 ( .INP(in1[2]), .ZN(n17) );
  INVX0 U33 ( .INP(in1[0]), .ZN(n19) );
  INVX0 U34 ( .INP(in2[6]), .ZN(n21) );
  INVX0 U35 ( .INP(in1[7]), .ZN(n23) );
  INVX0 U36 ( .INP(in1[5]), .ZN(n25) );
  INVX0 U37 ( .INP(in1[1]), .ZN(n27) );
  INVX0 U38 ( .INP(in1[3]), .ZN(n29) );
  INVX0 U39 ( .INP(in2[0]), .ZN(n31) );
  INVX0 U40 ( .INP(in2[7]), .ZN(n33) );
  INVX0 U41 ( .INP(in2[5]), .ZN(n35) );
  INVX0 U42 ( .INP(in2[4]), .ZN(n37) );
  INVX0 U43 ( .INP(in2[3]), .ZN(n39) );
  INVX0 U44 ( .INP(in2[1]), .ZN(n41) );
endmodule


module mas_ripple_carry_adder_4b_193 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U2 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
endmodule


module mas_ripple_carry_adder_4b_194 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U1 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U2 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
endmodule


module mas_ripple_carry_adder_8b_49 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_194 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_193 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_195 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U1 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X2 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U9 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
endmodule


module mas_ripple_carry_adder_4b_196 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;

  XOR2X1 U4 ( .IN1(cin), .IN2(n10), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n15), .IN4(n16), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n11), .IN4(n12), .Q(n14) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n11) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n13) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n15) );
  XOR2X2 U1 ( .IN1(n16), .IN2(n15), .Q(res[3]) );
  AO22X1 U2 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n10), .Q(n12) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n13), .Q(res[2]) );
  INVX0 U8 ( .INP(n14), .ZN(n8) );
  INVX0 U13 ( .INP(n8), .ZN(n9) );
  XOR2X2 U14 ( .IN1(n12), .IN2(n11), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_8b_50 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_196 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_195 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_13 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_50 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_49 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_4b_197 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U2 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  XOR2X1 U3 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U4 ( .IN1(n9), .IN2(n10), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_4b_198 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n12), .IN4(n11), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n10), .IN4(n9), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U1 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X2 U2 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U3 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X2 U4 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X2 U8 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
endmodule


module mas_ripple_carry_adder_8b_51 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_198 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_197 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_199 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n22), .IN4(n21), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n19), .IN4(n20), .Q(n22) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n17), .IN4(n18), .Q(n20) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n16), .Q(n18) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n16) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n17) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n19) );
  XOR2X1 U1 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n21) );
  XOR2X1 U2 ( .IN1(n9), .IN2(n11), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n13), .IN2(n19), .Q(res[2]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n16), .Q(res[0]) );
  INVX0 U12 ( .INP(n22), .ZN(n8) );
  INVX0 U13 ( .INP(n8), .ZN(n9) );
  INVX0 U14 ( .INP(n21), .ZN(n10) );
  INVX0 U15 ( .INP(n10), .ZN(n11) );
  XOR2X1 U16 ( .IN1(n15), .IN2(n17), .Q(res[1]) );
  INVX0 U17 ( .INP(n20), .ZN(n12) );
  INVX0 U18 ( .INP(n12), .ZN(n13) );
  INVX0 U19 ( .INP(n18), .ZN(n14) );
  INVX0 U20 ( .INP(n14), .ZN(n15) );
endmodule


module mas_ripple_carry_adder_4b_200 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
endmodule


module mas_ripple_carry_adder_8b_52 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_200 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_199 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_14 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_52 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_51 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_4b_201 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
endmodule


module mas_ripple_carry_adder_4b_202 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X1 U1 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U3 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
endmodule


module mas_ripple_carry_adder_8b_53 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_202 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_201 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_203 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_4b_204 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U1 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
endmodule


module mas_ripple_carry_adder_8b_54 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_204 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(
        cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_203 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_15 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_54 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_53 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
endmodule


module mas_mul_vedic_16x16_3 ( in1, in2, res );
  input [15:0] in1;
  input [15:0] in2;
  output [31:0] res;
  wire   n_13_net__8_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63, n64;
  wire   [15:8] mulv_out0;
  wire   [15:0] mulv_out1;
  wire   [15:0] mulv_out2;
  wire   [15:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [15:0] rca_out0;
  wire   [15:8] rca_out1;

  mas_mul_vedic_8x8_12 mulv_8b_0 ( .in1({n47, n45, in1[5], n41, in1[3:2], n35, 
        in1[0]}), .in2({n15, n13, n11, n9, n7, in2[2], n3, n1}), .res({
        mulv_out0, res[7:0]}) );
  mas_mul_vedic_8x8_11 mulv_8b_1 ( .in1({n47, n45, n43, n41, n39, n37, n35, 
        n33}), .in2({n31, n29, n27, n25, n23, n21, n19, n17}), .res(mulv_out1)
         );
  mas_mul_vedic_8x8_10 mulv_8b_2 ( .in1({n63, n61, n59, n57, n55, n53, n51, 
        n49}), .in2({n15, n13, n11, n9, n7, n5, n3, n1}), .res(mulv_out2) );
  mas_mul_vedic_8x8_9 mulv_8b_3 ( .in1({n63, n61, n59, n57, n55, n53, n51, n49}), .in2({n31, n29, n27, n25, n23, n21, n19, n17}), .res(mulv_out3) );
  mas_ripple_carry_adder_16b_15 add_16b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_16b_14 add_16b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, mulv_out0}), .in2(rca_out0), .cin(1'b0), .cout(
        rca_cout[1]), .res({rca_out1, res[15:8]}) );
  mas_ripple_carry_adder_16b_13 add_16b_2 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, n_13_net__8_, rca_out1}), .in2(mulv_out3), .cin(1'b0), 
        .res(res[31:16]) );
  OR2X1 U2 ( .IN1(rca_cout[0]), .IN2(rca_cout[1]), .Q(n_13_net__8_) );
  INVX1 U3 ( .INP(n24), .ZN(n23) );
  INVX1 U4 ( .INP(n20), .ZN(n19) );
  INVX1 U5 ( .INP(n56), .ZN(n55) );
  INVX1 U6 ( .INP(n42), .ZN(n41) );
  INVX0 U7 ( .INP(n36), .ZN(n35) );
  INVX0 U8 ( .INP(n2), .ZN(n1) );
  INVX0 U9 ( .INP(n10), .ZN(n9) );
  INVX0 U10 ( .INP(n12), .ZN(n11) );
  INVX0 U11 ( .INP(n18), .ZN(n17) );
  INVX0 U12 ( .INP(n46), .ZN(n45) );
  INVX0 U13 ( .INP(n48), .ZN(n47) );
  INVX0 U14 ( .INP(n8), .ZN(n7) );
  INVX0 U15 ( .INP(n14), .ZN(n13) );
  INVX0 U16 ( .INP(n16), .ZN(n15) );
  INVX0 U17 ( .INP(n44), .ZN(n43) );
  INVX0 U18 ( .INP(n34), .ZN(n33) );
  INVX0 U19 ( .INP(n38), .ZN(n37) );
  INVX0 U20 ( .INP(n40), .ZN(n39) );
  INVX0 U21 ( .INP(n6), .ZN(n5) );
  INVX0 U22 ( .INP(n62), .ZN(n61) );
  INVX0 U23 ( .INP(n58), .ZN(n57) );
  INVX0 U24 ( .INP(n54), .ZN(n53) );
  INVX0 U25 ( .INP(n60), .ZN(n59) );
  INVX0 U26 ( .INP(n50), .ZN(n49) );
  INVX0 U27 ( .INP(n64), .ZN(n63) );
  INVX0 U28 ( .INP(n26), .ZN(n25) );
  INVX0 U29 ( .INP(n30), .ZN(n29) );
  INVX0 U30 ( .INP(n52), .ZN(n51) );
  INVX0 U31 ( .INP(n22), .ZN(n21) );
  INVX0 U32 ( .INP(n32), .ZN(n31) );
  INVX0 U33 ( .INP(n28), .ZN(n27) );
  INVX1 U34 ( .INP(n4), .ZN(n3) );
  INVX0 U35 ( .INP(in1[2]), .ZN(n38) );
  INVX0 U36 ( .INP(in2[13]), .ZN(n28) );
  INVX0 U37 ( .INP(in2[15]), .ZN(n32) );
  INVX0 U38 ( .INP(in2[1]), .ZN(n4) );
  INVX0 U39 ( .INP(in1[6]), .ZN(n46) );
  INVX0 U40 ( .INP(in2[9]), .ZN(n20) );
  INVX0 U41 ( .INP(in2[11]), .ZN(n24) );
  INVX0 U42 ( .INP(in2[12]), .ZN(n26) );
  INVX0 U43 ( .INP(in2[14]), .ZN(n30) );
  INVX0 U44 ( .INP(in2[0]), .ZN(n2) );
  INVX0 U45 ( .INP(in2[8]), .ZN(n18) );
  INVX0 U46 ( .INP(in2[10]), .ZN(n22) );
  INVX0 U47 ( .INP(in1[13]), .ZN(n60) );
  INVX0 U48 ( .INP(in1[11]), .ZN(n56) );
  INVX0 U49 ( .INP(in2[5]), .ZN(n12) );
  INVX0 U50 ( .INP(in2[7]), .ZN(n16) );
  INVX0 U51 ( .INP(in2[3]), .ZN(n8) );
  INVX0 U52 ( .INP(in1[8]), .ZN(n50) );
  INVX0 U53 ( .INP(in1[12]), .ZN(n58) );
  INVX0 U54 ( .INP(in2[4]), .ZN(n10) );
  INVX0 U55 ( .INP(in2[6]), .ZN(n14) );
  INVX0 U56 ( .INP(in2[2]), .ZN(n6) );
  INVX0 U57 ( .INP(in1[1]), .ZN(n36) );
  INVX0 U58 ( .INP(in1[15]), .ZN(n64) );
  INVX0 U59 ( .INP(in1[3]), .ZN(n40) );
  INVX0 U60 ( .INP(in1[9]), .ZN(n52) );
  INVX0 U61 ( .INP(in1[14]), .ZN(n62) );
  INVX0 U62 ( .INP(in1[0]), .ZN(n34) );
  INVX0 U63 ( .INP(in1[10]), .ZN(n54) );
  INVX0 U64 ( .INP(in1[7]), .ZN(n48) );
  INVX0 U65 ( .INP(in1[5]), .ZN(n44) );
  INVX0 U66 ( .INP(in1[4]), .ZN(n42) );
endmodule


module mas_ripple_carry_adder_4b_1 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n19), .IN4(n18), .Q(n21) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n17), .IN4(n16), .Q(n19) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n15), .Q(n17) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n15) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n16) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n18) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n20) );
  XOR2X1 U1 ( .IN1(n12), .IN2(n18), .Q(res[2]) );
  XOR2X1 U2 ( .IN1(n14), .IN2(n16), .Q(res[1]) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n15), .Q(res[0]) );
  XOR2X2 U4 ( .IN1(n21), .IN2(n20), .Q(res[3]) );
  INVX0 U5 ( .INP(cin), .ZN(n8) );
  INVX0 U13 ( .INP(n8), .ZN(n9) );
  AO22X1 U14 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n20), .IN4(n10), .Q(cout) );
  DELLN2X2 U15 ( .INP(n21), .Z(n10) );
  INVX0 U16 ( .INP(n19), .ZN(n11) );
  INVX0 U17 ( .INP(n11), .ZN(n12) );
  INVX0 U18 ( .INP(n17), .ZN(n13) );
  INVX0 U19 ( .INP(n13), .ZN(n14) );
endmodule


module mas_ripple_carry_adder_4b_2 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n18), .IN4(n17), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n16), .IN4(n15), .Q(n18) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n14), .IN4(n13), .Q(n16) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n12), .Q(n14) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n12) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n13) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n15) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n17) );
  XOR2X1 U1 ( .IN1(n10), .IN2(n17), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n9), .IN2(n13), .Q(res[1]) );
  XOR2X1 U3 ( .IN1(n8), .IN2(n12), .Q(res[0]) );
  DELLN2X2 U4 ( .INP(cin), .Z(n8) );
  DELLN1X2 U13 ( .INP(n16), .Z(n11) );
  XOR2X1 U14 ( .IN1(n11), .IN2(n15), .Q(res[2]) );
  DELLN2X2 U15 ( .INP(n14), .Z(n9) );
  DELLN1X2 U16 ( .INP(n18), .Z(n10) );
endmodule


module mas_ripple_carry_adder_8b_1 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_2 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), 
        .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_1 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_3 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n18), .IN4(n17), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n16), .IN4(n15), .Q(n18) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n14), .IN4(n13), .Q(n16) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n12), .Q(n14) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n12) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n13) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n15) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n17) );
  XOR2X1 U1 ( .IN1(n10), .IN2(n17), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n9), .IN2(n15), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n8), .IN2(n13), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(n11), .IN2(n12), .Q(res[0]) );
  DELLN2X2 U13 ( .INP(n14), .Z(n8) );
  DELLN2X2 U14 ( .INP(n16), .Z(n9) );
  DELLN2X2 U15 ( .INP(n18), .Z(n10) );
  DELLN2X2 U16 ( .INP(cin), .Z(n11) );
endmodule


module mas_ripple_carry_adder_4b_4 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n20), .IN4(n19), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n18), .IN4(n17), .Q(n20) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n16), .IN4(n15), .Q(n18) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(n14), .IN4(cin), .Q(n16) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n15) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n17) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n19) );
  XOR2X1 U1 ( .IN1(n9), .IN2(n19), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n10), .IN2(n17), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n8), .IN2(n15), .Q(res[1]) );
  DELLN2X2 U4 ( .INP(n16), .Z(n8) );
  DELLN2X2 U9 ( .INP(n20), .Z(n9) );
  DELLN2X2 U13 ( .INP(n18), .Z(n10) );
  DELLN2X2 U14 ( .INP(n14), .Z(n11) );
  XOR2X1 U15 ( .IN1(n13), .IN2(n11), .Q(res[0]) );
  INVX0 U16 ( .INP(cin), .ZN(n12) );
  INVX0 U17 ( .INP(n12), .ZN(n13) );
  XOR2X2 U18 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n14) );
endmodule


module mas_ripple_carry_adder_8b_2 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_4 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), 
        .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_3 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_1 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_2 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), 
        .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_1 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), 
        .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_4b_5 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n20), .IN4(n19), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n18), .IN4(n17), .Q(n20) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n15), .IN4(n16), .Q(n18) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n14), .Q(n16) );
  XOR2X1 U1 ( .IN1(n13), .IN2(n17), .Q(res[2]) );
  XOR2X1 U2 ( .IN1(n11), .IN2(n15), .Q(res[1]) );
  XOR2X1 U3 ( .IN1(n10), .IN2(n14), .Q(res[0]) );
  DELLN2X2 U4 ( .INP(n20), .Z(n8) );
  XOR2X1 U9 ( .IN1(n8), .IN2(n19), .Q(res[3]) );
  INVX0 U10 ( .INP(cin), .ZN(n9) );
  INVX0 U11 ( .INP(n9), .ZN(n10) );
  DELLN2X2 U12 ( .INP(n16), .Z(n11) );
  INVX0 U13 ( .INP(n18), .ZN(n12) );
  INVX0 U14 ( .INP(n12), .ZN(n13) );
  XOR2X2 U15 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n15) );
  XOR2X2 U16 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n14) );
  XOR2X2 U17 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n19) );
  XOR2X2 U18 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n17) );
endmodule


module mas_ripple_carry_adder_4b_6 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n20), .IN4(n21), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n18), .IN4(n19), .Q(n21) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n16), .IN4(n17), .Q(n19) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n15), .Q(n17) );
  XOR2X1 U1 ( .IN1(n10), .IN2(n18), .Q(res[2]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n16), .Q(res[1]) );
  XOR2X1 U3 ( .IN1(n14), .IN2(n15), .Q(res[0]) );
  DELLN2X2 U4 ( .INP(n21), .Z(n8) );
  INVX0 U9 ( .INP(n19), .ZN(n9) );
  INVX0 U10 ( .INP(n9), .ZN(n10) );
  XOR2X1 U11 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n20) );
  INVX0 U12 ( .INP(n17), .ZN(n11) );
  INVX0 U13 ( .INP(n11), .ZN(n12) );
  XOR2X1 U14 ( .IN1(n8), .IN2(n20), .Q(res[3]) );
  XOR2X2 U15 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n16) );
  INVX0 U16 ( .INP(cin), .ZN(n13) );
  INVX0 U17 ( .INP(n13), .ZN(n14) );
  XOR2X2 U18 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n15) );
  XOR2X2 U19 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n18) );
endmodule


module mas_ripple_carry_adder_8b_3 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_6 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), 
        .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_5 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_7 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n19), .IN4(n20), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n17), .IN4(n18), .Q(n20) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n15), .IN4(n16), .Q(n18) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n14), .Q(n16) );
  XOR2X1 U1 ( .IN1(n11), .IN2(n19), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n13), .IN2(n14), .Q(res[0]) );
  DELLN2X2 U3 ( .INP(n16), .Z(n8) );
  DELLN2X2 U4 ( .INP(n18), .Z(n9) );
  INVX0 U9 ( .INP(n20), .ZN(n10) );
  INVX0 U10 ( .INP(n10), .ZN(n11) );
  XOR2X1 U11 ( .IN1(n9), .IN2(n17), .Q(res[2]) );
  XOR2X1 U12 ( .IN1(n8), .IN2(n15), .Q(res[1]) );
  XOR2X2 U13 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n15) );
  INVX0 U14 ( .INP(cin), .ZN(n12) );
  INVX0 U15 ( .INP(n12), .ZN(n13) );
  XOR2X2 U16 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n14) );
  XOR2X2 U17 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n17) );
  XOR2X2 U18 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n19) );
endmodule


module mas_ripple_carry_adder_4b_8 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U3 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n14), .IN4(n13), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X2 U1 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U2 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U10 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
  XOR2X2 U12 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
endmodule


module mas_ripple_carry_adder_8b_4 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_8 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), 
        .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_7 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_2 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_4 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), 
        .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_3 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), 
        .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_32b_1 ( in1, in2, cin, cout, res );
  input [31:0] in1;
  input [31:0] in2;
  output [31:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_16b_2 rca0 ( .in1(in1[15:0]), .in2(in2[15:0]), .cin(
        cin), .cout(c), .res(res[15:0]) );
  mas_ripple_carry_adder_16b_1 rca1 ( .in1(in1[31:16]), .in2(in2[31:16]), 
        .cin(c), .cout(cout), .res(res[31:16]) );
endmodule


module mas_ripple_carry_adder_4b_9 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16;

  AO22X1 U5 ( .IN1(in2[3]), .IN2(in1[3]), .IN3(n16), .IN4(n15), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U8 ( .IN1(in2[0]), .IN2(in1[0]), .IN3(cin), .IN4(n10), .Q(n12) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n10) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n11) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n13) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n15) );
  XOR2X1 U1 ( .IN1(n9), .IN2(n10), .Q(res[0]) );
  XOR2X2 U2 ( .IN1(n13), .IN2(n14), .Q(res[2]) );
  INVX0 U3 ( .INP(cin), .ZN(n8) );
  INVX0 U4 ( .INP(n8), .ZN(n9) );
  XOR2X2 U13 ( .IN1(n12), .IN2(n11), .Q(res[1]) );
  XOR2X2 U14 ( .IN1(n16), .IN2(n15), .Q(res[3]) );
endmodule


module mas_ripple_carry_adder_4b_10 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n20), .IN4(n19), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n18), .IN4(n17), .Q(n20) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n16), .IN4(n15), .Q(n18) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n14), .Q(n16) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n14) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n15) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n17) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n19) );
  XOR2X1 U1 ( .IN1(n13), .IN2(n17), .Q(res[2]) );
  INVX0 U2 ( .INP(n16), .ZN(n8) );
  INVX0 U3 ( .INP(n8), .ZN(n9) );
  INVX0 U4 ( .INP(cin), .ZN(n10) );
  INVX0 U13 ( .INP(n10), .ZN(n11) );
  XOR2X2 U14 ( .IN1(n20), .IN2(n19), .Q(res[3]) );
  INVX0 U15 ( .INP(n18), .ZN(n12) );
  INVX0 U16 ( .INP(n12), .ZN(n13) );
  XOR2X2 U17 ( .IN1(n11), .IN2(n14), .Q(res[0]) );
  XOR2X2 U18 ( .IN1(n9), .IN2(n15), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_8b_5 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_10 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_9 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_11 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n22), .IN4(n21), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n20), .IN4(n19), .Q(n22) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n18), .IN4(n17), .Q(n20) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n16), .Q(n18) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n16) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n17) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n19) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n21) );
  XOR2X1 U1 ( .IN1(n11), .IN2(n17), .Q(res[1]) );
  INVX0 U2 ( .INP(cin), .ZN(n8) );
  INVX0 U3 ( .INP(n8), .ZN(n9) );
  INVX0 U4 ( .INP(n18), .ZN(n10) );
  INVX0 U13 ( .INP(n10), .ZN(n11) );
  INVX0 U14 ( .INP(n22), .ZN(n12) );
  INVX0 U15 ( .INP(n12), .ZN(n13) );
  XOR2X2 U16 ( .IN1(n15), .IN2(n19), .Q(res[2]) );
  INVX0 U17 ( .INP(n20), .ZN(n14) );
  INVX0 U18 ( .INP(n14), .ZN(n15) );
  XOR2X2 U19 ( .IN1(n9), .IN2(n16), .Q(res[0]) );
  XOR2X2 U20 ( .IN1(n13), .IN2(n21), .Q(res[3]) );
endmodule


module mas_ripple_carry_adder_4b_12 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n20), .IN4(n19), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n18), .IN4(n17), .Q(n20) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n16), .IN4(n15), .Q(n18) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n14), .Q(n16) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n14) );
  XOR2X1 U10 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n15) );
  XOR2X1 U11 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n17) );
  XOR2X1 U12 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n19) );
  XOR2X2 U1 ( .IN1(n18), .IN2(n17), .Q(res[2]) );
  XOR2X1 U2 ( .IN1(n9), .IN2(n15), .Q(res[1]) );
  XOR2X1 U3 ( .IN1(n13), .IN2(n14), .Q(res[0]) );
  INVX0 U4 ( .INP(n16), .ZN(n8) );
  INVX0 U13 ( .INP(n8), .ZN(n9) );
  INVX0 U14 ( .INP(n20), .ZN(n10) );
  INVX0 U15 ( .INP(n10), .ZN(n11) );
  INVX0 U16 ( .INP(cin), .ZN(n12) );
  INVX0 U17 ( .INP(n12), .ZN(n13) );
  XOR2X2 U18 ( .IN1(n11), .IN2(n19), .Q(res[3]) );
endmodule


module mas_ripple_carry_adder_8b_6 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_12 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_11 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_16b_3 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_8b_6 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), 
        .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_5 rca1 ( .in1(in1[15:8]), .in2(in2[15:8]), .cin(c), 
        .cout(cout), .res(res[15:8]) );
endmodule


module mas_ripple_carry_adder_4b_13 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22;

  AO22X1 U5 ( .IN1(n15), .IN2(in2[3]), .IN3(n22), .IN4(n21), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n20), .IN4(n19), .Q(n22) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n18), .IN4(n17), .Q(n20) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n16), .Q(n18) );
  XOR2X1 U1 ( .IN1(n13), .IN2(n21), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n19), .Q(res[2]) );
  XOR2X1 U3 ( .IN1(n11), .IN2(n10), .Q(res[1]) );
  XOR2X2 U4 ( .IN1(cin), .IN2(n9), .Q(res[0]) );
  INVX0 U9 ( .INP(n16), .ZN(n8) );
  INVX0 U10 ( .INP(n8), .ZN(n9) );
  DELLN2X2 U11 ( .INP(n17), .Z(n10) );
  DELLN2X2 U12 ( .INP(n18), .Z(n11) );
  DELLN2X2 U13 ( .INP(n20), .Z(n12) );
  DELLN2X2 U14 ( .INP(n22), .Z(n13) );
  XOR2X2 U15 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n17) );
  XOR2X2 U16 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n16) );
  INVX0 U17 ( .INP(in1[3]), .ZN(n14) );
  INVX0 U18 ( .INP(n14), .ZN(n15) );
  XOR2X1 U19 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n19) );
  XOR2X1 U20 ( .IN1(n15), .IN2(in2[3]), .Q(n21) );
endmodule


module mas_ripple_carry_adder_4b_14 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25;

  AO22X1 U5 ( .IN1(n16), .IN2(in2[3]), .IN3(n25), .IN4(n24), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n22), .IN4(n23), .Q(n25) );
  AO22X1 U7 ( .IN1(n18), .IN2(in2[1]), .IN3(n20), .IN4(n21), .Q(n23) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n19), .Q(n21) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n19) );
  XOR2X1 U10 ( .IN1(n18), .IN2(in2[1]), .Q(n20) );
  XOR2X1 U12 ( .IN1(n16), .IN2(in2[3]), .Q(n24) );
  DELLN1X2 U1 ( .INP(n22), .Z(n8) );
  XOR2X1 U2 ( .IN1(n12), .IN2(n24), .Q(res[3]) );
  XOR2X1 U3 ( .IN1(n9), .IN2(n20), .Q(res[1]) );
  XOR2X1 U4 ( .IN1(n14), .IN2(n19), .Q(res[0]) );
  XOR2X1 U11 ( .IN1(n11), .IN2(n8), .Q(res[2]) );
  DELLN2X2 U13 ( .INP(n21), .Z(n9) );
  INVX0 U14 ( .INP(n23), .ZN(n10) );
  INVX0 U15 ( .INP(n10), .ZN(n11) );
  DELLN2X2 U16 ( .INP(n25), .Z(n12) );
  INVX0 U17 ( .INP(cin), .ZN(n13) );
  INVX0 U18 ( .INP(n13), .ZN(n14) );
  XOR2X2 U19 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n22) );
  INVX0 U20 ( .INP(in1[3]), .ZN(n15) );
  INVX0 U21 ( .INP(n15), .ZN(n16) );
  INVX0 U22 ( .INP(in1[1]), .ZN(n17) );
  INVX0 U23 ( .INP(n17), .ZN(n18) );
endmodule


module mas_ripple_carry_adder_8b_7 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c;

  mas_ripple_carry_adder_4b_14 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_13 rca1 ( .in1(in1[7:4]), .in2(in2[7:4]), .cin(c), 
        .cout(cout), .res(res[7:4]) );
endmodule


module mas_ripple_carry_adder_4b_15 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;

  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n17), .IN4(n18), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n15), .IN4(n16), .Q(n18) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n13), .IN4(n14), .Q(n16) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n12), .Q(n14) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n12) );
  XOR2X1 U1 ( .IN1(n8), .IN2(n10), .Q(res[3]) );
  XOR2X1 U2 ( .IN1(n11), .IN2(n12), .Q(res[0]) );
  DELLN2X2 U3 ( .INP(n18), .Z(n8) );
  INVX0 U4 ( .INP(n17), .ZN(n9) );
  INVX0 U10 ( .INP(n9), .ZN(n10) );
  DELLN1X2 U11 ( .INP(cin), .Z(n11) );
  XOR2X2 U12 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n13) );
  XOR2X2 U13 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n15) );
  XOR2X2 U14 ( .IN1(n16), .IN2(n15), .Q(res[2]) );
  XOR2X2 U15 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n17) );
  XOR2X2 U16 ( .IN1(n14), .IN2(n13), .Q(res[1]) );
endmodule


module mas_ripple_carry_adder_4b_16 ( in1, in2, cin, cout, res );
  input [3:0] in1;
  input [3:0] in2;
  output [3:0] res;
  input cin;
  output cout;
  wire   n8, n9, n10, n11, n12, n13, n14;

  XOR2X1 U4 ( .IN1(cin), .IN2(n8), .Q(res[0]) );
  AO22X1 U5 ( .IN1(in1[3]), .IN2(in2[3]), .IN3(n13), .IN4(n14), .Q(cout) );
  AO22X1 U6 ( .IN1(in1[2]), .IN2(in2[2]), .IN3(n11), .IN4(n12), .Q(n14) );
  AO22X1 U7 ( .IN1(in1[1]), .IN2(in2[1]), .IN3(n9), .IN4(n10), .Q(n12) );
  AO22X1 U8 ( .IN1(in1[0]), .IN2(in2[0]), .IN3(cin), .IN4(n8), .Q(n10) );
  XOR2X1 U9 ( .IN1(in1[0]), .IN2(in2[0]), .Q(n8) );
  XOR2X1 U1 ( .IN1(n12), .IN2(n11), .Q(res[2]) );
  XOR2X2 U2 ( .IN1(in1[2]), .IN2(in2[2]), .Q(n11) );
  XOR2X2 U3 ( .IN1(in1[1]), .IN2(in2[1]), .Q(n9) );
  XOR2X2 U10 ( .IN1(in1[3]), .IN2(in2[3]), .Q(n13) );
  XOR2X2 U11 ( .IN1(n10), .IN2(n9), .Q(res[1]) );
  XOR2X2 U12 ( .IN1(n14), .IN2(n13), .Q(res[3]) );
endmodule


module mas_ripple_carry_adder_8b_8 ( in1, in2, cin, cout, res );
  input [7:0] in1;
  input [7:0] in2;
  output [7:0] res;
  input cin;
  output cout;
  wire   c, n1, n2;

  mas_ripple_carry_adder_4b_16 rca0 ( .in1(in1[3:0]), .in2(in2[3:0]), .cin(cin), .cout(c), .res(res[3:0]) );
  mas_ripple_carry_adder_4b_15 rca1 ( .in1({in1[7:5], n2}), .in2(in2[7:4]), 
        .cin(c), .cout(cout), .res(res[7:4]) );
  INVX0 U1 ( .INP(in1[4]), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(n2) );
endmodule


module mas_ripple_carry_adder_16b_4 ( in1, in2, cin, cout, res );
  input [15:0] in1;
  input [15:0] in2;
  output [15:0] res;
  input cin;
  output cout;
  wire   c, n1, n2;

  mas_ripple_carry_adder_8b_8 rca0 ( .in1(in1[7:0]), .in2(in2[7:0]), .cin(cin), 
        .cout(c), .res(res[7:0]) );
  mas_ripple_carry_adder_8b_7 rca1 ( .in1({in1[15], n2, in1[13:8]}), .in2(
        in2[15:8]), .cin(c), .cout(cout), .res(res[15:8]) );
  INVX0 U1 ( .INP(in1[14]), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(n2) );
endmodule


module mas_ripple_carry_adder_32b_2 ( in1, in2, cin, cout, res );
  input [31:0] in1;
  input [31:0] in2;
  output [31:0] res;
  input cin;
  output cout;
  wire   c, n1, n2;

  mas_ripple_carry_adder_16b_4 rca0 ( .in1({in1[15:9], n2, in1[7:0]}), .in2(
        in2[15:0]), .cin(cin), .cout(c), .res(res[15:0]) );
  mas_ripple_carry_adder_16b_3 rca1 ( .in1(in1[31:16]), .in2(in2[31:16]), 
        .cin(c), .cout(cout), .res(res[31:16]) );
  INVX0 U1 ( .INP(in1[8]), .ZN(n1) );
  INVX0 U2 ( .INP(n1), .ZN(n2) );
endmodule


module mas_mul_vedic_32x32 ( clk, rstn, in1, in2, res );
  input [31:0] in1;
  input [31:0] in2;
  output [63:0] res;
  input clk, rstn;
  wire   n_18_net__16_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55;
  wire   [31:0] in1_r;
  wire   [31:0] in2_r;
  wire   [31:0] mulv_out0;
  wire   [31:0] mulv_out1;
  wire   [31:0] mulv_out2;
  wire   [31:0] mulv_out3;
  wire   [1:0] rca_cout;
  wire   [31:0] rca_out0;
  wire   [31:0] rca_out1;
  wire   [63:32] res_w;

  mas_mul_vedic_16x16_0 mulv_16b_0 ( .in1({in1_r[15:4], n12, in1_r[2:0]}), 
        .in2({in2_r[15:11], n2, in2_r[9], n4, n8, in2_r[6], n10, n6, 
        in2_r[3:1], n14}), .res(mulv_out0) );
  mas_mul_vedic_16x16_3 mulv_16b_1 ( .in1({in1_r[15:6], n24, n20, in1_r[3], 
        n28, n32, n26}), .in2(in2_r[31:16]), .res(mulv_out1) );
  mas_mul_vedic_16x16_2 mulv_16b_2 ( .in1(in1_r[31:16]), .in2({in2_r[15:10], 
        n16, in2_r[8:7], n22, in2_r[5:4], n30, n18, in2_r[1:0]}), .res(
        mulv_out2) );
  mas_mul_vedic_16x16_1 mulv_16b_3 ( .in1(in1_r[31:16]), .in2(in2_r[31:16]), 
        .res(mulv_out3) );
  mas_ripple_carry_adder_32b_0 add_32b_0 ( .in1(mulv_out1), .in2(mulv_out2), 
        .cin(1'b0), .cout(rca_cout[0]), .res(rca_out0) );
  mas_ripple_carry_adder_32b_2 add_32b_1 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        mulv_out0[31:16]}), .in2(rca_out0), .cin(1'b0), .cout(rca_cout[1]), 
        .res(rca_out1) );
  mas_ripple_carry_adder_32b_1 add_32b_2 ( .in1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        n_18_net__16_, rca_out1[31:16]}), .in2(mulv_out3), .cin(1'b0), .res(
        res_w) );
  DFFARX1 in1_r_reg_31_ ( .D(in1[31]), .CLK(clk), .RSTB(n55), .Q(in1_r[31]) );
  DFFARX1 in1_r_reg_30_ ( .D(in1[30]), .CLK(clk), .RSTB(n55), .Q(in1_r[30]) );
  DFFARX1 in1_r_reg_29_ ( .D(in1[29]), .CLK(clk), .RSTB(n54), .Q(in1_r[29]) );
  DFFARX1 in1_r_reg_28_ ( .D(in1[28]), .CLK(clk), .RSTB(n54), .Q(in1_r[28]) );
  DFFARX1 in1_r_reg_26_ ( .D(in1[26]), .CLK(clk), .RSTB(n54), .Q(in1_r[26]) );
  DFFARX1 in1_r_reg_25_ ( .D(in1[25]), .CLK(clk), .RSTB(n54), .Q(in1_r[25]) );
  DFFARX1 in1_r_reg_24_ ( .D(in1[24]), .CLK(clk), .RSTB(n54), .Q(in1_r[24]) );
  DFFARX1 in1_r_reg_23_ ( .D(in1[23]), .CLK(clk), .RSTB(n54), .Q(in1_r[23]) );
  DFFARX1 in1_r_reg_22_ ( .D(in1[22]), .CLK(clk), .RSTB(n53), .Q(in1_r[22]) );
  DFFARX1 in1_r_reg_21_ ( .D(in1[21]), .CLK(clk), .RSTB(n53), .Q(in1_r[21]) );
  DFFARX1 in1_r_reg_19_ ( .D(in1[19]), .CLK(clk), .RSTB(n53), .Q(in1_r[19]) );
  DFFARX1 in1_r_reg_17_ ( .D(in1[17]), .CLK(clk), .RSTB(n53), .Q(in1_r[17]) );
  DFFARX1 in1_r_reg_16_ ( .D(in1[16]), .CLK(clk), .RSTB(n53), .Q(in1_r[16]) );
  DFFARX1 in1_r_reg_15_ ( .D(in1[15]), .CLK(clk), .RSTB(n52), .Q(in1_r[15]) );
  DFFARX1 in1_r_reg_14_ ( .D(in1[14]), .CLK(clk), .RSTB(n52), .Q(in1_r[14]) );
  DFFARX1 in1_r_reg_13_ ( .D(in1[13]), .CLK(clk), .RSTB(n52), .Q(in1_r[13]) );
  DFFARX1 in1_r_reg_11_ ( .D(in1[11]), .CLK(clk), .RSTB(n52), .Q(in1_r[11]) );
  DFFARX1 in1_r_reg_10_ ( .D(in1[10]), .CLK(clk), .RSTB(n52), .Q(in1_r[10]) );
  DFFARX1 in1_r_reg_8_ ( .D(in1[8]), .CLK(clk), .RSTB(n51), .Q(in1_r[8]) );
  DFFARX1 in1_r_reg_7_ ( .D(in1[7]), .CLK(clk), .RSTB(n51), .Q(in1_r[7]) );
  DFFARX1 in1_r_reg_6_ ( .D(in1[6]), .CLK(clk), .RSTB(n51), .Q(in1_r[6]) );
  DFFARX1 in2_r_reg_31_ ( .D(in2[31]), .CLK(clk), .RSTB(n50), .Q(in2_r[31]) );
  DFFARX1 in2_r_reg_30_ ( .D(in2[30]), .CLK(clk), .RSTB(n50), .Q(in2_r[30]) );
  DFFARX1 in2_r_reg_29_ ( .D(in2[29]), .CLK(clk), .RSTB(n50), .Q(in2_r[29]) );
  DFFARX1 in2_r_reg_28_ ( .D(in2[28]), .CLK(clk), .RSTB(n50), .Q(in2_r[28]) );
  DFFARX1 in2_r_reg_27_ ( .D(in2[27]), .CLK(clk), .RSTB(n50), .Q(in2_r[27]) );
  DFFARX1 in2_r_reg_26_ ( .D(in2[26]), .CLK(clk), .RSTB(n49), .Q(in2_r[26]) );
  DFFARX1 in2_r_reg_25_ ( .D(in2[25]), .CLK(clk), .RSTB(n49), .Q(in2_r[25]) );
  DFFARX1 in2_r_reg_24_ ( .D(in2[24]), .CLK(clk), .RSTB(n49), .Q(in2_r[24]) );
  DFFARX1 in2_r_reg_23_ ( .D(in2[23]), .CLK(clk), .RSTB(n49), .Q(in2_r[23]) );
  DFFARX1 in2_r_reg_22_ ( .D(in2[22]), .CLK(clk), .RSTB(n49), .Q(in2_r[22]) );
  DFFARX1 in2_r_reg_21_ ( .D(in2[21]), .CLK(clk), .RSTB(n49), .Q(in2_r[21]) );
  DFFARX1 in2_r_reg_20_ ( .D(in2[20]), .CLK(clk), .RSTB(n49), .Q(in2_r[20]) );
  DFFARX1 in2_r_reg_19_ ( .D(in2[19]), .CLK(clk), .RSTB(n48), .Q(in2_r[19]) );
  DFFARX1 in2_r_reg_17_ ( .D(in2[17]), .CLK(clk), .RSTB(n48), .Q(in2_r[17]) );
  DFFARX1 in2_r_reg_16_ ( .D(in2[16]), .CLK(clk), .RSTB(n48), .Q(in2_r[16]) );
  DFFARX1 in2_r_reg_15_ ( .D(in2[15]), .CLK(clk), .RSTB(n48), .Q(in2_r[15]) );
  DFFARX1 in2_r_reg_14_ ( .D(in2[14]), .CLK(clk), .RSTB(n48), .Q(in2_r[14]) );
  DFFARX1 in2_r_reg_13_ ( .D(in2[13]), .CLK(clk), .RSTB(n48), .Q(in2_r[13]) );
  DFFARX1 in2_r_reg_12_ ( .D(in2[12]), .CLK(clk), .RSTB(n47), .Q(in2_r[12]) );
  DFFARX1 in2_r_reg_11_ ( .D(in2[11]), .CLK(clk), .RSTB(n47), .Q(in2_r[11]) );
  DFFARX1 in2_r_reg_1_ ( .D(in2[1]), .CLK(clk), .RSTB(n46), .Q(in2_r[1]) );
  DFFARX1 res_reg_0_ ( .D(mulv_out0[0]), .CLK(clk), .RSTB(n46), .Q(res[0]) );
  DFFARX1 res_reg_1_ ( .D(mulv_out0[1]), .CLK(clk), .RSTB(n45), .Q(res[1]) );
  DFFARX1 res_reg_2_ ( .D(mulv_out0[2]), .CLK(clk), .RSTB(n45), .Q(res[2]) );
  DFFARX1 res_reg_3_ ( .D(mulv_out0[3]), .CLK(clk), .RSTB(n45), .Q(res[3]) );
  DFFARX1 res_reg_4_ ( .D(mulv_out0[4]), .CLK(clk), .RSTB(n45), .Q(res[4]) );
  DFFARX1 res_reg_5_ ( .D(mulv_out0[5]), .CLK(clk), .RSTB(n45), .Q(res[5]) );
  DFFARX1 res_reg_6_ ( .D(mulv_out0[6]), .CLK(clk), .RSTB(n45), .Q(res[6]) );
  DFFARX1 res_reg_7_ ( .D(mulv_out0[7]), .CLK(clk), .RSTB(n45), .Q(res[7]) );
  DFFARX1 res_reg_8_ ( .D(mulv_out0[8]), .CLK(clk), .RSTB(n44), .Q(res[8]) );
  DFFARX1 res_reg_9_ ( .D(mulv_out0[9]), .CLK(clk), .RSTB(n44), .Q(res[9]) );
  DFFARX1 res_reg_10_ ( .D(mulv_out0[10]), .CLK(clk), .RSTB(n44), .Q(res[10])
         );
  DFFARX1 res_reg_11_ ( .D(mulv_out0[11]), .CLK(clk), .RSTB(n44), .Q(res[11])
         );
  DFFARX1 res_reg_12_ ( .D(mulv_out0[12]), .CLK(clk), .RSTB(n44), .Q(res[12])
         );
  DFFARX1 res_reg_13_ ( .D(mulv_out0[13]), .CLK(clk), .RSTB(n44), .Q(res[13])
         );
  DFFARX1 res_reg_14_ ( .D(mulv_out0[14]), .CLK(clk), .RSTB(n44), .Q(res[14])
         );
  DFFARX1 res_reg_15_ ( .D(mulv_out0[15]), .CLK(clk), .RSTB(n43), .Q(res[15])
         );
  DFFARX1 res_reg_16_ ( .D(rca_out1[0]), .CLK(clk), .RSTB(n43), .Q(res[16]) );
  DFFARX1 res_reg_17_ ( .D(rca_out1[1]), .CLK(clk), .RSTB(n43), .Q(res[17]) );
  DFFARX1 res_reg_18_ ( .D(rca_out1[2]), .CLK(clk), .RSTB(n43), .Q(res[18]) );
  DFFARX1 res_reg_19_ ( .D(rca_out1[3]), .CLK(clk), .RSTB(n43), .Q(res[19]) );
  DFFARX1 res_reg_20_ ( .D(rca_out1[4]), .CLK(clk), .RSTB(n43), .Q(res[20]) );
  DFFARX1 res_reg_21_ ( .D(rca_out1[5]), .CLK(clk), .RSTB(n43), .Q(res[21]) );
  DFFARX1 res_reg_22_ ( .D(rca_out1[6]), .CLK(clk), .RSTB(n42), .Q(res[22]) );
  DFFARX1 res_reg_23_ ( .D(rca_out1[7]), .CLK(clk), .RSTB(n42), .Q(res[23]) );
  DFFARX1 res_reg_24_ ( .D(rca_out1[8]), .CLK(clk), .RSTB(n42), .Q(res[24]) );
  DFFARX1 res_reg_25_ ( .D(rca_out1[9]), .CLK(clk), .RSTB(n42), .Q(res[25]) );
  DFFARX1 res_reg_26_ ( .D(rca_out1[10]), .CLK(clk), .RSTB(n42), .Q(res[26])
         );
  DFFARX1 res_reg_27_ ( .D(rca_out1[11]), .CLK(clk), .RSTB(n42), .Q(res[27])
         );
  DFFARX1 res_reg_28_ ( .D(rca_out1[12]), .CLK(clk), .RSTB(n42), .Q(res[28])
         );
  DFFARX1 res_reg_29_ ( .D(rca_out1[13]), .CLK(clk), .RSTB(n41), .Q(res[29])
         );
  DFFARX1 res_reg_30_ ( .D(rca_out1[14]), .CLK(clk), .RSTB(n41), .Q(res[30])
         );
  DFFARX1 res_reg_31_ ( .D(rca_out1[15]), .CLK(clk), .RSTB(n41), .Q(res[31])
         );
  DFFARX1 res_reg_32_ ( .D(res_w[32]), .CLK(clk), .RSTB(n41), .Q(res[32]) );
  DFFARX1 res_reg_33_ ( .D(res_w[33]), .CLK(clk), .RSTB(n41), .Q(res[33]) );
  DFFARX1 res_reg_34_ ( .D(res_w[34]), .CLK(clk), .RSTB(n41), .Q(res[34]) );
  DFFARX1 res_reg_35_ ( .D(res_w[35]), .CLK(clk), .RSTB(n41), .Q(res[35]) );
  DFFARX1 res_reg_36_ ( .D(res_w[36]), .CLK(clk), .RSTB(n40), .Q(res[36]) );
  DFFARX1 res_reg_37_ ( .D(res_w[37]), .CLK(clk), .RSTB(n40), .Q(res[37]) );
  DFFARX1 res_reg_38_ ( .D(res_w[38]), .CLK(clk), .RSTB(n40), .Q(res[38]) );
  DFFARX1 res_reg_39_ ( .D(res_w[39]), .CLK(clk), .RSTB(n40), .Q(res[39]) );
  DFFARX1 res_reg_40_ ( .D(res_w[40]), .CLK(clk), .RSTB(n40), .Q(res[40]) );
  DFFARX1 res_reg_41_ ( .D(res_w[41]), .CLK(clk), .RSTB(n40), .Q(res[41]) );
  DFFARX1 res_reg_42_ ( .D(res_w[42]), .CLK(clk), .RSTB(n40), .Q(res[42]) );
  DFFARX1 res_reg_43_ ( .D(res_w[43]), .CLK(clk), .RSTB(n39), .Q(res[43]) );
  DFFARX1 res_reg_44_ ( .D(res_w[44]), .CLK(clk), .RSTB(n39), .Q(res[44]) );
  DFFARX1 res_reg_45_ ( .D(res_w[45]), .CLK(clk), .RSTB(n39), .Q(res[45]) );
  DFFARX1 res_reg_46_ ( .D(res_w[46]), .CLK(clk), .RSTB(n39), .Q(res[46]) );
  DFFARX1 res_reg_47_ ( .D(res_w[47]), .CLK(clk), .RSTB(n39), .Q(res[47]) );
  DFFARX1 res_reg_48_ ( .D(res_w[48]), .CLK(clk), .RSTB(n39), .Q(res[48]) );
  DFFARX1 res_reg_49_ ( .D(res_w[49]), .CLK(clk), .RSTB(n39), .Q(res[49]) );
  DFFARX1 res_reg_50_ ( .D(res_w[50]), .CLK(clk), .RSTB(n38), .Q(res[50]) );
  DFFARX1 res_reg_51_ ( .D(res_w[51]), .CLK(clk), .RSTB(n38), .Q(res[51]) );
  DFFARX1 res_reg_52_ ( .D(res_w[52]), .CLK(clk), .RSTB(n38), .Q(res[52]) );
  DFFARX1 res_reg_53_ ( .D(res_w[53]), .CLK(clk), .RSTB(n38), .Q(res[53]) );
  DFFARX1 res_reg_54_ ( .D(res_w[54]), .CLK(clk), .RSTB(n38), .Q(res[54]) );
  DFFARX1 res_reg_55_ ( .D(res_w[55]), .CLK(clk), .RSTB(n38), .Q(res[55]) );
  DFFARX1 res_reg_56_ ( .D(res_w[56]), .CLK(clk), .RSTB(n38), .Q(res[56]) );
  DFFARX1 res_reg_57_ ( .D(res_w[57]), .CLK(clk), .RSTB(n37), .Q(res[57]) );
  DFFARX1 res_reg_58_ ( .D(res_w[58]), .CLK(clk), .RSTB(n37), .Q(res[58]) );
  DFFARX1 res_reg_59_ ( .D(res_w[59]), .CLK(clk), .RSTB(n37), .Q(res[59]) );
  DFFARX1 in1_r_reg_20_ ( .D(in1[20]), .CLK(clk), .RSTB(n53), .Q(in1_r[20]) );
  DFFARX1 in1_r_reg_9_ ( .D(in1[9]), .CLK(clk), .RSTB(n52), .Q(in1_r[9]) );
  DFFARX1 in1_r_reg_12_ ( .D(in1[12]), .CLK(clk), .RSTB(n52), .Q(in1_r[12]) );
  DFFARX1 res_reg_60_ ( .D(res_w[60]), .CLK(clk), .RSTB(n37), .Q(res[60]) );
  DFFARX1 res_reg_61_ ( .D(res_w[61]), .CLK(clk), .RSTB(n37), .Q(res[61]) );
  DFFARX1 res_reg_62_ ( .D(res_w[62]), .CLK(clk), .RSTB(n37), .Q(res[62]) );
  DFFARX2 in1_r_reg_27_ ( .D(in1[27]), .CLK(clk), .RSTB(n54), .Q(in1_r[27]) );
  DFFARX2 res_reg_63_ ( .D(res_w[63]), .CLK(clk), .RSTB(n37), .Q(res[63]) );
  DFFARX2 in2_r_reg_3_ ( .D(in2[3]), .CLK(clk), .RSTB(n46), .Q(in2_r[3]), .QN(
        n29) );
  DFFARX2 in2_r_reg_2_ ( .D(in2[2]), .CLK(clk), .RSTB(n46), .Q(in2_r[2]), .QN(
        n17) );
  DFFARX2 in1_r_reg_1_ ( .D(in1[1]), .CLK(clk), .RSTB(n50), .Q(in1_r[1]), .QN(
        n31) );
  DFFARX2 in1_r_reg_0_ ( .D(in1[0]), .CLK(clk), .RSTB(n50), .Q(in1_r[0]), .QN(
        n25) );
  DFFARX2 in1_r_reg_2_ ( .D(in1[2]), .CLK(clk), .RSTB(n51), .Q(in1_r[2]), .QN(
        n27) );
  DFFARX2 in2_r_reg_6_ ( .D(in2[6]), .CLK(clk), .RSTB(n47), .Q(in2_r[6]), .QN(
        n21) );
  DFFARX2 in1_r_reg_5_ ( .D(in1[5]), .CLK(clk), .RSTB(n51), .Q(in1_r[5]), .QN(
        n23) );
  DFFARX2 in1_r_reg_4_ ( .D(in1[4]), .CLK(clk), .RSTB(n51), .Q(in1_r[4]), .QN(
        n19) );
  DFFARX2 in2_r_reg_9_ ( .D(in2[9]), .CLK(clk), .RSTB(n47), .Q(in2_r[9]), .QN(
        n15) );
  DFFARX2 in2_r_reg_8_ ( .D(in2[8]), .CLK(clk), .RSTB(n47), .Q(in2_r[8]), .QN(
        n3) );
  DFFARX2 in2_r_reg_0_ ( .D(in2[0]), .CLK(clk), .RSTB(n46), .Q(in2_r[0]), .QN(
        n13) );
  DFFARX2 in1_r_reg_3_ ( .D(in1[3]), .CLK(clk), .RSTB(n51), .Q(in1_r[3]), .QN(
        n11) );
  DFFARX2 in2_r_reg_5_ ( .D(in2[5]), .CLK(clk), .RSTB(n46), .Q(in2_r[5]), .QN(
        n9) );
  DFFARX2 in2_r_reg_18_ ( .D(in2[18]), .CLK(clk), .RSTB(n48), .Q(in2_r[18]) );
  DFFARX2 in1_r_reg_18_ ( .D(in1[18]), .CLK(clk), .RSTB(n53), .Q(in1_r[18]) );
  DFFARX2 in2_r_reg_7_ ( .D(in2[7]), .CLK(clk), .RSTB(n47), .Q(in2_r[7]), .QN(
        n7) );
  DFFARX2 in2_r_reg_4_ ( .D(in2[4]), .CLK(clk), .RSTB(n46), .Q(in2_r[4]), .QN(
        n5) );
  DFFARX2 in2_r_reg_10_ ( .D(in2[10]), .CLK(clk), .RSTB(n47), .Q(in2_r[10]), 
        .QN(n1) );
  INVX0 U4 ( .INP(n1), .ZN(n2) );
  INVX0 U5 ( .INP(n3), .ZN(n4) );
  INVX0 U6 ( .INP(n5), .ZN(n6) );
  INVX0 U7 ( .INP(n7), .ZN(n8) );
  INVX0 U8 ( .INP(n9), .ZN(n10) );
  INVX0 U9 ( .INP(n11), .ZN(n12) );
  INVX0 U10 ( .INP(n13), .ZN(n14) );
  INVX0 U11 ( .INP(n15), .ZN(n16) );
  INVX0 U12 ( .INP(n17), .ZN(n18) );
  INVX0 U13 ( .INP(n19), .ZN(n20) );
  INVX0 U14 ( .INP(n21), .ZN(n22) );
  INVX0 U15 ( .INP(n23), .ZN(n24) );
  INVX0 U16 ( .INP(n25), .ZN(n26) );
  INVX0 U17 ( .INP(n27), .ZN(n28) );
  INVX0 U18 ( .INP(n29), .ZN(n30) );
  INVX0 U19 ( .INP(n31), .ZN(n32) );
  OR2X2 U20 ( .IN1(rca_cout[1]), .IN2(rca_cout[0]), .Q(n_18_net__16_) );
  NBUFFX2 U21 ( .INP(n33), .Z(n37) );
  NBUFFX2 U22 ( .INP(n33), .Z(n38) );
  NBUFFX2 U23 ( .INP(n33), .Z(n39) );
  NBUFFX2 U24 ( .INP(n33), .Z(n40) );
  NBUFFX2 U25 ( .INP(n33), .Z(n41) );
  NBUFFX2 U26 ( .INP(n34), .Z(n42) );
  NBUFFX2 U27 ( .INP(n34), .Z(n43) );
  NBUFFX2 U28 ( .INP(n34), .Z(n44) );
  NBUFFX2 U29 ( .INP(n34), .Z(n45) );
  NBUFFX2 U30 ( .INP(n34), .Z(n46) );
  NBUFFX2 U31 ( .INP(n35), .Z(n47) );
  NBUFFX2 U32 ( .INP(n35), .Z(n48) );
  NBUFFX2 U33 ( .INP(n35), .Z(n49) );
  NBUFFX2 U34 ( .INP(n35), .Z(n50) );
  NBUFFX2 U35 ( .INP(n35), .Z(n51) );
  NBUFFX2 U36 ( .INP(n36), .Z(n52) );
  NBUFFX2 U37 ( .INP(n36), .Z(n53) );
  NBUFFX2 U38 ( .INP(n36), .Z(n54) );
  NBUFFX2 U39 ( .INP(n36), .Z(n55) );
  NBUFFX2 U40 ( .INP(rstn), .Z(n33) );
  NBUFFX2 U41 ( .INP(rstn), .Z(n34) );
  NBUFFX2 U42 ( .INP(rstn), .Z(n35) );
  NBUFFX2 U43 ( .INP(rstn), .Z(n36) );
endmodule

