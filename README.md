Up/Down Synchronous Counter (Verilog)

This repository contains a parameterized **Up/Down Synchronous Binary Counter** implemented in Verilog. It includes a testbench and waveform visualization for simulation and verification.


Features

- Parameterized bit-width (`N`)
- Up or Down counting based on `up_down` signal
- Synchronous Reset and Enable
- Fully synthesizable design

---

##  Module Overview

# `counter.v`

| Signal    | Direction | Width | Description                      |
|-----------|-----------|-------|----------------------------------|
| `clk`     | Input     | 1     | Clock signal                     |
| `rst`     | Input     | 1     | Synchronous reset                |
| `en`      | Input     | 1     | Enable signal                    |
| `up_down` | Input     | 1     | `1` for up, `0` for down         |
| `count`   | Output    | N     | Current counter value (N-bit)    |

---

# Folder Structure

up-down-counter/
 ├── src/
 │    └── counter.v          # Verilog module
 ├── tb/
 │    └── counter_tb.v       # Testbench
 ├── waveforms/
 │    └── counter.vcd       # VCD output (generated post-simulation) 
 │    └── counter_waveform.png       # Screenshot from GTKWave
 ├── README.md

---

# Simulation

You can simulate the design using **Icarus Verilog** and visualize the waveform using **GTKWave**.

# Steps:

1. **Compile and Simulate**
    ```bash
    iverilog -o counter.vvp -v tb/counter_tb.v src/counter.v
    vvp counter.vvp
    ```

2. **View Waveform**
    ```bash
    gtkwave waveforms/counter.vcd
    ```


# Tools Used

-  [Icarus Verilog](http://iverilog.icarus.com/) – open-source Verilog simulator
-  [GTKWave](http://gtkwave.sourceforge.net/) – waveform viewer


# Sample Output

> Waveform showing up and down counting with reset and enable

![Waveform](waveforms/counter_waveform.png)
