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

module mas_ripple_carry_adder_4b (
  input  [3:0] in1,
  input  [3:0] in2,
  input        cin,
  output       cout,
  output [3:0] res
);

wire  [3:0] c  ;
wire  [3:0] tmp;

assign c[0]   = ( in1[0] & in2[0] ) | ( in1[0] ^ in2[0] ) & cin;
assign res[0] = ( in1[0] ^ in2[0] ) ^ cin;
assign c[1]   = ( in1[1] & in2[1] ) | ( in1[1] ^ in2[1] ) & c[0];
assign res[1] = ( in1[1] ^ in2[1] ) ^ c[0];
assign c[2]   = ( in1[2] & in2[2] ) | ( in1[2] ^ in2[2] ) & c[1];
assign res[2] = ( in1[2] ^ in2[2] ) ^ c[1];
assign cout   = ( in1[3] & in2[3] ) | ( in1[3] ^ in2[3] ) & c[2];
assign res[3] = ( in1[3] ^ in2[3] ) ^ c[2];

endmodule


