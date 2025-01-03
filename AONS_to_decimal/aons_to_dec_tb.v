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
        // Test Case 1: Binary "1010" (Base 2)
        num_str = "1010";
        base = 2;
        #10;
        $display("Input: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test Case 2: Hexadecimal "7F" (Base 16)
        num_str = "7F";
        base = 16;
        #10;
        $display("Input: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test Case 3: Octal "77" (Base 8)
        num_str = "77";
        base = 8;
        #10;
        $display("Input: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test Case 4: Decimal "123" (Base 10)
        num_str = "123";
        base = 10;
        #10;
        $display("Input: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test Case 5: Invalid Character "G1" (Base 16)
        num_str = "G1";
        base = 16;
        #10;
        $display("Input: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test Case 6: Invalid Base (Base 1)
        num_str = "123";
        base = 1;
        #10;
        $display("Input: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test Case 7: Binary "0" (Base 2)
        num_str = "0";
        base = 2;
        #10;
        $display("Input: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test Case 8: Hexadecimal "1A3F" (Base 16)
        num_str = "1A3F";
        base = 16;
        #10;
        $display("Input: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test Case 9: Octal "1234" (Base 8)
        num_str = "1234";
        base = 8;
        #10;
        $display("Input: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Test Case 10: Edge case: Empty string (Base 10)
        num_str = "";
        base = 10;
        #10;
        $display("Input: %s, Base: %d, Decimal: %d", num_str, base, decimal);

        // Finish simulation
        $finish;
    end

endmodule