# Verification

The testbench in `tb/tb_washing_machine_controller.v` generates a clock, releases reset, pulses `start`, checks that operation enables are mutually exclusive, and verifies expected default operation durations and a single `done` cycle. It also includes a simulation timeout.

Run `bash scripts/run_simulation.sh` from the repository root. A successful run should print `ALL TESTS PASSED`.
