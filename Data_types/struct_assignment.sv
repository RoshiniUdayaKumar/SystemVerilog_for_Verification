//struct datatype
module struct_tb();
  typedef struct{
    int no;
    int date;
    string description;
    real amount;
    real balance;    
  }bank_entry;
  bank_entry entry1;
  
  initial begin 
//whole assignment 
    entry1='{20, 24, "Fuel", 30, 2000};
    //display 
    $display("Serial:%0d, Date:%0d, description:%0s, amount:%0d, balance:%0d", entry1.no, entry1.date, entry1.description, entry1.amount, entry1.balance);

//partial assignment 
    entry1='{default:0,description:"Fuel"};
    //display 
    $display("Serial:%0d, Date:%0d, description:%0s, amount:%0d, balance:%0d", entry1.no, entry1.date, entry1.description, entry1.amount, entry1.balance);
  end
endmodule
