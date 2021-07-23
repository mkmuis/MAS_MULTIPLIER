
module mas_ripple_carry_adder_32b (
  input  [31:0] in1,
  input  [31:0] in2,
  input        cin,
  output       cout,
  output [31:0] res
);

wire        c  ;

mas_ripple_carry_adder_16b 
rca0 
(
.in1(in1[15:0]), 
.in2(in2[15:0]), 
.cin(cin), 
.cout(c), 
.res(res[15:0])
);

mas_ripple_carry_adder_16b 
rca1 
(
.in1(in1[31:16]), 
.in2(in2[31:16]), 
.cin(c), 
.cout(cout), 
.res(res[31:16])
);

endmodule


