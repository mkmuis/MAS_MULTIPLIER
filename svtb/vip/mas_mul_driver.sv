
class Driver;
 
Packet     pkt;
AltFPacket altfpkt;
mailbox    Gen2Driv;

int     PacketCount;
int     AltFPacketCount;
int     random_test_size;
int     altf_test_size;
virtual mul_intf mul_vif;
 
function new(virtual mul_intf mul_vif,mailbox Gen2Driv);
  this.mul_vif = mul_vif;
  this.Gen2Driv = Gen2Driv;
  this.Gen2Driv = Gen2Driv;
endfunction

//Wait for design initialization  
task rstn;
  wait(!mul_vif.rstn);
  $display("-> #!RESET ON#");
  `DriverVIF.in1  <= 0;
  `DriverVIF.in2  <= 0;       
  wait(mul_vif.rstn);
  $display("-> #!RESET OFF#");
endtask
 
task drive;
  //Random Test
  repeat(random_test_size) begin
    Gen2Driv.get(pkt);//Get packets from mailbox
    PacketCount++;
    //Driving packets through interface
    @(posedge mul_vif.DRIVER.clk);
    `DriverVIF.in1 <= pkt.in1;       
    `DriverVIF.in2 <= pkt.in2;       
    $display("---------------------------------------");
    $display("[DRIVER RANDOM PACKET: %0d] ",PacketCount);
    $display("IN1 = %0h \tIN2 = %0h",pkt.in1,pkt.in2);
    @(posedge mul_vif.DRIVER.clk);
  end

  //Alt-F Test
  repeat(altf_test_size) begin
    Gen2Driv.get(altfpkt);//Get packets from mailbox
    AltFPacketCount++;
    //Driving packets through interface
    @(posedge mul_vif.DRIVER.clk);
    `DriverVIF.in1 <= altfpkt.in1;       
    `DriverVIF.in2 <= altfpkt.in2;       
    $display("---------------------------------------");
    $display("[DRIVER ALT-F PACKET: %0d] ",AltFPacketCount);
    $display("IN1 = %0h \tIN2 = %0h",altfpkt.in1,altfpkt.in2);
    @(posedge mul_vif.DRIVER.clk);
  end
endtask

task main();
  drive();
endtask
        
endclass
