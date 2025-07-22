//unique constraint 
class packet;
  rand bit [3:0] addr;
  constraint name{unique {addr};} //constraint block
  endclass

module tb();
  initial begin
  packet p1;
    p1=new();
   
    repeat(5) begin
      p1.randomize();
    $display("Random value:%0d", p1.addr);

    end
  end
endmodule
