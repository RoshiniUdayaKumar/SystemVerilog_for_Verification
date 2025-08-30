//parent class 
class student;
  string str="NAME";  
endclass

//child class
class packet;
  rand student std;
  rand int age;
  rand int marks;
  //constraint 
  constraint age_c{age inside {[1:25]};}  
  constraint marks_c{marks inside {[0:100]};}
  constraint nested{age<20->marks>70;}  //implication operator 
endclass

module tb;
  initial begin 
    packet p;
    p=new();   //child class object creation 
    p.std=new();
    repeat(5) begin  //to check negative scenario
    p.randomize();//both parent and child class constraints
    $display("Name: %0s with age:%0d and marks:%0d", p.std.str, p.age,p.marks);    
  end
  end
endmodule
