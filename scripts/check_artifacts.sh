#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
required=(
  rtl/washing_machine_controller.v
  tb/tb_washing_machine_controller.v
  report/6_finish.rpt
  gds/6_final.gds
  gds/6_1_merged.gds
  physical_design/6_final.def
  physical_design/6_final.odb
  physical_design/6_final.sdc
  physical_design/6_final.spef
  physical_design/6_final.v
  screenshots/Final_Layout.png
)
missing=0
for file in "${required[@]}"; do
  if [[ -s "$file" ]]; then printf 'OK      %s\n' "$file"; else printf 'MISSING %s\n' "$file"; missing=1; fi
done
exit "$missing"
