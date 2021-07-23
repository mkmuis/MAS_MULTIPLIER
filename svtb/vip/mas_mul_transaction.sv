
class Packet;
 
//transaction class items
randc bit [31:0] in1;
randc bit [31:0] in2;
bit      [63:0] res;
longint         test_size;  
 
endclass:Packet

class AltFPacket extends Packet;
 
constraint 
in1_altf 
{
in1 inside {32'h0000_000F,
            32'h0000_00F0,
            32'h0000_0F00,
            32'h0000_F000,
            32'h000F_0000,
            32'h00F0_0000,
            32'h0F00_0000,
            32'hF000_0000,
            32'h0000_00FF,
            32'h0000_FF00,
            32'h00FF_0000,
            32'hFF00_0000,
            32'h0000_FFFF,
            32'hFFFF_0000,
            32'hFFFF_FFFF
           };
}       

constraint 
in2_altf 
{
in2 inside {32'h0000_000F,
            32'h0000_00F0,
            32'h0000_0F00,
            32'h0000_F000,
            32'h000F_0000,
            32'h00F0_0000,
            32'h0F00_0000,
            32'hF000_0000,
            32'h0000_00FF,
            32'h0000_FF00,
            32'h00FF_0000,
            32'hFF00_0000,
            32'h0000_FFFF,
            32'hFFFF_0000,
            32'hFFFF_FFFF
           };
}       
endclass:AltFPacket
