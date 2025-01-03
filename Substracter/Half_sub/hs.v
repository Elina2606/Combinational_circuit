module hs (input a,b, output diff, bo);

assign diff = a^b;

assign bo-a&b;

endmodule