module tb_ha;

reg a,b;

wire sum, carry;

ha dut (a,b, sum, carry);

initial begin

$monitor("%d,%d,%d,%d",a,b, sum, carry);

a=0;b=0;

#10;

a=0;b=1;

#10;

a=1;b=0;

#10;

a=1;b=1;

#10:

Sfinish;

end

initial begin

sdumpfile("ha.vcd");

$dumpvars (0,tb_ha);

end

endmodule