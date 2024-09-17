// Joseph Abdelmalek
// jabdelmalek@hmc.edu
// 9/16/24
// Testbench to test the LED summer module

module summertestbench();
    logic [3:0] n1, n2;
    logic [4:0] sum;
	
    // Instantiate the DUT
    summer dut(.n1(n1), .n2(n2), .sum(sum));

	initial begin
        reset = 0; #20; reset = 1; #5;

        #5; n1 = 'd3;	n2 = 'd14;	//00011 (3),01110 (E),10001
        #5; n1 = 'd7;	n2 = 'd10;	//00111 (7),01010 (A),10001
        #5; n1 = 'd12;	n2 = 'd9;	//01100 (C),01001 (9),10101
        #5; n1 = 'd6;	n2 = 'd4;	//00110 (6),00100 (4),01010
        #5; n1 = 'd0;	n2 = 'd15;	//00000 (0),01111 (F),01111
        #5; n1 = 'd8;	n2 = 'd7;	//01000 (8),00111 (7),01111
    end

endmodule