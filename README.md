# Washing Machine Cycle Controller — RTL to GDS

A small synchronous finite-state-machine (FSM) project implemented in Verilog and taken through simulation, synthesis, and the OpenROAD physical-design flow using the SkyWater SKY130 HD platform.

## Functional overview

The controller sequences through `IDLE → WASH → RINSE → SPIN → DONE`, then returns to `IDLE`. A `start` input begins the cycle. Active-low synchronous reset `rst_n` returns the FSM and timer to their reset values.

Default operation durations:
- WASH: 5 clock cycles
- RINSE: 3 clock cycles
- SPIN: 4 clock cycles

These durations are configurable through the `WASH_CYCLES`, `RINSE_CYCLES`, and `SPIN_CYCLES` parameters.

## Repository structure

- `rtl/` — synthesizable RTL and any locally retained RTL run artifacts
- `tb/` — testbench, simulation transcript, and waveform
- `sim/` — waveform copy
- `synth/` — synthesized Verilog netlist
- `logs/` — Yosys and OpenROAD flow logs/JSON summaries
- `report/` — physical-design and synthesis reports, including `6_finish.rpt`
- `gds/` — final and merged GDSII layout files
- `physical_design/` — final DEF/ODB/SDC/SPEF/netlist and configuration, plus stage databases
- `screenshots/` — screenshots of implementation stages
- `docs/` — project notes and report interpretation
- `scripts/` — helper scripts for simulation, synthesis, and artifact checks

## Re-run simulation

From the repository root, with Icarus Verilog installed:

```bash
bash scripts/run_simulation.sh
```

Or manually:

```bash
iverilog -g2012 -s tb_washing_machine_controller -o sim.out rtl/washing_machine_controller.v tb/tb_washing_machine_controller.v
vvp sim.out
```

The testbench is expected to print `ALL TESTS PASSED` when it completes successfully.

## Re-run Yosys synthesis

With Yosys installed:

```bash
bash scripts/run_yosys_synthesis.sh
```

This is a simple generic synthesis run; the checked-in `synth/washing_machine_synth.v` and the OpenROAD flow outputs are retained as implementation artifacts.

## Physical design and timing

The `physical_design/` and `gds/` directories retain outputs from the OpenROAD flow for the SKY130 HD platform. `report/6_finish.rpt` is the final-stage report captured from the flow. Read the report itself for the exact constraints, path details, and metric definitions; do not interpret one summary field in isolation.

The reported run includes detailed timing checks and physical-design checks. Timing results are valid only in the context of the clock/IO constraints and library/platform configuration used for that run. The GDS is a generated implementation artifact, not by itself proof of fabrication readiness or silicon validation.

## Screenshots

The `screenshots/` folder contains captures of floorplanning, power distribution, placement, CTS, global routing, detailed routing, filler insertion, and final layout.

## Important notes

- This repository preserves the artifacts produced in the submitted environment. Some OpenROAD databases and reports are tool/platform-specific and may require the same flow version and PDK setup to reopen.
- No FPGA board or fabricated chip is implied by this project.
- Review the exact RTL, testbench, constraints, and reports before making performance or sign-off claims.
