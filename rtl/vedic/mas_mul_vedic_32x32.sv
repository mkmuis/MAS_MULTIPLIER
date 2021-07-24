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

module mas_mul_vedic_32x32 (
  input               clk,
  input               rstn,
  input        [31:0] in1,
  input        [31:0] in2,
  output logic [63:0] res
);

logic [31:0] in1_r;
logic [31:0] in2_r;

wire  [31:0] mulv_out0;
wire  [31:0] mulv_out1;
wire  [31:0] mulv_out2;
wire  [31:0] mulv_out3;

wire  [1:0]  rca_cout ;
wire  [31:0] rca_out0 ;
wire  [31:0] rca_out1 ;

wire  [63:0] res_w    ;

mas_mul_vedic_16x16 mulv_16b_0 (.in1(in1_r[15:0]), .in2(in2_r[15:0]), .res(mulv_out0));
mas_mul_vedic_16x16 mulv_16b_1 (.in1(in1_r[15:0]), .in2(in2_r[31:16]),.res(mulv_out1));
mas_mul_vedic_16x16 mulv_16b_2 (.in1(in1_r[31:16]),.in2(in2_r[15:0]), .res(mulv_out2));
mas_mul_vedic_16x16 mulv_16b_3 (.in1(in1_r[31:16]),.in2(in2_r[31:16]),.res(mulv_out3));

mas_ripple_carry_adder_32b 
add_32b_0 
(
.in1(mulv_out1),
.in2(mulv_out2),
.cin(1'b0),
.cout(rca_cout[0]),
.res(rca_out0)
);

mas_ripple_carry_adder_32b 
add_32b_1 
(
.in1({16'b0,mulv_out0[31:16]}),
.in2(rca_out0),
.cin(1'b0),
.cout(rca_cout[1]),
.res(rca_out1)
);

mas_ripple_carry_adder_32b 
add_32b_2 
(
.in1({15'b0,(rca_cout[0]|rca_cout[1]),rca_out1[31:16]}),
.in2(mulv_out3),
.cin(1'b0),
.cout(),
.res(res_w[63:32])
);

assign res_w[15:0] = mulv_out0[15:0];
assign res_w[31:16] = rca_out1[15:0] ;

always_ff@(posedge clk, negedge rstn)
begin
  if(!rstn)
  begin
    in1_r <= '0;
    in2_r <= '0;
    res   <= '0;
  end
  else 
  begin
    in1_r <= in1;
    in2_r <= in2;
    res   <= res_w;
  end
end

endmodule

