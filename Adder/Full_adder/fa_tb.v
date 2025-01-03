module tb fa;

reg a,b,c;

wire sum, c2;

fa dut (a,b,c, sum, c2);

initial begin

$monitor("%d,%d,%d,%d,%d",a,b,c,sum,c2);

a = 0 ; b = 0 c = 0

#10;

a = 0 b = 0 c = 1

#10;

a = 0 b = 1 c = 0 ;.

#10;

a = 0 b = 1 c = 1

#10;

a = 1 b = 0 ; c = 0

#10;

a = 1 b = 0 c = 1 ;

#10;

a = 1 b = 1 c = 0

#10;

a = 1 b = 1

c = 1

#10;

sfinish;

end

initial begin

Sdumpfile("fa.vcd");

Sdumpyars (0,tb_fa);
end
endmodule