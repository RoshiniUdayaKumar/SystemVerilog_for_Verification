`timescale 1ns/1ns
module semaphore_ex;
  semaphore resource;  //declaring semaphore
  initial begin 
    resource =new(1); //only 1 key is available
          fork
       //process 1 
        begin
          $display("Process 1 is waiting for the key");
          resource.get(1);
          $display("Process 1 is getting the key");
          #15;
          resource.put(1);    
          $display("Process 1 is returning the key");

        end
       //process 2
        begin
          $display("Process 2 is waiting for the key");
          resource.get(1);
          $display("Process 2 is getting the key");
          #15;
          resource.put(1);    
          $display("Process 2 is returning the key"); 
        end
        
        //process 3
                begin
                  $display("Process 3 is waiting for the key");
          resource.get(1);
                  $display("Process 3 is getting the key");
          #15;
          resource.put(1);    
                  $display("Process 3 is returning the key"); 
        end

      join
      $display("Execution is ended");
  
     end   
  
endmodule
