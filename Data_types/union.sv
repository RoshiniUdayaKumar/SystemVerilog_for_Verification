//union 
`timescale 1ns/1ps
module union_tb();
  typedef union{
    int num;
    int date;
    real expense;    
  }union_name;
  union_name name;
  
  initial begin 
    name.num=10;
    name.date=24;
    name.expense=23.78;
    
    //display
    $display("Number:%0d", name.num);
    $display("Date:%0d", name.date);
    $display("Expense:%0g", name.expense);
    
      end
  
endmodule
