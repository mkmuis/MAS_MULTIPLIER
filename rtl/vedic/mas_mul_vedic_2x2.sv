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

module mas_mul_vedic_2x2 (
  input  [1:0] in1,
  input  [1:0] in2,
  output [3:0] res
);

assign res[0] =  in1[0] & in2[0];
assign res[1] = (in1[1] & in2[0]) ^ ( in1[0] & in2[1] );
assign res[2] = (in1[0] & in2[1]) & ( in1[1] & in2[0] ) ^ ( in1[1] & in2[1] );
assign res[3] = (in1[0] & in2[1]) & ( in1[1] & in2[0] ) & ( in1[1] & in2[1] );

endmodule
