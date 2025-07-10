//smaphore example
`timescale 1ns/1ns 
module semaphore_ex();
  semaphore item1;  //declaring a semaphore 
  semaphore item2;
  semaphore item3;
  
  initial begin
    item1=new(1); //creating a semaphore with 1 key 
    item2=new(2); //creating a semaphore with 2 keys
    item3=new(4);  //creating a semaphore with 4 keys
    
    fork 
     
     //process 1
       begin
      $display("Process 1 is waiting for the key");
         item1.get(1);
         $display("Process 1 got the key");
         #10;
         $display("Process 1 put back the key");
         item1.put(1);
      end
      
      //process 2
      begin
        $display("Process 2 is waiting for the key");   
        item1.get(1);
        $display("Process 2 got the key");
         #10;
        $display("Process 2 put back the key");
         item1.put(1);
      end
      
       //process 3
      begin
        $display("Process 3 is waiting for the key");
        item2.get(2);
        $display("Process 3 got the key");
         #10;
        $display("Process 3 put back the key");
         item2.put(1);
      end 
      
      //process 4 
      begin
        $display("Process 4 is waiting for the key");
        item3.get(4);
        $display("Process 4 got the key");
         #10;
        $display("Process 4 put back the key");
         item3.put(1);
      end
    join

  end
  
  
endmodule
