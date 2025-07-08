//join_none
`timescale 1ns/1ns
module join_none_ex;
   
  initial begin
    $display("Before fork at time:%0t",$time);  //0
    #15;
    fork
      $display("Child 1 executed at time:%0t", $time);   //15
      #5 $display("Child 2 executed at time:%0t", $time); //20
      
    join_none
    $display("After fork join executed at time:%0t",$time);//15
    #10 $display("After fork join with delay executed at time:%0t",$time); 


  end
endmodule
