module GrayToBinary (
    input [7:0] gray,       // Input Gray code (8 bits)
    output reg [7:0] binary // Output binary equivalent
);

    integer i;

    always @(*) begin
        binary[7] = gray[7]; // MSB remains the same
        for (i = 6; i >= 0; i = i - 1) begin
            binary[i] = binary[i + 1] ^ gray[i]; // XOR operation for remaining bits
        end
    end

endmodule