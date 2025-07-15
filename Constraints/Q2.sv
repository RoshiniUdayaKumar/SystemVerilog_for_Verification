//IP address segments
class packet;
  rand int addr1;
  rand int addr2;
  //constraint 
  constraint segment_one{addr1 inside { [1:223]};}
  constraint segment_two{addr2 inside {[0:255]};}   
endclass

module tb();
  initial begin 
    packet p1;
    p1=new();
    repeat(3) begin
      p1.randomize();
      $display("First segment random values are:%0d", p1.addr1);
      $display("Second segment random values are:%0d", p1.addr2);
    end
  end  
endmodule
