//producer-consumer mailbox 
`timescale 1ns/1ns
module prod_cons_ex();
  
 int i=0;
  
  mailbox my_mail=new(); //creating a mailbox 
  
  initial begin //for producer
    for(int j=0; j<5;j++) begin
      i=i+j;
      $display("Put Packet:%0d", i);
       my_mail.put(i); //put the packet 
      
    end
    $display("Size of mailbox is:%0d", my_mail.num());
    end

  initial begin //for consumer
    int recieve;
    for(int j=0; j<5; j++) begin
      my_mail.get(recieve);
      $display("Got packet:%0d", recieve);
    end
  end  
  
endmodule

---------------------------------------------------------------------------------------------
//producer-consumer mailbox 
`timescale 1ns/1ns
module prod_cons_ex();
  
 int i=0;
  string my_str="Packet";
  int recieve;
  
  mailbox my_mail=new(5); //creating a mailbox 
  
  initial begin //for producer
    for(int j=0; j<5;j++) begin
      i=i+j;
      $display("Put Packet:%0d", i);
       my_mail.put(i); //put the packet 
      
    end
    $display("Size of mailbox is:%0d", my_mail.num());
    end
  
  initial begin //try to put more values 
    if(my_mail.try_put(my_str))
      $display("The mailbox has space");
    else
      $display("The mail box is full");
  end

  initial begin //for consumer
    
    for(int j=0; j<5; j++) begin
      my_mail.get(recieve);
      $display("Got packet:%0d", recieve);
    end
  end  
  
initial begin  //try getting 
    if(my_mail. try_get(recieve))
      $display("The mailbox has elements");
    else
      $display("The mailbox is empty");
   end
  
endmodule
