// Joseph Abdelmalek
// jabdelmalek@hmc.edu
// Testbench to test the multiplex module

module multiplextestbench();
    logic	reset, clk;
	logic	[3:0] n1, n2;
	logic	d1, d2;
	logic 	[3:0] s;

    multiplex dut(reset, clk, n1, n2, d1, d2, s);

    always begin
        clk = 1; #1; clk = 0; #1;
    end

    initial begin
        reset = 0; #20; reset = 1; #5;
    end
endmodule