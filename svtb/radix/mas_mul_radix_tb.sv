
`include "mas_mul_interface.sv"
 
module radix_tb;
   
bit clk;
bit rstn;

`ifdef RTL
  //Clock Period : 4ns 
  always #2 clk = ~clk;
`else
  //Clock period : 65ns 
  always #32.5 clk = ~clk;
`endif

//Initialization of design 
initial begin
  rstn = 0;
  #5; 
  rstn = 1;
end

//Multipliers interface 
mul_intf intf(clk,rstn);
 
//Test program
radix_test vt1 (intf);

//DUT 
mas_mul_radix_top 
radix_top 
(
.clk (intf.clk),
.rstn(intf.rstn),
.in1 (intf.in1),
.in2 (intf.in2),
.res (intf.res)
);

endmodule
