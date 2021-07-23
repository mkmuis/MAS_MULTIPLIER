
module mas_ripple_carry_adder_8b (
  input  [7:0] in1,
  input  [7:0] in2,
  input        cin,
  output       cout,
  output [7:0] res
);

wire        c  ;

mas_ripple_carry_adder_4b 
rca0 
(
.in1(in1[3:0]), 
.in2(in2[3:0]), 
.cin(cin), 
.cout(c), 
.res(res[3:0])
);

mas_ripple_carry_adder_4b 
rca1 
(
.in1(in1[7:4]), 
.in2(in2[7:4]), 
.cin(c), 
.cout(cout), 
.res(res[7:4])
);

endmodule


