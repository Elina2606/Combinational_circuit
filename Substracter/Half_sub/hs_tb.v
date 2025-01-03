module tb_hs;

reg a,b;

wire diff, bo;

hs dut (a,b,diff, bo);

initial begin

$monitor("%d,%d,%d,%d", a, b, diff, bo);

a = 0 b = 0

#10;

a = 0 ; b = 1

#10;

a = 1 b = 0

#10;

a = 1 b=1;

#10;

Sfinish;

end

initial begin

$dumpfile("hs.ved");

$dumpvars (0,tb_hs);

end

endmodule