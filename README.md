Braun Multiplier (Carry Save Array Multiplier)

1. Overview
- This project implements a 4x4 Braun Multiplier using gate-level Verilog.
- It follows the carry-save array architecture, commonly used for efficient unsigned multiplication in hardware.
- The complete multiplier is built step by step, starting from basic logic modules and then integrating them systematically.
- No behavioral constructs are used — the entire design is built structurally using logic gates and cascaded adders.

2. Design Approach
- The development was done in a layered, step-wise manner to ensure clarity and correctness.
- First, a Half Adder was implemented and tested independently.
- Then, a Full Adder was created using two Half Adders and also tested separately.
- Finally, these blocks were used to build the full Braun Multiplier.
- Each stage includes a corresponding testbench to verify functionality before moving to the next.

3. Gate-Level Focus
- Gate-level modeling was used intentionally for all modules.
- Although not preferred for large systems, this approach gives more control and visibility into logic flow(Good for Beginners).
- It helps in visualizing how partial products are generated, how carry bits propagate.

4. Files Included
- HA.v                : Half Adder module
- HA_tb.v             : Testbench for Half Adder
- FA.v                : Full Adder module (built using HAs)
- FA_tb.v             : Testbench for Full Adder
- BM.v                : 4x4 Braun Multiplier (top module)
- BM_tb.v             : Testbench for the multiplier
- HA waveform.png     : Waveform of Half Adder output
- FA waveform.png     : Waveform of Full Adder output
- BM waveform.png     : Waveform of Multiplier output

5. How to Run
- Open all `.v` files in a code editor like Visual Studio Code.
- It is recommended to install the "Verilog-HDL/SystemVerilog" extension in VS Code for proper syntax highlighting.(better than word or notepad)
- Copy and paste the code into any Verilog simulator like EDA Playground (https://www.edaplayground.com/).
- In EDA Playground:
  - Paste the module and testbench code separately
  - Select Icarus Verilog 12.0 as the simulator
  - Enable waveform viewing (EPWave)(make sure to have the $dumpvars and $dumpfile in the code)
  - Click "Run" to compile and simulate
  - TIPS: Go to settings and check the option that allows waveforms to run on new tab and make sure to expand the code windows)

6. Simulation
- All testbenches use `$monitor` to track values and `$dumpfile`/`$dumpvars` to generate waveforms.
- The testbench for the multiplier runs every possible 4-bit input combination (from 0000 × 0000 to 1111 × 1111).
- The simulation confirms the correctness of each stage before integrating to the full design.

7. Main Focus
- The project was created with the goal of learning how arithmetic circuits are built from logic gates.
- Emphasis was placed on understanding internal data paths, carry propagation, and modular design using simple building blocks.
- All design and testing were done manually having testing each half adders and full adders with thier  modules.

8. Author
- Adarsh Akshat  
- B.Tech in Electrical and Electronics Engineering, NITK  
- GitHub: https://github.com/aadiakshat
