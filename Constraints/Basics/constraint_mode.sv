//constraint mode
class packet;
  randc bit[3:0] addr;
  randc bit [3:0] data;
  constraint condition {addr>5; data< 10;}
endclass


module tb();
initial begin
packet p1;
  p1=new();
  repeat(5) begin  
    p1.constraint_mode(0);
    p1.randomize();
    $display("Data :%0d at address :%0d", p1.data, p1.addr);
  end
  repeat(5) begin
    p1.constraint_mode(1); //enable again 
    p1.randomize();
     $display("Data :%0d at address :%0d", p1.data, p1.addr);
  end
  end
endmodule
