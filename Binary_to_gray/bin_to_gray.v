module BinaryToGray (
    input [7:0] binary,  // Input binary number (8 bits)
    output reg [7:0] gray // Output Gray code (8 bits)
);

    integer i;

    always @(*) begin
        gray[7] = binary[7]; // MSB remains the same
        for (i = 6; i >= 0; i = i - 1) begin
            gray[i] = binary[i + 1] ^ binary[i]; // XOR operation for remaining bits
        end
    end

endmodule