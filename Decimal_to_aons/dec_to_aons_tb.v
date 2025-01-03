module DecimalToOtherSystem_tb;

    // Inputs
    reg [31:0] decimal;
    reg [3:0] base;

    // Outputs
    wire [127:0] result;

    // Instantiate the module
    DecimalToOtherSystem uut (
        .decimal(decimal),
        .base(base),
        .result(result)
    );

    initial begin
        // Test case 1: Convert 10 to binary
        decimal = 10;
        base = 2;
        #10;
        $display("Decimal: %d, Base: %d, Result: %s", decimal, base, result);

        // Test case 2: Convert 255 to hexadecimal
        decimal = 255;
        base = 16;
        #10;
        $display("Decimal: %d, Base: %d, Result: %s", decimal, base, result);

        // Test case 3: Convert 100 to octal
        decimal = 100;
        base = 8;
        #10;
        $display("Decimal: %d, Base: %d, Result: %s", decimal, base, result);

        // Test case 4: Convert 500 to decimal
        decimal = 500;
        base = 10;
        #10;
        $display("Decimal: %d, Base: %d, Result: %s", decimal, base, result);

        // Test case 5: Invalid base (e.g., 1)
        decimal = 50;
        base = 1;
        #10;
        $display("Decimal: %d, Base: %d, Result: %s", decimal, base, result);

        // Test case 6: Convert 0 to any base
        decimal = 0;
        base = 2;
        #10;
        $display("Decimal: %d, Base: %d, Result: %s", decimal, base, result);

        // Finish simulation
        $finish;
    end

endmodule