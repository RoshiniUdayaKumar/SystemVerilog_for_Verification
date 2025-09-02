class packet;
  rand int num;
  constraint c1{num inside {[1:500]};} //constraint for range
  constraint c2{(num[0]+num[1]+num[2])%2==0;} //constraint for sum &even
  
  function void display();
    $display("Number:%0d", num);    
  endfunction
endclass

module tb;
  initial begin
    packet pkt;
    pkt=new();
    repeat(5) begin
      pkt.randomize();
      pkt.display();
   end    
  end  
endmodule
