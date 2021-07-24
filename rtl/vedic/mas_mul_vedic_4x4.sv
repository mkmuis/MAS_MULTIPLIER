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

module mas_mul_vedic_4x4 (
  input  [3:0] in1,
  input  [3:0] in2,
  output [7:0] res
);

wire  [3:0] mulv_out0;
wire  [3:0] mulv_out1;
wire  [3:0] mulv_out2;
wire  [3:0] mulv_out3;

wire  [1:0] rca_cout ;
wire  [3:0] rca_out0 ;
wire  [3:0] rca_out1 ;

mas_mul_vedic_2x2 mulv_2b_0 (.in1(in1[1:0]),.in2(in2[1:0]),.res(mulv_out0));
mas_mul_vedic_2x2 mulv_2b_1 (.in1(in1[1:0]),.in2(in2[3:2]),.res(mulv_out1));
mas_mul_vedic_2x2 mulv_2b_2 (.in1(in1[3:2]),.in2(in2[1:0]),.res(mulv_out2));
mas_mul_vedic_2x2 mulv_2b_3 (.in1(in1[3:2]),.in2(in2[3:2]),.res(mulv_out3));

mas_ripple_carry_adder_4b 
add_4b_0 
(
.in1(mulv_out1),
.in2(mulv_out2),
.cin(1'b0),
.cout(rca_cout[0]),
.res(rca_out0)
);

mas_ripple_carry_adder_4b 
add_4b_1 
(
.in1({2'b0,mulv_out0[3:2]}),
.in2(rca_out0),
.cin(1'b0),
.cout(rca_cout[1]),
.res(rca_out1)
);

mas_ripple_carry_adder_4b 
add_4b_2 
(
.in1({1'b0,(rca_cout[0]|rca_cout[1]),rca_out1[3:2]}),
.in2(mulv_out3),
.cin(1'b0),
.cout(),
.res(res[7:4])
);

assign res[1:0] = mulv_out0[1:0];
assign res[3:2] = rca_out1[1:0] ;

endmodule
