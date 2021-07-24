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

class Monitor;
   
Packet pkt;
AltFPacket altfpkt;
mailbox Mon2Scb;

int     PacketCount;
int     AltFPacketCount;
int     random_test_size;
int     altf_test_size;
virtual mul_intf mul_vif;
 
function new(virtual mul_intf mul_vif,mailbox Mon2Scb);
  this.mul_vif = mul_vif;
  this.Mon2Scb = Mon2Scb;
endfunction
 
task sampling();
  //Random Test
  repeat (random_test_size) begin
    pkt = new();
    @(posedge mul_vif.MONITOR.clk);
      //Sampling from interface
      pkt.in1  = `MonitorVIF.in1;
      pkt.in2  = `MonitorVIF.in2;
    @(posedge mul_vif.MONITOR.clk);
      Mon2Scb.put(pkt);//Send to Scoreboard
      $display("[MONITOR RANDOM PACKET: %0d] ",PacketCount);
      pkt.res = `MonitorVIF.res;
      PacketCount++;
  end

  //Alt-F Test
  repeat (altf_test_size) begin
    altfpkt = new();
    AltFPacketCount++;
    @(posedge mul_vif.MONITOR.clk);
      //Sampling from interface
      altfpkt.in1  = `MonitorVIF.in1;
      altfpkt.in2  = `MonitorVIF.in2;
    @(posedge mul_vif.MONITOR.clk);
      Mon2Scb.put(altfpkt);//Send to Scoreboard
      $display("[MONITOR ALT-F PACKET: %0d] ",AltFPacketCount);
      altfpkt.res = `MonitorVIF.res;
  end
endtask

task main();
  sampling();
endtask
   
endclass

