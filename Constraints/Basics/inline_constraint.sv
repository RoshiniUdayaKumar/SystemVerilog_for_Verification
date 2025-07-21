//inline constraints 
class packet;
  randc bit[3:0] addr;
  constraint condition {addr>5;}
endclass


module tb();
initial begin
packet p1;
  p1=new();
  repeat(5) begin  
    if( p1.randomize() with {addr<10;})   //address values are between 5 and 10
    $display("Randomized address locations are: %0d", p1.addr);
    else 
      $display("Randomization failed");
  end
  end
endmodule
