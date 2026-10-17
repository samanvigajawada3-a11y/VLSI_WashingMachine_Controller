#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
command -v yosys >/dev/null || { echo "ERROR: yosys is not installed." >&2; exit 1; }
mkdir -p synth
yosys -p 'read_verilog rtl/washing_machine_controller.v; hierarchy -top washing_machine_controller; proc; opt; check; synth -top washing_machine_controller; stat; write_verilog synth/washing_machine_synth.v' 2>&1 | tee logs/yosys_synthesis_rerun.log
