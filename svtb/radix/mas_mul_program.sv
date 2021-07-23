
`include "mas_mul_test_configuration.svh"
`include "mas_mul_environment.sv"

program radix_test (mul_intf intf);
   
Environment env;
 
initial begin
  $display("---------------------------------------");
  $display("\n\t    RADIX TEST\n");
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
