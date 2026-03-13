`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: gray_to_bin_tb
// Description: Simple Testbench for Gray to Binary Converter
//////////////////////////////////////////////////////////////////////////////////

module gray_to_bin_tb();

    reg  [7:0] gray;
    wire [7:0] bin;

    // Instantiate DUT
    gray_to_bin uut (
        .gray(gray),
        .bin(bin)
    );

    initial begin
        $display("--------------------------------------------------");
        $display(" Gray(dec) |  Gray Code  |   Binary   | Binary(dec)");
        $display("--------------------------------------------------");

        gray = 8'b00000000; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b00000001; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b00000011; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b00000010; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b00000110; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b00000111; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b00000101; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b00000100; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b00001100; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b00001101; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b00011110; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b00101011; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b01010110; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b10101100; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);
        gray = 8'b10000000; #10; $display("    %3d    |  %08b  |  %08b  |    %3d", gray, gray, bin, bin);

        $display("--------------------------------------------------");
        $finish;
    end

endmodule
