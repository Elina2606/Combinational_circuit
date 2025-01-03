module GrayToBinary_tb;

    // Inputs
    reg [7:0] gray;

    // Outputs
    wire [7:0] binary;

    // Instantiate the module
    GrayToBinary uut (
        .gray(gray),
        .binary(binary)
    );

    initial begin
        // Test Case 1: Gray = 0
        gray = 8'b00000000;
        #10;
        $display("Gray: %b, Binary: %b", gray, binary);

        // Test Case 2: Gray = 1
        gray = 8'b00000001;
        #10;
        $display("Gray: %b, Binary: %b", gray, binary);

        // Test Case 3: Gray = 3
        gray = 8'b00000011;
        #10;
        $display("Gray: %b, Binary: %b", gray, binary);

        // Test Case 4: Gray = 7
        gray = 8'b00000111;
        #10;
        $display("Gray: %b, Binary: %b", gray, binary);

        // Test Case 5: Gray = 15
        gray = 8'b00001111;
        #10;
        $display("Gray: %b, Binary: %b", gray, binary);

        // Test Case 6: Gray = 170 (10101010)
        gray = 8'b10101010;
        #10;
        $display("Gray: %b, Binary: %b", gray, binary);

        // Test Case 7: Gray = 255 (11111111)
        gray = 8'b11111111;
        #10;
        $display("Gray: %b, Binary: %b", gray, binary);

        // Finish simulation
        $finish;
    end

endmodule