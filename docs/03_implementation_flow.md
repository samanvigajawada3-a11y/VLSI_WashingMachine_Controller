# Implementation flow

The retained artifacts represent a flow using Verilog RTL, Yosys synthesis, and OpenROAD physical design on the SKY130 HD platform.

Typical stages include synthesis, floorplanning, power distribution, placement, clock-tree synthesis (CTS), global routing, detailed routing, filler insertion, and final database/GDS generation. The screenshots and logs document these stages.

Tool versions, PDK installation, and environment configuration affect reproducibility. The stored databases may not be portable to a different version of the flow or PDK.
