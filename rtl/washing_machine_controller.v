
module washing_machine_controller #(
    parameter WASH_CYCLES  = 5,
    parameter RINSE_CYCLES = 3,
    parameter SPIN_CYCLES  = 4
)(
    input  wire clk,
    input  wire rst_n,
    input  wire start,

    output reg wash_en,
    output reg rinse_en,
    output reg spin_en,
    output reg done
);

    // FSM states
    localparam IDLE  = 3'd0;
    localparam WASH  = 3'd1;
    localparam RINSE = 3'd2;
    localparam SPIN  = 3'd3;
    localparam DONE  = 3'd4;

    reg [2:0] state;
    reg [2:0] timer_count;

    // Sequential logic: state and timer
    always @(posedge clk) begin
        if (!rst_n) begin
            state       <= IDLE;
            timer_count <= 0;
        end else begin
            case (state)

                IDLE: begin
                    timer_count <= 0;
                    if (start)
                        state <= WASH;
                end

                WASH: begin
                    if (timer_count == WASH_CYCLES - 1) begin
                        state       <= RINSE;
                        timer_count <= 0;
                    end else begin
                        timer_count <= timer_count + 1'b1;
                    end
                end

                RINSE: begin
                    if (timer_count == RINSE_CYCLES - 1) begin
                        state       <= SPIN;
                        timer_count <= 0;
                    end else begin
                        timer_count <= timer_count + 1'b1;
                    end
                end

                SPIN: begin
                    if (timer_count == SPIN_CYCLES - 1) begin
                        state       <= DONE;
                        timer_count <= 0;
                    end else begin
                        timer_count <= timer_count + 1'b1;
                    end
                end

                DONE: begin
                    state       <= IDLE;
                    timer_count <= 0;
                end

                default: begin
                    state       <= IDLE;
                    timer_count <= 0;
                end

            endcase
        end
    end

    // Combinational output logic
    always @(*) begin
        wash_en  = 1'b0;
        rinse_en = 1'b0;
        spin_en  = 1'b0;
        done     = 1'b0;

        case (state)
            WASH:  wash_en  = 1'b1;
            RINSE: rinse_en = 1'b1;
            SPIN:  spin_en  = 1'b1;
            DONE:  done     = 1'b1;
            default: begin
            end
        endcase
    end

endmodule
