module BinaryToGray_tb;

    // Inputs
    reg [7:0] binary;

    // Outputs
    wire [7:0] gray;

    // Instantiate the module
    BinaryToGray uut (
        .binary(binary),
        .gray(gray)
    );

    initial begin
        // Test Case 1: Binary = 0
        binary = 8'b00000000;
        #10;
        $display("Binary: %b, Gray: %b", binary, gray);

        // Test Case 2: Binary = 1
        binary = 8'b00000001;
        #10;
        $display("Binary: %b, Gray: %b", binary, gray);

        // Test Case 3: Binary = 3
        binary = 8'b00000011;
        #10;
        $display("Binary: %b, Gray: %b", binary, gray);

        // Test Case 4: Binary = 7
        binary = 8'b00000111;
        #10;
        $display("Binary: %b, Gray: %b", binary, gray);

        // Test Case 5: Binary = 15
        binary = 8'b00001111;
        #10;
        $display("Binary: %b, Gray: %b", binary, gray);

        // Test Case 6: Binary = 170 (10101010)
        binary = 8'b10101010;
        #10;
        $display("Binary: %b, Gray: %b", binary, gray);

        // Test Case 7: Binary = 255 (11111111)
        binary = 8'b11111111;
        #10;
        $display("Binary: %b, Gray: %b", binary, gray);

        // Finish simulation
        $finish;
    end

endmodule