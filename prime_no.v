module top ;
integer i,j; 
initial begin
  for(i=0;i<100;i=i+1)begin
    if(i==2)begin
      $display("num=%0d",i);
    end
    else begin:process
      for(j=2;j<i;j=j+1)begin
        if(i%j==0) disable process;
        else if(j+1==i) $display("num=%0d",i);
      end
    end
  end
end
endmodule
  
