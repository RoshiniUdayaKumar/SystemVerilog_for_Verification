class packet;
  rand int num[4];//array
  //constraint  
  constraint c1{
    foreach(num[i]) num[i] inside {[0:9]};
    (num[0]%2==0); //even 
    (num[1]%2==1);
    (num[2]%2==0);//even
    (num[3]%2==1);
  }
  
  function void display();
    $display("4-digit number is:%0d%0d%0d%0d", num[3],num[2],num[1],num[0]);    
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
