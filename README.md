<div align="center"> <h2>🟦 Single-Port RAM in SystemVerilog</h2> <em>A versatile memory module for digital design, with parameterized flexibility and comprehensive testbench support.</em> </div> <hr style="border:none; border-top:2px solid #6c8ebf; margin-bottom:1.2em;"/> <div align="center" style="font-size:1.1em;">
🗂️ <b>Overview</b>
This project implements a <u>single-port RAM</u> module in SystemVerilog—ideal for educational, hobbyist, or professional digital systems requiring efficient, parameterizable memory storage.

</div>
<div align="center">
✨ <b>Key Features</b>

</div> <ul> <li>🔹 <b>Single-port memory:</b> Unified port supports both read and write operations</li> <li>⚙️ <b>Parameterized design:</b> Easily configure <code>data width</code>, <code>address width</code>, and memory <code>depth</code></li> <li>⏱️ <b>Synchronous operation:</b> All memory actions are clock-driven for reliable timing</li> <li>🔄 <b>Reset functionality:</b> Instantly clears memory contents with an active-low reset</li> <li>🧪 <b>Comprehensive testbench:</b> Thoroughly validates read/write sequences and edge cases</li> </ul> <div align="center">
<u><b>🔍 Design Details</b></u>

</div> <table align="center"> <tr><td><b>Inputs</b></td><td> <ul> <li>⏰ <b>clk</b>: Clock signal</li> <li>♻️ <b>rst</b>: Active-low reset</li> <li>✅ <b>en</b>: Enable memory operation</li> <li>📝 <b>wr_rd</b>: Write/Read control (1: write, 0: read)</li> <li>🏷️ <b>addr</b>: Address</li> <li>🔢 <b>data_in</b>: Data input (on write)</li> </ul> </td></tr> <tr><td><b>Outputs</b></td><td> <ul> <li>📤 <b>data_out</b>: Data output (on read)</li> <li>🟢 <b>out_en</b>: Output enable (valid data indicator)</li> </ul> </td></tr> <tr><td><b>Parameters</b></td><td> <ul> <li><b>data_width</b>: Bit width of data</li> <li><b>addr_width</b>: Address bit width</li> <li><b>depth</b>: Memory size (2<sup>addr_width</sup>)</li> </ul> </td></tr> </table> <div align="center">
🌟 <b>Testbench</b>
Randomized read and write sequences, output verification, and handy log messages for effective debugging.

</div> <div align="center">
<b>🚀 Quick Start</b>

</div> <ol> <li>Clone the repository: <br><code>git clone https://github.com/your-repo/single-port-ram.git</code></li> <li>Simulate design and testbench using ModelSim, VCS, or XSIM: <br><code>vcs design.sv testbench.sv; ./simv</code></li> <li>Adjust <code>data_width</code>, <code>addr_width</code>, and <code>depth</code> as needed in the RAM module.</li> </ol> <div align="center">
📄 <b>License</b>
This project is licensed under the MIT License—see the LICENSE file for full details.

</div> <hr style="border:none; border-top:2px dotted #6c8ebf; margin-top:2em;"/> <div align="center" style="font-size:1.05em;"> Built with purpose by <b>Vijaya Bala V</b> Empowering digital designers, one memory cell at a time! </div>
