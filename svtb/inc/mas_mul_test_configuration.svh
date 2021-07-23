
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
