module fs(input a,b,c,

output diff,bo);

assign diff = (a^b^c);

assign bo =(~a&b) | (~a&c) | (b&c);

endmodule