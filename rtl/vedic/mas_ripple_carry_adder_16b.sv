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

module mas_ripple_carry_adder_16b (
  input  [15:0] in1,
  input  [15:0] in2,
  input        cin,
  output       cout,
  output [15:0] res
);

wire        c  ;

mas_ripple_carry_adder_8b 
rca0 
(
.in1(in1[7:0]), 
.in2(in2[7:0]), 
.cin(cin), 
.cout(c), 
.res(res[7:0])
);

mas_ripple_carry_adder_8b 
rca1 
(
.in1(in1[15:8]), 
.in2(in2[15:8]), 
.cin(c), 
.cout(cout), 
.res(res[15:8])
);

endmodule


