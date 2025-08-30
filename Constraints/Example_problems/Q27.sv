class packet;
  rand bit[4:0] data;  
  int last_digit;
  int sum=0;
  constraint c1{data >9 ;}
endclass

module tb;
  
  initial begin
    packet pkt;
    pkt=new();
    pkt.randomize();
    $display("Random 2-digit number generated is:%0d", pkt.data);
    repeat(2) begin
    pkt.last_digit= pkt.data%10;
    pkt.data=pkt.data/10;
    pkt.sum= pkt.sum+pkt.last_digit;
    end    
    $display("Sum of 2-digit number is:%0d", pkt.sum);  
  end
  
endmodule
