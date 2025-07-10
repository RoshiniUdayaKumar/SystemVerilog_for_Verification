//Semaphore example 
`timescale 1ns/1ns
module mem_access();
  semaphore mem; //declaring a semaphore
  initial begin
    mem=new(2);    //creating a semaphore
    fork 
      //process 1
      begin 
        $display("Process 1 is waiting for memory access");
        mem.get(2);  //request the key
        $display("Process 1 got the key");
         #10;
    mem.put(1);
     $display("Process 1 is returning the key");        
      end  
      
      //process 2
      begin       
        $display("Process 2 is waiting for memory access");
        if(mem.try_get(2))  //request the key
        $display("Process 2 got the key");
        else
          $display("Process 2 did not got the key"); 
         #10;
        mem.put(1);
      $display("Process 2 is returning the key");  

      end

    join
  end
endmodule
