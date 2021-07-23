
module vedic_test;

logic        clk;
logic        rstn;
logic [31:0] in1, in2;
wire  [63:0] res;

mas_mul_vedic_32x32 m32 (clk,rstn,in1,in2,res);

always #2.5 clk = ~clk;

initial begin
  clk  = 0;
  rstn = 0;
  in1  = 0;
  in2  = 0;
  #5;
  rstn = 1;
  #15
  in1 = 32'hFFFFFFFF;
  in2 = 32'hFFFFFFFF;
  #15;
  in1 = 32'h2FFFFFFF;
  in2 = 32'hAFFFFFFF;
  #15
  $finish; 
end

initial
  $monitor("%h*%h, %h",in1,in2,res);

endmodule

