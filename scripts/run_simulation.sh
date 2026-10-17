#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
command -v iverilog >/dev/null || { echo "ERROR: iverilog is not installed." >&2; exit 1; }
command -v vvp >/dev/null || { echo "ERROR: vvp is not installed." >&2; exit 1; }
mkdir -p sim
iverilog -g2012 -s tb_washing_machine_controller -o sim/tb_washing_machine_controller.out rtl/washing_machine_controller.v tb/tb_washing_machine_controller.v
(cd sim && vvp tb_washing_machine_controller.out)
