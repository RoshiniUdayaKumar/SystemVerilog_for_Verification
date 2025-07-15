//pre and post randomize
class random;
  rand int A;
  randc int B;
  
  function void pre_randomize();
    $display("Start randomization");    
  endfunction
endclass

//child class 
class child extends random;
  function void pre_randomize();
    $display("child class randomization");  //parent class functions are not included 
  endfunction
endclass
    
    //child class-2 
    class child_new extends random;
      function void pre_randomize();
        super.pre_randomize();  //parent class functions are included
        $display("Child class 2 randomization");
      endfunction
    endclass

module tb();
  initial begin
    random obj=new();
    child ch=new();
    child_new ch_new=new();
    
   obj.randomize(); 
    ch.randomize();
    ch_new.randomize();
    end
      endmodule
