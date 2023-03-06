module bidirectional_buff(a,ctrl,b);
   inout a,b;
   input ctrl;
   assign b= (ctrl==1)? a:1'bz;
   assign a= (ctrl==1)? b:1'bz;
endmodule
