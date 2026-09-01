# Lab 01 - Basic Logic Gates using ModelSim and Logisim

## Objective
In this lab we used ModelSim and Logisim to implement basic logic gates and verify their working through simulation.

## Files
- task1_gatelevel.v - AND, OR, NOT, NAND, NOR, XOR, XNOR gates using gate level modeling
- task2_dataflow.v - same gates but using dataflow modeling with assign statements
- task3_logisim.circ - logisim circuit for verifying the gates
- task4_complexgate.v - a combined logic circuit made from NOT, AND, OR gates, done in both gate level and dataflow modeling
- task5_logisim_circuit.circ - logisim circuit for verifying the combined logic circuit
- task6_onecomplement.v - 1s complement of a 4 bit input, done in both gate level and dataflow modeling

## How to Run
Open ModelSim and compile the verilog file:
vlog task1_gatelevel.v

Then simulate the testbench:
vsim Andtestbench
run -all

Do the same for the other testbenches in each task.

For the logisim files just open them directly in Logisim and check the outputs by changing the input switches.

## Summary
In this lab I implemented AND, OR, NOT, NAND, NOR, XOR and XNOR gates in Verilog using both gate level and dataflow modeling and checked that both gave the same waveform output. I also verified the gates using Logisim and the results matched the ModelSim output. Then I implemented a more complex circuit made of NOT, AND and OR gates and tested it for all input combinations. Lastly I implemented the 1s complement of a 4 bit number using both modeling styles and verified the output using a testbench.
