###############################################################################
# Created by write_sdc
###############################################################################
current_design washing_machine_controller
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 10.0000 [get_ports {clk}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {rst_n}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {start}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {done}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {rinse_en}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {spin_en}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {wash_en}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
