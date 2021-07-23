
`include "mas_mul_interface.sv"
 
module vedic_tb;
   
bit clk;
bit rstn;

`ifdef RTL
  //Clock Period : 4ns 
  always #2 clk = ~clk;
`else
  //Clock Period : 50ns 
  always #25 clk = ~clk;
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
vedic_test vt1 (intf);

//DUT 
mas_mul_vedic_32x32 
vedic_top 
(
.clk (intf.clk),
.rstn(intf.rstn),
.in1 (intf.in1),
.in2 (intf.in2),
.res (intf.res)
);

endmodule
