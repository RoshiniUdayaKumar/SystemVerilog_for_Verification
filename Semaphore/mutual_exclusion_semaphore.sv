//mutual exclusion example
`timescale 1ns/1ns 
module mutex_ex();
  semaphore file; //declaring a semaphore 
  initial begin
    file=new(1);
    fork
      //process 1 
      begin 
        $display("Process 1 is waiting for the key");
        file.get(1);
        $display("Process 1 is accessing a file");
        #5;
        file.put(1);
        $display("Process 1 is returning the key"); 
        
      end
      //process 2 
      begin 
        $display("Process 2 is waiting for the key");
        file.get(1);
        $display("Process 2 is accessing a file");
        #5;
        file.put(1);
        $display("Process 2 is returning the key"); 

      end
      
    join
    $display("Both process have accessed a common file");    
    
  end
endmodule




