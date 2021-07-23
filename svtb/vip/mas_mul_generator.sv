
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
