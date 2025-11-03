`timescale 1ns / 1ps

module clocks(input clk, input rst, output phi_1, output phi_2);
reg [8:0]count_1;//11111010 ==> 400 kHz
reg clk_1 , clk_2;

assign phi_1 = clk_1;
assign phi_2 = clk_2;
always@(posedge clk or posedge rst)begin 
if(rst) begin 
count_1 <= 8'b0;
clk_1 <= 1'b0;
clk_2 <= 1'b0;
end
else begin count_1 <= count_1 +1;
    if(count_1 <= 9'd99)begin 
    clk_1 <= 1'b0;
    clk_2 <= 1'b0;
    end
    else if(count_1 >= 9'd100)begin 
        clk_1 <= 1'b1;
        clk_2 <= 1'b0;
    end
  else if(count_1 >= 9'd199)begin 
        clk_1 <= 1'b0;
        clk_2 <= 1'b0;
    end
  else if(count_1 >= 9'd299)begin 
        clk_1 <= 1'b0;
        clk_2 <= 1'b1;
    end
  else if(count_1 >= 9'd399)begin 
        clk_1 <= 1'b0;
        clk_2 <= 1'b0;
    end
  else if(count_1 >= 9'd499)begin 
    count_1 <=  9'd0;
    end    

end
end
endmodule
