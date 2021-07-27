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

class Packet;
 
//packet class items
randc bit [31:0] in1;
randc bit [31:0] in2;
bit      [63:0] res;
longint         test_size;  
 
endclass:Packet

class AltFPacket extends Packet;
 
constraint 
in1_altf 
{
in1 inside {32'h0000_000F,
            32'h0000_00F0,
            32'h0000_0F00,
            32'h0000_F000,
            32'h000F_0000,
            32'h00F0_0000,
            32'h0F00_0000,
            32'hF000_0000,
            32'h0000_00FF,
            32'h0000_FF00,
            32'h00FF_0000,
            32'hFF00_0000,
            32'h0000_FFFF,
            32'hFFFF_0000,
            32'hFFFF_FFFF
           };
}       

constraint 
in2_altf 
{
in2 inside {32'h0000_000F,
            32'h0000_00F0,
            32'h0000_0F00,
            32'h0000_F000,
            32'h000F_0000,
            32'h00F0_0000,
            32'h0F00_0000,
            32'hF000_0000,
            32'h0000_00FF,
            32'h0000_FF00,
            32'h00FF_0000,
            32'hFF00_0000,
            32'h0000_FFFF,
            32'hFFFF_0000,
            32'hFFFF_FFFF
           };
}       
endclass:AltFPacket
