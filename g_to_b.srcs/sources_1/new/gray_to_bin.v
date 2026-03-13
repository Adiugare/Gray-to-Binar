`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: gray_to_bin
// Description: Gray Code to Binary Converter (8-bit)
//////////////////////////////////////////////////////////////////////////////////

module gray_to_bin(
    input  [7:0] gray,
    output [7:0] bin
);

    // Gray to Binary conversion formula:
    // MSB of binary = MSB of gray
    // Each other bit: bin[i] = bin[i+1] XOR gray[i]

    assign bin[7] = gray[7];
    assign bin[6] = bin[7] ^ gray[6];
    assign bin[5] = bin[6] ^ gray[5];
    assign bin[4] = bin[5] ^ gray[4];
    assign bin[3] = bin[4] ^ gray[3];
    assign bin[2] = bin[3] ^ gray[2];
    assign bin[1] = bin[2] ^ gray[1];
    assign bin[0] = bin[1] ^ gray[0];

endmodule