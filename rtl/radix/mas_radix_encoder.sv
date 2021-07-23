module mas_radix_encoder (
  input        [31:0] in1,
  input        [2:0]  in2,
  output logic        flag,
  output logic [32:0] res
);

always@(*) begin
  case(in2)
    3'b000 : begin 
      res  <= 0;
      flag <= 0;
    end
    3'b001 : begin 
      res  <= in1;
      flag <= 0;
    end
    3'b010 : begin 
      res  <= in1;
      flag <= 0;
    end
    3'b011 : begin 
      res  <= in1+in1;
      flag <= 0;
    end
    3'b100 : begin 
      res  <= in1+in1;
      flag <= 1;
    end
    3'b101 : begin 
      res  <= in1;
      flag <= 1;
    end
    3'b110 : begin 
      res  <= in1;
      flag <= 1;
    end
    3'b111 : begin 
      res  <= 0;
      flag <= 0;
    end
    default: begin 
      res  <= 0;
      flag <= 0;
    end
  endcase
end

endmodule 
