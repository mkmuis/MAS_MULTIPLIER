module radix_test;

logic        clk;
logic        rstn;
logic [31:0] in1;
logic [31:0] in2;

wire  [63:0] res;

always #3 clk = ~clk;

mas_mul_radix_top top (clk,rstn,in1,in2,res);

initial 
begin
  clk  = 0;
  rstn = 0;
  in1  = 0;
  in2  = 0;
  #5;
  rstn = 1;
  #35;
  in1  = 32'h0000_000F;
  in2  = 32'h0000_000F;//assume 7fff_ffff is the max input
  #35;
  in1  = 32'hFFFF_FFFF;
  in2  = 32'hFFFF_FFFF;
  #45;
  $finish; 
end

logic [63:0] exp_res;
/*
always@(*) begin
  if( res != in1*in2 )
  begin
    exp_res <= in1*in2;
    $display("\n%0t,Error: %0h,%0h,\nGot : %0h, \nExp : %0h\n",$time,in1,in2,res,exp_res);
  end
end
*/
always@(posedge clk)
  exp_res <= in1*in2;

initial
  $monitor("%0t,%h,%h,\nGot : %h,\nExp : %h\n",$time,in1,in2,res,exp_res);

endmodule
