
module mas_mul_vedic_2x2 (
  input  [1:0] in1,
  input  [1:0] in2,
  output [3:0] res
);

assign res[0] =  in1[0] & in2[0];
assign res[1] = (in1[1] & in2[0]) ^ ( in1[0] & in2[1] );
assign res[2] = (in1[0] & in2[1]) & ( in1[1] & in2[0] ) ^ ( in1[1] & in2[1] );
assign res[3] = (in1[0] & in2[1]) & ( in1[1] & in2[0] ) & ( in1[1] & in2[1] );

endmodule
