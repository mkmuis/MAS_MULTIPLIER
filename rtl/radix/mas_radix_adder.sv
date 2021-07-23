
module mas_radix_adder (
  input  [63:0] in1,
  input  [63:0] in2,
  input  [63:0] in3,
  input  [63:0] in4,
  input         flag1,
  input         flag2,
  input         flag3,
  input         flag4,
  output [63:0] res
);

assign res = (flag1 ? -in1 : in1) +
             (flag2 ? -in2 : in2) +
             (flag3 ? -in3 : in3) +
             (flag4 ? -in4 : in4); 

endmodule
