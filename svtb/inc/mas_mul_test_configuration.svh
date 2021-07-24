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


//---------------------------------------------------
// TEST CONFIGURATION
//---------------------------------------------------

//Randomized stimulus
//0 : To not run
//N : Run for N times
`define RANDOMTEST_SIZE 1000

//Alternate F stimulus
//0 : To not run
//N : Run for N times
`define ALTFTEST_SIZE 450

//Post-Process File
`ifdef RADIX
  `define PP_FILE "radix_pp.txt"
`else
  `define PP_FILE "vedic_pp.txt"
`endif

//---------------------------------------------------
//Do not edit after this line
//---------------------------------------------------

`define DriverVIF mul_vif.DRIVER.driver_cb
`define MonitorVIF mul_vif.MONITOR.monitor_cb
