//enum with case ststement 
`timescale 1ns/1ps
module enum_case();
  typedef enum {s1=2'b00, s2=2'b01, s3=2'b10, s4=2'b11} mutiplexer;
  mutiplexer mux;
 initial begin
   case(mux)
     2'b00: $display("State:S1");
     2'b01: $display("State:S2");
     2'b10: $display("State:S3");
     2'b11: $display("State:S4");
   endcase
   
 end
endmodule
