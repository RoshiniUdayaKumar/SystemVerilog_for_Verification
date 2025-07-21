//iterative constraint 
class packet;
  rand int arr[];  //dynamic array 
  //constraint for size of array 
  constraint array_size{ arr.size()==5;}
  constraint array_condition{foreach(arr[i]) arr[i] inside {1,2,[30:60]} ;}
  
  //class methods 
  function void display();
        foreach(arr[i]) begin
        $display("Elements of array are:%0p", arr);  
        end    
  endfunction
  endclass 

module tb();
  initial begin
    packet p1;
    p1=new();
    repeat(5) begin
   p1.randomize();
    p1.display();
    end
    end
endmodule
