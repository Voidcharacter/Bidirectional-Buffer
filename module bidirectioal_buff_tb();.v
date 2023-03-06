module bidirectioal_buff_tb();
   reg ctrl;
   wire a,b;
   bidirectioal_buff DUT(a,ctrl,b);
   integer i;
   reg temp_a,temp_b;
   initial 
     begin
         ctrl=1;
         temp_a=0;
         #10;
         temp_a=1;
         #10;
         ctrl=0;
         temp_b=0;
         #10;
         temp_b=1;
         #10;
         $stop;
     end
     assign a= (ctrl==1)? temp_a:1'bz;
     assign b= (ctrl==1)? temp_b:1'bz;
endmodule
