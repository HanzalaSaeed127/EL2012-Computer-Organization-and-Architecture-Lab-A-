Lab 02 - Implementation of Combinational Circuits using Verilog Gate and Dataflow Level Modeling

Objective
In this lab we implemented combinational circuits in Verilog using both gate level and dataflow modeling and verified them using testbenches and Logisim.

Files
- Task1Adders.v - half adder and full adder, both gate level and dataflow modeling
- Task1AddersVerify.circ - logisim circuit for verifying the half adder and full adder
- Task2Decoder.v - 3x8 decoder, both gate level and dataflow modeling
- Task2DecoderVerify.circ - logisim circuit for verifying the decoder
- Task3Multiplexer.v - 8x1 multiplexer, both gate level and dataflow modeling
- Task3MultiplexerVerify.circ - logisim circuit for verifying the multiplexer

How to Run
Open ModelSim and compile the verilog file:
vlog Task1Adders.v

Then simulate the testbench:
vsim testHalfAdderStructural
run -all

Do the same for the other testbenches in each task by changing the testbench module name.

For the logisim files just open them directly in Logisim and check the outputs by changing the input switches.

Summary
In this lab I implemented a half adder and full adder using both gate level and dataflow modeling and verified the results using testbenches covering all input combinations. I then implemented a 3x8 decoder the same way and checked that all eight outputs matched the expected truth table. Lastly I implemented an 8x1 multiplexer using both modeling styles and verified the output for all combinations of select lines. All circuits were also built and tested in Logisim and the results matched the ModelSim output.
