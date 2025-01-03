module OtherSystemToDecimal_tb;

    // Inputs
    reg [127:0] num_str;
    reg [3:0] base;

    // Output
    wire [31:0] decimal;

    // Instantiate the module
    OtherSystemToDecimal uut (
        .num_str(num_str),
        .base(base),
        .decimal(decimal)
    );

    initial begin
        // Test case 1: Binary "1010"
        num_str = "1010";
        base = 2;
        #10;
        $display("Number: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test case 2: Hexadecimal "7F"
        num_str = "7F";
        base = 16;
        #10;
        $display("Number: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test case 3: Octal "77"
        num_str = "77";
        base = 8;
        #10;
        $display("Number: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test case 4: Invalid character
        num_str = "G1";
        base = 16;
        #10;
        $display("Number: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test case 5: Invalid base
        num_str = "123";
        base = 1;
        #10;
        $display("Number: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Finish simulation
        $finish;
    end

endmodule