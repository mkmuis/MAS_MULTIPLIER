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

`include "mas_mul_transaction.sv"
`include "mas_mul_generator.sv"
`include "mas_mul_driver.sv"
`include "mas_mul_monitor.sv"
`include "mas_mul_scoreboard.sv"

class Environment;
 
Generator  gen;
Driver     driv;
Monitor    mon;
ScoreBoard scb;
 
mailbox Gen2Driv;
mailbox Mon2Scb;
 
virtual mul_intf mul_vif;
 
function new(virtual mul_intf mul_vif);
  this.mul_vif = mul_vif;
  //Using same handle across generator and driver
  Gen2Driv = new();
  Mon2Scb = new();
  //Constructing individual components 
  gen = new(Gen2Driv);
  driv = new(mul_vif,Gen2Driv);
  mon  = new(mul_vif,Mon2Scb);
  scb  = new(Mon2Scb);
endfunction

task pre_test();
  $display("\n[ENVIRONMENT SETUP] ");
  driv.rstn();
endtask
 
task test();
  $display("-> #RUNNING TEST#");
  fork
  gen.main();
  driv.main();
  mon.main();
  scb.main();    
  join_any
endtask
 
task post_test();
  wait(mon.PacketCount > gen.random_test_size);
  wait(mon.AltFPacketCount > gen.altf_test_size);
  $display("---------------------------------------");
  $display("\n\tSimulation Ended\n");
  $display("---------------------------------------");
endtask 
 
task run;
  pre_test();
  test();
  post_test();
  $finish;
endtask
 
endclass
