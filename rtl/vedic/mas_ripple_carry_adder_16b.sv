
module mas_ripple_carry_adder_16b (
  input  [15:0] in1,
  input  [15:0] in2,
  input        cin,
  output       cout,
  output [15:0] res
);

wire        c  ;

mas_ripple_carry_adder_8b 
rca0 
(
.in1(in1[7:0]), 
.in2(in2[7:0]), 
.cin(cin), 
.cout(c), 
.res(res[7:0])
);

mas_ripple_carry_adder_8b 
rca1 
(
.in1(in1[15:8]), 
.in2(in2[15:8]), 
.cin(c), 
.cout(cout), 
.res(res[15:8])
);

endmodule


