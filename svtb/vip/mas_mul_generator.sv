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

class Generator;
 
Packet     pkt;
AltFPacket altfpkt;
mailbox    Gen2Driv;

int random_test_size; 
int altf_test_size; 

function new(mailbox Gen2Driv);
  this.Gen2Driv  = Gen2Driv;
endfunction
 
task gen();
  //Random Test
  repeat(random_test_size) begin
    pkt = new(); 
    //Randomized packets generation
    if (!pkt.randomize()) 
      $fatal("[ERROR] : Randomization failed");   
    Gen2Driv.put(pkt);//Puts packets to mailbox
  end

  //Alt-F Test
  repeat(altf_test_size) begin
    altfpkt = new(); 
    //Randomized packets generation
    if (!altfpkt.randomize()) 
      $fatal("[ERROR] : Randomization failed");   
    Gen2Driv.put(altfpkt);//Puts packets to mailbox
  end
endtask 

task main();
  gen();
endtask

endclass
