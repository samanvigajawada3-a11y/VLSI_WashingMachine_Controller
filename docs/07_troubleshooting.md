# Troubleshooting

- If `iverilog` is missing, install Icarus Verilog using the package manager for your Linux distribution.
- If the simulation cannot find a module, run scripts from the repository root and check the paths in the command.
- If the physical-design flow cannot find SKY130 libraries or LEF/Liberty files, configure the matching PDK/platform environment and the flow's design config.
- If a GUI cannot open a database, use a compatible OpenROAD/KLayout version and matching platform files.
