`timescale 1ns/1ns
module mailbox_ex();
  int a=10;
  string my_str="Packet";
  bit [7:0] b=8'd120;
  
  mailbox my_mail=new(); //declare a generic mailbox 

  initial begin//putting data into mailbox
    $display("The integer value to be sent is:%0d", a);
    $display("The string value to be sent is:%0s", my_str);
    $display("The 8-bit value value to be sent is:%0d", b);
    $display("The size of mailbox before storing data is:%0d", my_mail.num());
    my_mail.put(a);
    my_mail.put(my_str);
    my_mail.put(b);
    $display("The size of mailbox after storing the data is:%0d", my_mail.num());
  end
  
  initial begin//get the data from the mailbox 
    my_mail.get(a);
    my_mail.get(my_str);
    my_mail.get(b);
    $display("The integer value obtained is:%0d", a);   
    $display("The string value obtained is:%0s", my_str);
    $display("The 8-bit value  obtained is:%0d", b);
  end  
endmodule
