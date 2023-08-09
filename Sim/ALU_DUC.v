`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2023 01:57:29 AM
// Design Name: 
// Module Name: ALU_DUC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_DUC #(parameter n = 16) ();

    reg [n - 1:0] x,y;
    reg [2:0] op;
    wire [2*n - 1:0] f;
    
    ALU #(.n(n)) test(
        
        .x(x),
        .y(y),
        .op(op),
        .f(f)
        
    );
    
    initial begin
    
        #10 x=5; y=7; op=3'b000;
        #10 x=8; y=2; op=3'b001;
        #10 x=7; y=17; op=3'b010;
        #10 x=2; y=-40; op=3'b010;
        #10 x=15; y=5; op=3'b011;
        #10 x=15; y=-5; op=3'b011;
        #10 x=57; y=22; op=3'b100;
        #10 x=100; y=120; op=3'b101;
        #10 x=740; y=880; op=3'b111;
        #10 x=1000; y=880; op=3'b100;
        #10 x=100; y=880; op=3'b110;
        #10 x=1000; y=1000; op=3'b010;
        #10 x=3000; y=-100; op=3'b010;
        #10 x=1700; y=1600; op=3'b000;
        #10 x=32767; y=0; op=3'b000;
        #10 x=14; y=3; op=3'b011;
        #10 $finish;
          
    end       
endmodule

            end
            
    end
endmodule
