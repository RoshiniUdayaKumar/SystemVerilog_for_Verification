//resource sharing system 
`timescale 1ns/1ns
module shared_res();
  semaphore bus;   //declaring a semaphore for bus
  initial begin
    bus=new(3); //creating a semaphore with 3 keys
    repeat(2) begin
    fork
      //core 1 
      begin 
        $display("Core 1 is requesting access for bus");
        bus.get(2);
        $display("Core 1 is acquiring semaphore");
        #5;
        bus.put(2);
        $display("Core 1 is releasing semaphore");   
        
      end

      //core 2
      begin
      $display("Core 2 is requesting access for bus");
        bus.get(2);
      $display("Core 2 is acquiring semaphore");
        #5;
        bus.put(2);
      $display("Core 2 is releasing semaphore"); 
      end
      
      //core 3
      begin
        $display("Core 3 is requesting access for bus");
        bus.get(1);   //parallel execution
        $display("Core 3 is acquiring semaphore");
        #5;
        bus.put(1);
        $display("Core 3 is releasing semaphore"); 
      end 
      
     join
      $display("All cores have mutually accessed the bus");

  end

  end 
endmodule
