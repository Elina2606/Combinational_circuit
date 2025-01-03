module tb_fs;

reg a,b,c;

wire diff, bo;

fs dut(a,b,c,diff,bo);

initial begin

$monitor("%d,%d,%d,%d,%d",a,b,c,diff, bo);

a = 0 ; b = 0 ; c = 0 ;

#10;

a=0;b=0; c = 1

#10;

a=0;b=1;c=0;

#10;

a=0;b=1;c=1;

#10;

a = 1 ; b = 0 ; c = 0

#10;

a = 1 b=0; c = 1

#10;

a = 1 b = 1 c = 0 ;

#10;

a = 1 ; b = 1 c = 1

#10

Sfinish;

end

initial begin

sdumpfile("fo.ved");

Sdumpvars(0,tb_fs);

end

endmodule