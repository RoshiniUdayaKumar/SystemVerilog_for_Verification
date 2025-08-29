//FIFO order
class packet;
  randc bit [3:0] data;

endclass

module tb();
 
  //mailbox 
  mailbox my_mail=new();
  
  //producer -1 
  initial begin 
    packet pkt;
    pkt=new();
    repeat(10) begin      
    pkt.randomize();
    $display("Data to be sent is:%0d", pkt.data);
    //put the data 
    my_mail.put(pkt.data);
    end    
  end
  
   
  //consumer 
  initial begin
    packet pkt;
    pkt=new();

    repeat(10) begin
      my_mail.get(pkt.data);
      $display("Recieved data are:%0d", pkt.data);
      
    end 
  end
endmodule
