module counter(
    input wire clk,
    input wire rst_n,
    input wire load,
    input wire [7:0] in,
    output reg [7:0] out,
    input wire en
);


always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        out <= '0;
    else if(load) begin
        out <= in;
    end
    else if(en) begin
        out <= (out + 8'b1);
    end
    else
        out <= out;

end

endmodule