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
