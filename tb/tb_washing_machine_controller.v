
`timescale 1ns/1ps

module tb_washing_machine_controller;

    reg clk = 0;
    reg rst_n = 0;
    reg start = 0;

    wire wash_en, rinse_en, spin_en, done;

    integer wash_count = 0;
    integer rinse_count = 0;
    integer spin_count = 0;
    integer done_count = 0;

    washing_machine_controller dut (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .wash_en(wash_en),
        .rinse_en(rinse_en),
        .spin_en(spin_en),
        .done(done)
    );

    always #5 clk = ~clk;

    // Count active cycles and check output exclusivity.
    always @(posedge clk) begin
        #1;
        if (rst_n) begin
            if ((wash_en && rinse_en) ||
                (wash_en && spin_en) ||
                (rinse_en && spin_en))
                $fatal(1, "FAIL: Multiple operation outputs active");

            if (wash_en)  wash_count  = wash_count + 1;
            if (rinse_en) rinse_count = rinse_count + 1;
            if (spin_en)  spin_count  = spin_count + 1;
            if (done)     done_count  = done_count + 1;
        end
    end

    initial begin
        $dumpfile("washing_machine.vcd");
        $dumpvars(0, tb_washing_machine_controller);

        // Reset
        repeat (2) @(negedge clk);
        rst_n = 1;

        // Start the cycle
        @(negedge clk);
        start = 1;
        @(negedge clk);
        start = 0;

        // Wait for completion
        wait(done == 1'b1);
        #2;

        // Verify durations
        if (wash_count != 5)
            $fatal(1, "FAIL: WASH count = %0d", wash_count);

        if (rinse_count != 3)
            $fatal(1, "FAIL: RINSE count = %0d", rinse_count);

        if (spin_count != 4)
            $fatal(1, "FAIL: SPIN count = %0d", spin_count);

        if (done_count != 1)
            $fatal(1, "FAIL: DONE count = %0d", done_count);

        $display("PASS: WASH duration");
        $display("PASS: RINSE duration");
        $display("PASS: SPIN duration");
        $display("PASS: DONE duration");
        $display("PASS: Output exclusivity");
        $display("ALL TESTS PASSED");

        $finish;
    end

    initial begin
        #5000;
        $fatal(1, "FAIL: Simulation timeout");
    end

endmodule
