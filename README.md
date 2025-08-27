# Ibex-XIF
Ibex is a production-quality open source 32-bit RISC-V CPU core written in SystemVerilog. The CPU core is heavily parametrizable and well suited for embedded control applications. Ibex is being extensively verified and has seen multiple tape-outs. Ibex supports the Integer (I) or Embedded (E), Integer Multiplication and Division (M), Compressed (C), and B (Bit Manipulation) extensions.

> [!NOTE]  
> This repository is a fork of https://github.com/michael-platzer/ibex, which is a fork of the original Ibex repository (https://github.com/lowRISC/ibex) and adds support for the eXtension interface (XIF).

Our main changes are renaming of all modules, replacing `ibex_` with `ibex_xif_`. For example: `ibex_core` -> `ibex_xif_core`.
As we are also using the opentitan repository in MultiVic, two ibex implementations are available: the original Ibex implementation and the modified Ibex-XIF implementation. Therefore, we had to rename all instances of `ibex_` to `ibex_xif_` in the codebase to avoid conflicts.