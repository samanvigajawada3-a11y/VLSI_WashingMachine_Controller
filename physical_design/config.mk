export DESIGN_NAME = washing_machine_controller
export PLATFORM = sky130hd

export VERILOG_FILES = $(DESIGN_HOME)/src/washing_machine_controller/washing_machine_controller.v
export SDC_FILE = $(DESIGN_HOME)/$(PLATFORM)/washing_machine_controller/constraint.sdc

export CORE_UTILIZATION = 35
export PLACE_DENSITY = 0.50
export TNS_END_PERCENT = 100
