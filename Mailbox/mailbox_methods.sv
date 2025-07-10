//mailbox methods 
`timescale 1ns/1ns 
module mailbox_methods;
  bit [3:0] data1;
   
  mailbox my_mail=new();
  
  initial begin //to store into mailbox
    $display("The size of mailbox initially is:%0d", my_mail.num());    
      data1=$urandom();
    $display("Random values generated sent are:%0d", data1); 
    my_mail.put(data1); 
    $display("The size of mailbox after storing is:%0d", my_mail.num());
  end
  
  initial begin //peek --value only copied not removed
    my_mail.peek(data1);
    $display("the copied data is:%0d", data1);
    
  end
  
    initial begin //non-blocking get
    if(my_mail.try_get(data1))
      $display("Success");
    else 
      $display("Fail");
  end
  
  initial begin  //non-blocking put
    if(my_mail.try_put(data1))
      $display("Success");
    else 
      $display("Fail");
    
     end

endmodule
