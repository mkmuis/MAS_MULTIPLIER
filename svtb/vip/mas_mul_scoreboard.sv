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

class ScoreBoard;
    
Packet     pkt;
AltFPacket altfpkt;
mailbox    Mon2Scb;

int          fd_pp;
int          random_test_size;
int          altf_test_size;
logic [63:0] res;

function new(mailbox Mon2Scb);
  this.Mon2Scb = Mon2Scb;
endfunction

//Result Check 
task res_chk();
  //Post-process output
  fd_pp = $fopen (`PP_FILE,"a+");
  //Random Test
  repeat (random_test_size) begin
    Mon2Scb.get(pkt);
    res = pkt.in1*pkt.in2;
    if(pkt.res != pkt.in1*pkt.in2) begin
      $error("IN1 = %0h\tIN2 = %0h\nGOT = %0h\tEXP = %0h\t[ERROR]",
             pkt.in1,pkt.in2,pkt.res,res);
      $fdisplay(fd_pp,"ERROR,%0t,%h,%h,%0h,%0h",
                $time,pkt.in1,pkt.in2,pkt.res,res);
    end
    else begin
      $fdisplay(fd_pp,"CORRECT,%0t,%h,%h,%0h,%0h",
                $time,pkt.in1,pkt.in2,pkt.res,res);
      $display("IN1 = %0h\tIN2 = %0h\tRES = %0h\t[CORRECT]",
                pkt.in1,pkt.in2,pkt.res);
    end
  end
  //Alt-F Test
  repeat (altf_test_size) begin
    Mon2Scb.get(altfpkt);
    res = altfpkt.in1*altfpkt.in2;
    if(altfpkt.res != altfpkt.in1*altfpkt.in2) begin
      $error("IN1 = %0h\tIN2 = %0h\nGOT = %0h\tEXP = %0h\t[ERROR]",
             altfpkt.in1,altfpkt.in2,altfpkt.res,res);
      $fdisplay(fd_pp,"ERROR,%0t,%h,%h,%0h,%0h",
                $time,altfpkt.in1,altfpkt.in2,altfpkt.res,res);
    end
    else begin
      $fdisplay(fd_pp,"CORRECT,%0t,%h,%h,%0h,%0h",
                $time,altfpkt.in1,altfpkt.in2,altfpkt.res,res);
      $display("IN1 = %0h\tIN2 = %0h\tRES = %0h\t[CORRECT]",
               altfpkt.in1,altfpkt.in2,altfpkt.res);
    end
  end
    $fclose(fd_pp);
endtask

task main();
  res_chk();
endtask
 
endclass
