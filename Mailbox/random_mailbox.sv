//mailbox 

class packet;
rand bit[3:0] data; 
endclass

module tb();
  //mailbox 
 mailbox mail=new();
  
  initial begin //put the random data to mailbox 
   packet pkt;
    pkt=new();
    repeat(5) begin
   pkt.randomize();  
    $display("Random data sent are :%0d", pkt.data);
    $display("Size of mailbox initially is:%0d", mail.num());   //size of mailbox 
    mail.put(pkt.data);
    $display("Data items in mailbox are:%0d", pkt.data);
     $display("Size of mailbox is:%0d", mail.num());
    end
  end
  
  initial begin //get the random data from mailbox 
   packet pkt;
    pkt=new();
    repeat(5) begin
   pkt.randomize();
    mail.get(pkt.data);
    $display("Data items recieved from mailbox are:%0d", pkt.data);
      end
  end
  
endmodule
