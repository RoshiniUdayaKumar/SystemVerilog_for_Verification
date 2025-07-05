//enum datatype
`timescale 1ns/1ps
module user_datatypes();
  typedef enum {insert, pin, cash, withdrawal} atm_machine;
  atm_machine machine;
  initial begin
  //display the values
  
  $display("Value of first element is:%0d", insert);
    $display("Value of second element is:%0d", pin);
    $display("Value of third element is:%0d", cash);
    $display("Value of fourth element is:%0d", withdrawal);
    
    //enumertaion 
    machine= machine.first();
    $display("The first element of enum is:%0s", machine.name());
    machine=machine.next();
    $display("The next element of enum is:%0s", machine.name());
    machine=machine.last();
    $display("The last element of enum is:%0s", machine.name());
    machine=machine.prev();
    $display("The previous element of enum is:%0s", machine.name());
     
    
  end
  
endmodule
