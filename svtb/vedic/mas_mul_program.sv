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

`include "mas_mul_test_configuration.svh"
`include "mas_mul_environment.sv"

program vedic_test (mul_intf intf);
   
Environment env;
 
initial begin
  $display("---------------------------------------");
  $display("\n\t    VEDIC TEST\n");
  $display("---------------------------------------");
  env = new(intf);
  env.gen.random_test_size = `RANDOMTEST_SIZE;
  env.driv.random_test_size = `RANDOMTEST_SIZE;
  env.mon.random_test_size = `RANDOMTEST_SIZE + 1;
  env.scb.random_test_size = `RANDOMTEST_SIZE + 1;
  env.gen.altf_test_size = `ALTFTEST_SIZE;
  env.driv.altf_test_size = `ALTFTEST_SIZE;
  env.mon.altf_test_size = `ALTFTEST_SIZE + 1;
  env.scb.altf_test_size = `ALTFTEST_SIZE + 1;
  env.run();
end
endprogram
