//struct datatype 
`timescale 1ns/1ps
module expenditure_tb();
  struct{
    int serial;
    int date;
    string description;
    real expense;    
  }expenditure ;
  
  initial begin 
    //assign values 
    expenditure.serial=1;
    expenditure.date=20;
    expenditure.description= "fries";
    expenditure.expense=20.34;
    
    //display the values 
    $display("Entry:%0d", expenditure.serial);
    $display("Date:%0d", expenditure.date);
    $display("Description:%0s", expenditure.description);
    $display("Expenses:%0g",expenditure. expense);
  
  end
  
  
endmodule
