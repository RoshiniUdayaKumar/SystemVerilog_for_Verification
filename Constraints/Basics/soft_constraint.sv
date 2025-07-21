//soft constraint 
class packet;
  randc bit [3:0] addr;
  constraint name{soft addr>5;} //constraint block
  endclass

module tb();
  initial begin
  packet p1;
    p1=new();
   
    repeat(5) begin
      if(  p1.randomize() with {addr<5;} ) //inline constraint 
    $display("Random value:%0d", p1.addr);
      else 
        $display("Randomization failed");
    end
  end
endmodule
