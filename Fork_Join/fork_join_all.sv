//fork..join_all
`timescale 1ns/1ns
module fork_ex();
  initial begin
  //without delay 
    $display("Before the fork at time:%0t", $time);
    fork
      #10 $display("Task 1 is executed at time:%0t", $time);
      
      #5  $display("Task 2 is executed at time:%0t", $time);
      
      #15 $display("Task 3 is executed at time:%0t", $time);    
      
      join
    
    $display("All child process is completed");
    
    #40 $display("After the fork join, executes at:%0t", $time); //55

  end
endmodule

----------------------------------------------------------------------------------
//fork..join_all
`timescale 1ns/1ns
module fork_ex();
  initial begin
  //with delay 
    $display("Start of the code at time:%0t", $time); //0
    #10;
    
    $display("Before the fork at time:%0t", $time); //10
    fork
      #10 $display("Task 1 is executed at time:%0t", $time);  //20
      
      #5  $display("Task 2 is executed at time:%0t", $time); //15
      
      #15 $display("Task 3 is executed at time:%0t", $time); //25   
      
      join
    
    $display("All child process is completed at time:%0t",$time); //25
    
    #40 $display("After the fork join, executes at:%0t", $time); //65

  end
endmodule
