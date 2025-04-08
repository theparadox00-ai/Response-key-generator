`timescale 1ns / 1ps
module SimplePUF_tb;
    reg [7:0] challenge;
    wire response;
    SimplePUF uut (
        .challenge(challenge),
        .response(response)
    );

    initial begin
        $dumpfile("PUF.vcd");
        $dumpvars(0,SimplePUf_tb);
        $display("Time\tChallenge\tResponse");
        $monitor("%0t\t%b\t\t%b", $time, challenge, response);
        challenge = 8'b00000000; #10;  
        challenge = 8'b11111111; #10;  
        challenge = 8'b10101010; #10;  
        challenge = 8'b11001100; #10;
        challenge = 8'b10000001; #10;
        challenge = 8'b00011000; #10;
        challenge = 8'b00110011; #10;
        $finish;
    end

endmodule
