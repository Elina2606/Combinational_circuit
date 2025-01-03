module basic_gates (a,b,y1, y2,y3,y4, y5, y6, y7);
input a,b;

output yl,y2,y3,y4, y5, y6, y7;

assign yl=~a; //inverter

assign y2=a&b; //and gates

assign y3=a|b; //or gates

assign y4=~(a&b); //nand gates

assign y5=~(alb); //nor gates

assign y6=a^b; //xor gates

assign y7=~(a^b); //xnor gates

endmodule