# Project overview

The Washing Machine Cycle Controller is a synchronous FSM that sequences wash, rinse, and spin operations. It is a compact digital design intended to demonstrate an RTL-to-GDS implementation flow.

## Interface

Inputs: `clk`, active-low synchronous reset `rst_n`, and `start`.

Outputs: `wash_en`, `rinse_en`, `spin_en`, and `done`.

## State sequence

`IDLE → WASH → RINSE → SPIN → DONE → IDLE`

The default cycle lengths are 5, 3, and 4 active clock cycles for wash, rinse, and spin, respectively.
