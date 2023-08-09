`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/04/2023 12:34:57 AM
// Design Name: 
// Module Name: ALU
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


module ALU #(parameter n=16)(
    
    input [2:0] op,
    input signed [n - 1:0] x,y,
    output reg signed [2*n - 1:0] f
    );

    always@(x,y,op) begin
    
        f='bx;
    
        if(op==3'b000) begin
            f=x+y;
            $display("\t%d + %d = %d",x,y,f);
            $display("\t%b + %b = %b",x,y,f);
            end
            
        else if(op==3'b001) begin
            f=x-y;
            $display("\t%d - %d = %d",x,y,f);
            $display("\t%b - %b = %b",x,y,f);
            end
            
        else if(op==3'b010) begin
            f=x*y;
            $display("\t%d * %d = %d",x,y,f);
            $display("\t%b * %b = %b",x,y,f);
            end
            
        else if(op==3'b011)begin 
            f={x/y,x%y};
                if(x%y == 0 )begin
                    $display("\t%d / %d = %d",x,y,x/y);
                    $display("\t%b / %b = %b",x,y,f);
                    end
                    
                else begin
                $display("\t%d / %d = %d+%d/%d",x,y,(x/y),(x%y),y);
                $display("\t%b / %b = %b",x,y,f);
                end
            end
            
        else if(op==3'b100) begin
            f=x|y;
            $display("\t%d | %d = %d",x,y,f);
            $display("\t%b | %b = %b",x,y,f);
            end
            
        else if(op==3'b101) begin
            f=x&y;
            $display("\t%d & %d = %d",x,y,f);
            $display("\t%b & %b = %b",x,y,f);
            end
            
        else if(op==3'b110) begin
            f= ~x;
            $display("\t~%d = %d",x,f);
            $display("\t~%b = %b",x,f);
            end
            
        else if(op==3'b111) begin
            f= ~y;
            $display("\t~%d = %d",y,f);
            $display("\t~%b = %b",y,f);
            end
            
    end
endmodule
