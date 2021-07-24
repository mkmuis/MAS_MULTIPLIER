////////////////////////////////////////////////////////////////////////////
//Copyright 2021 Anthony Mui                                              //
//                                                                        //
//Licensed under the Apache License, Version 2.0 (the "License");         //
//you may not use this file except in compliance with the License.        //
//You may obtain a copy of the License at                                 //
//                                                                        //
//    http://www.apache.org/licenses/LICENSE-2.0                          //
//                                                                        //
//Unless required by applicable law or agreed to in writing, software     //
//distributed under the License is distributed on an "AS IS" BASIS,       //
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.//
//See the License for the specific language governing permissions and     //
//limitations under the License.                                          //
//                                                                        //
////////////////////////////////////////////////////////////////////////////

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
