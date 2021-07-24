# MAS MULTIPLIERS

SystemVerilog verification testbench & design for multipliers written in SystemVerilog for learning purpose.

## Description

There are 2 multiplier designs using different algorithm: Radix 4 and Vedic. The 32 bits multiplier designs are provided in RTL and netlist synthesized using SAED90nm library. The verification testbench includes basic verification IPs that are reusable for both multipliers either in rtl/gate-level simulation. Compilation is done with Synopsys VCS and Synthesis with Synopsys DC.

## Short of

1) Covergroup
2) Configurable design

## How to run

At directory MAS_MULTIPLIER, configure for multiplier design, testbench and mode. 

MUL = vedic, radix

TB = vtb, svtb

MODE = rtl, gls

To run vedic design in rtl, with SystemVerilog testbench
```
make run MUL=vedic TB=svtb MODE=rtl
```
To run radix design in netlist, with SystemVerilog testbench
```
make run MUL=radix TB=svtb MODE=gls
```

## Author

Anthony Mui : akdemen@gmail.com  
