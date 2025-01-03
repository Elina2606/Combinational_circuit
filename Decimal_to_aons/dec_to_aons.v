module DecimalToOtherSystem (
    input [31:0] decimal,  // Input decimal number
    input [3:0] base,      // Base of the target number system (e.g., 2 for binary, 8 for octal)
    output reg [127:0] result // Output result as a string
);

    integer temp;          // Temporary variable for calculations
    integer i;             // Loop counter
    reg [7:0] digit;       // Individual digit in the target base
    reg [127:0] str;       // Temporary string for storing the result

    always @(*) begin
        // Initialize variables
        temp = decimal;
        str = 128'b0;
        i = 0;
        
        if (base < 2 || base > 16) begin
            result = "ERROR"; // Invalid base
        end else begin
            while (temp > 0) begin
                digit = temp % base; // Get the remainder (current digit)
                temp = temp / base;  // Divide the number by the base
                
                // Convert digit to ASCII (for base 10 to 16)
                if (digit < 10) 
                    str[i*8 +: 8] = digit + "0";
                else
                    str[i*8 +: 8] = (digit - 10) + "A";

                i = i + 1;
            end
            
            // Reverse the string (as digits are generated in reverse order)
            result = 128'b0;
            for (integer j = 0; j < i; j = j + 1) begin
                result[j*8 +: 8] = str[(i-1-j)*8 +: 8];
            end
        end
    end

endmodule