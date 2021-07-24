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

module mas_radix_encoder (
  input        [31:0] in1,
  input        [2:0]  in2,
  output logic        flag,
  output logic [32:0] res
);

always@(*) begin
  case(in2)
    3'b000 : begin 
      res  <= 0;
      flag <= 0;
    end
    3'b001 : begin 
      res  <= in1;
      flag <= 0;
    end
    3'b010 : begin 
      res  <= in1;
      flag <= 0;
    end
    3'b011 : begin 
      res  <= in1+in1;
      flag <= 0;
    end
    3'b100 : begin 
      res  <= in1+in1;
      flag <= 1;
    end
    3'b101 : begin 
      res  <= in1;
      flag <= 1;
    end
    3'b110 : begin 
      res  <= in1;
      flag <= 1;
    end
    3'b111 : begin 
      res  <= 0;
      flag <= 0;
    end
    default: begin 
      res  <= 0;
      flag <= 0;
    end
  endcase
end

endmodule 
