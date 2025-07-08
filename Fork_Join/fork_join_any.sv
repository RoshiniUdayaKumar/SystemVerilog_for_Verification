//FORK...JOIN_ANY
`timescale 1ns/1ns
module fork_ex();
  initial begin
    #5;
    $display("Before fork join start at time:%0t", $time); //5
   fork
     #10 $display("Task 1 is completed at time:%0t", $time); //15
     #6 $display("Task 2 is completed at time:%0t", $time); //11
   join_any
    $display("One child process is completed at time:%0t",$time);  //11
   
    #10;  //10+11
    $display("Current simulation time:%0t", $time); //
    
    fork
      #2 $display("Task 3 is completed at time:%0t", $time); //23
      #15 $display("Task 4 is completed at time:%0t", $time);  //36
      #10 $display("Task 5 is completed at time:%0t", $time); //31
      
      
    join_any
    $display("One child process of other block is completed at time:%0t",$time); //23
     
     end
  
  endmodule
