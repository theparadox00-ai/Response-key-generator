module SimplePUF (
    input [7:0] challenge,
    output response
);
assign response = ^challenge;  
endmodule