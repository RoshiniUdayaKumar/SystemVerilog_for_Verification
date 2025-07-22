//YEAR 
class year;
  rand int day;
  rand int month;
  rand int year;
  
  //constraint 
  constraint c1{day inside {[1:31]} ;}
  constraint c2{month inside {[1:12]} ;}
  constraint c3{year==2024;}
endclass

module tb();
  initial begin
  year y;
    y=new();
    repeat(3) begin
      y.randomize();
      $display("Date with day:%0d, Month:%0d, Year:%0d", y.day, y.month, y.year);
    end
  end
endmodule
