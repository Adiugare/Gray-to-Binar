# Gray-to-Binar
A Gray to Binary Converter changes a Gray code number back into its standard binary equivalent.
A Gray to Binary Converter is a combinational logic circuit that converts an 8-bit Gray code back into its standard binary equivalent. 
It uses the previously calculated binary bit to find the next bit.

Conversion Formula
bin[MSB] = gray[MSB]
bin[i]   = bin[i+1] XOR gray[i]

Project Structure
b_to_g/
├── b_to_g.srcs/
│   ├── sources_1/new/gray_to_bin.v       # RTL Source File
│   └── sim_1/new/gray_to_bin_tb.v        # Testbench File
├── b_to_g.sim/
│   └── sim_1/behav/xsim/
│       ├── simulate.log                   # Simulation Report
│       └── elaborate.log                  # Elaboration Report
├── b_to_g.xpr                            # Vivado Project File
├── .gitignore                            # Vivado Ignore File
└── README.md                             # Project Description

| Decimal | Gray Code | Binary |
|-----|----------|----------|
| 0   | 00000000 | 00000000 |
| 1   | 00000001 | 00000001 |
| 2   | 00000011 | 00000010 |
| 3   | 00000010 | 00000011 |
| 4   | 00000110 | 00000100 |
| 5   | 00000111 | 00000101 |
| 6   | 00000101 | 00000110 |
| 7   | 00000100 | 00000111 |
| 8   | 00001100 | 00001000 |
| 9   | 00001101 | 00001001 |
| 10  | 00001111 | 00001010 |
| 11  | 00001110 | 00001011 |
| 12  | 00001010 | 00001100 |
| 13  | 00001011 | 00001101 |
| 14  | 00001001 | 00001110 |
| 15  | 00001000 | 00001111 |
| 20  | 00011110 | 00010100 |
| 50  | 00101011 | 00110010 |
| 100 | 01010110 | 01100100 |
| 200 | 10101100 | 11001000 |
| 255 | 10000000 | 11111111 |


RTL Code
verilogmodule gray_to_bin(
    input  [7:0] gray,
    output [7:0] bin
);
    assign bin[7] = gray[7];
    assign bin[6] = bin[7] ^ gray[6];
    assign bin[5] = bin[6] ^ gray[5];
    assign bin[4] = bin[5] ^ gray[4];
    assign bin[3] = bin[4] ^ gray[3];
    assign bin[2] = bin[3] ^ gray[2];
    assign bin[1] = bin[2] ^ gray[1];
    assign bin[0] = bin[1] ^ gray[0];
endmodule

Tools Used
ToolDetailsVivado2024.1LanguageVerilog HDLTarget FPGAxc7a35tcpg236-1 (Artix-7)SimulatorVivado Behavioral Simulator

How to Run

Clone the repository

bashgit clone https://github.com/Adiugare/Gray-to-Binary.git

Open Vivado → Open Project → select b_to_g.xpr
Run Behavioral Simulation
Add signals gray and bin to waveform window


Applications

Rotary Encoders — convert back to usable binary
Analog to Digital Converters (ADC)
Digital Communication — decode received Gray code
Error Correction Systems


Key Feature

Uses previously calculated binary bits to compute the next bit — making it dependent on cascaded XOR operations.


Author

Name: Aditya
GitHub: Adiugare
Subject: VLSI Design
