module fa(input a,b,c,

output sum,c2);

assign sum = (a^b^c);

assign c2 = ((b&c)|(a&c)|(a&b));

endmodule