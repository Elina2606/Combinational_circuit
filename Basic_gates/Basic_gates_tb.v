module basic_tb();

reg a,b;

wire y1,y2,y3,y4, y5, y6, y7;

basic_gates dut (a,b,y1, y2, y3,y4, y5, y6, y7);

initial begin

a = 0 b = 0 ;

#2;

a = 0 b = 1

#2;

a = 1 b = 0 ;

#2;

a = 1; b = 1 ;

#2;

sfinish();

end

endmodule