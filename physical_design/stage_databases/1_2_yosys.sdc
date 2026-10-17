current_design washing_machine_controller

create_clock -name core_clock -period 10.0 [get_ports clk]

set_input_delay 2.0 -clock core_clock [get_ports {rst_n start}]
set_output_delay 2.0 -clock core_clock [all_outputs]
