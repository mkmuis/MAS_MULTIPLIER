
interface mul_intf(input logic clk,rstn);
   
logic [31:0] in1;
logic [31:0] in2;
logic [63:0] res;
 
//driver clocking block
clocking driver_cb @(posedge clk);
  `ifdef RTL
  default input #1 output #1;
  `endif
  output in1;
  output in2;
  input  res; 
endclocking
 
//monitor clocking block
clocking monitor_cb @(posedge clk);
  `ifdef RTL
  default input #1 output #1;
  `endif
  input in1;
  input in2;
  input res; 
endclocking
 
//driver modport
modport DRIVER  (clocking driver_cb,input clk,rstn);
 
//monitor modport 
modport MONITOR (clocking monitor_cb,input clk,rstn);
 
endinterface
