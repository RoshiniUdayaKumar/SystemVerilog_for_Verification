//wait fork
`timescale 1ns/1ns
module wait_fork;
initial begin 
  $display("Start of simuation at time:%0t", $time);
  #10;  
  fork
    #15 $display("Child 1 executed at time:%0t", $time); //25
    #25 $display("Child 2 executed at time:%0t", $time); //35
        
  join_any // wait for 1 child process
  $display("After the fork join none:%0t", $time);  //25  
   
  wait fork;
    #10 $display("After the wait fork, the time is:%0t", $time); //45
    end
endmodule


----------------------------------------------------------------------------
//wait fork
`timescale 1ns/1ns
module wait_fork;
initial begin 
  $display("Start of simuation at time:%0t", $time);
    #10;  
    fork
    #15 $display("Child 1 executed at time:%0t", $time); //25
    #25 $display("Child 2 executed at time:%0t", $time); //35

    
    join_none // wait for 1 child process
    wait fork;
    #10 $display("After the wait fork, the time is:%0t", $time); //45    
    $display("After the fork join none:%0t", $time);  // 45

      end
endmodule
