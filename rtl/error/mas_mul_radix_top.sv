module mas_mul_radix_top (
  input               clk,
  input               rstn,
  input        [31:0] in1,
  input        [31:0] in2,
  output logic [63:0] res
);

logic [31:0] in1_r;
logic [31:0] in2_r;

wire         flag0;
wire         flag1;
wire         flag2;
wire         flag3;
wire         flag4;
wire         flag5;
wire         flag6;
wire         flag7;
wire         flag8;
wire         flag9;
wire         flag10;
wire         flag11;
wire         flag12;
wire         flag13;
wire         flag14;
wire         flag15;
wire         flag16;

wire  [31:0] res0;
wire  [31:0] res1;
wire  [31:0] res2;
wire  [31:0] res3;
wire  [31:0] res4;
wire  [31:0] res5;
wire  [31:0] res6;
wire  [31:0] res7;
wire  [31:0] res8;
wire  [31:0] res9;
wire  [31:0] res10;
wire  [31:0] res11;
wire  [31:0] res12;
wire  [31:0] res13;
wire  [31:0] res14;
wire  [31:0] res15;
wire  [31:0] res16;
wire  [63:0] res_w;

wire  [63:0] tmp0;
wire  [63:0] tmp1;
wire  [63:0] tmp2;
wire  [63:0] tmp3;
wire  [63:0] tmp4;

mas_radix_encoder enc0  (in1, {in2[1:0],1'b0}, flag0 , res0 );
mas_radix_encoder enc1  (in1, in2[3:1]       , flag1 , res1 );
mas_radix_encoder enc2  (in1, in2[5:3]       , flag2 , res2 );
mas_radix_encoder enc3  (in1, in2[7:5]       , flag3 , res3 );
mas_radix_encoder enc4  (in1, in2[9:7]       , flag4 , res4 );
mas_radix_encoder enc5  (in1, in2[11:9]      , flag5 , res5 );
mas_radix_encoder enc6  (in1, in2[13:11]     , flag6 , res6 );
mas_radix_encoder enc7  (in1, in2[15:13]     , flag7 , res7 );
mas_radix_encoder enc8  (in1, in2[17:15]     , flag8 , res8 );
mas_radix_encoder enc9  (in1, in2[19:17]     , flag9 , res9 );
mas_radix_encoder enc10 (in1, in2[21:19]     , flag10, res10);
mas_radix_encoder enc11 (in1, in2[23:21]     , flag11, res11);
mas_radix_encoder enc12 (in1, in2[25:23]     , flag12, res12);
mas_radix_encoder enc13 (in1, in2[27:25]     , flag13, res13);
mas_radix_encoder enc14 (in1, in2[29:27]     , flag14, res14);
mas_radix_encoder enc15 (in1, in2[31:29]     , flag15, res15);
mas_radix_encoder enc16 (in1, {2'b0,in2[31]} , flag16, res16);

mas_radix_adder 
add0
(
.in1    ({32'b0,res0}),
.in2    ({30'b0,res1,2'b0}),
.in3    ({28'b0,res2,4'b0}),
.in4    ({26'b0,res3,6'b0}),
.flag1  (flag0),
.flag2  (flag1),
.flag3  (flag2),
.flag4  (flag3),
.res    (tmp0)
);

mas_radix_adder 
add1
(
.in1    (tmp0),
.in2    ({24'b0,res4,8'b0}),
.in3    ({22'b0,res5,10'b0}),
.in4    ({20'b0,res6,12'b0}),
.flag1  (1'b0),
.flag2  (flag4),
.flag3  (flag5),
.flag4  (flag6),
.res    (tmp1)
);

mas_radix_adder 
add2
(
.in1    (tmp1),
.in2    ({18'b0,res7,14'b0}),
.in3    ({16'b0,res8,16'b0}),
.in4    ({14'b0,res9,18'b0}),
.flag1  (1'b0),
.flag2  (flag7),
.flag3  (flag8),
.flag4  (flag9),
.res    (tmp2)
);

mas_radix_adder 
add3
(
.in1    (tmp2),
.in2    ({12'b0,res10,20'b0}),
.in3    ({10'b0,res11,22'b0}),
.in4    ({8'b0,res12,24'b0}),
.flag1  (1'b0),
.flag2  (flag10),
.flag3  (flag11),
.flag4  (flag12),
.res    (tmp3)
);

mas_radix_adder 
add4
(
.in1    (tmp3),
.in2    ({6'b0,res13,26'b0}),
.in3    ({4'b0,res14,28'b0}),
.in4    ({2'b0,res15,30'b0}),
.flag1  (1'b0),
.flag2  (flag13),
.flag3  (flag14),
.flag4  (flag15),
.res    (tmp4)
);

assign res_w = (flag16 ? {-res16,31'b0} : {res16,32'b0}) + tmp4;
/*
mas_radix_adder 
add0
(
.in1    ({32'b0,res0}),
.in2    ({30'b0,res1,2'b0}),
.in3    ({28'b0,res2,4'b0}),
.in4    ({26'b0,res3,6'b0}),
.flag1  (flag0),
.flag2  (flag1),
.flag3  (flag2),
.flag4  (flag3),
.res    (tmp0)
);

mas_radix_adder 
add1
(
.in1    (tmp0),
.in2    ({24'b0,res4,8'b0}),
.in3    ({22'b0,res5,10'b0}),
.in4    ({20'b0,res6,12'b0}),
.flag1  (1'b0),
.flag2  (flag4),
.flag3  (flag5),
.flag4  (flag6),
.res    (tmp1)
);

mas_radix_adder 
add2
(
.in1    (tmp1),
.in2    ({18'b0,res7,14'b0}),
.in3    ({16'b0,res8,16'b0}),
.in4    ({14'b0,res9,18'b0}),
.flag1  (1'b0),
.flag2  (flag7),
.flag3  (flag8),
.flag4  (flag9),
.res    (tmp2)
);

mas_radix_adder 
add3
(
.in1    (tmp2),
.in2    ({12'b0,res10,20'b0}),
.in3    ({10'b0,res11,22'b0}),
.in4    ({8'b0,res12,24'b0}),
.flag1  (1'b0),
.flag2  (flag10),
.flag3  (flag11),
.flag4  (flag12),
.res    (tmp3)
);

mas_radix_adder 
add4
(
.in1    (tmp3),
.in2    ({6'b0,res13,26'b0}),
.in3    ({4'b0,res14,28'b0}),
.in4    ({2'b0,res15,30'b0}),
.flag1  (1'b0),
.flag2  (flag13),
.flag3  (flag14),
.flag4  (flag15),
.res    (tmp4)
);

assign res_w = (flag16 ? {-res16,32'b0} : {res16,32'b0}) + tmp4;
*/
always_ff@(posedge clk, negedge rstn)
begin
  if(!rstn)
  begin
    in1_r <= '0;
    in2_r <= '0;
    res   <= '0;
  end
  else 
  begin
    in1_r <= in1;
    in2_r <= in2;
    res   <= res_w;
  end
end

endmodule
