Single-Port RAM in SystemVerilog
Overview
This project implements a single-port RAM module in SystemVerilog. The design provides basic read and write functionality, making it a useful building block for digital systems requiring simple memory storage.

Features
Single-port memory: Read and write operations use the same port.
Parameterized design: Easily configure data width, address width, and memory depth.
Synchronous operations: All operations are synchronized to the clock signal.
Reset functionality: Clears memory on reset.
Testbench included: Validates the design with comprehensive tests.
Design Details
RAM Module
The ram module supports the following:

Inputs:
clk: Clock signal.
rst: Active-low reset signal.
en: Enable signal for memory operations.
wr_rd: Write/Read control (1 for write, 0 for read).
addr: Address input for read/write operations.
data_in: Data input for write operations.
Outputs:
data_out: Data output for read operations.
out_en: Output enable signal, indicating valid data on data_out.
Parameterization
The module supports parameterized configuration:

data_width: Width of the data in bits.
addr_width: Width of the address in bits.
depth: Number of memory locations (2^addr_width).
Testbench
The included testbench verifies the functionality of the RAM:

Randomized read/write operations.
Comparison of expected and actual outputs.
Detailed logs for debugging.
How to Use
Clone the repository:
bash
Copy code
git clone https://github.com/your-repo/single-port-ram.git
Simulate the design using a simulator like ModelSim, VCS, or XSIM:
bash
Copy code
vcs design.sv testbench.sv
./simv
Customize parameters in the ram module to fit your requirements.
License
This project is licensed under the MIT License. See the LICENSE file for details.

