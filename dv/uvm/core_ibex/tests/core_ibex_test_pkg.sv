// Copyright 2018 lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// ---------------------------------------------
// Core ibex_xif test package
// ---------------------------------------------
package core_ibex_xif_test_pkg;

  import uvm_pkg::*;
  import core_ibex_xif_env_pkg::*;
  import ibex_xif_mem_intf_pkg::*;
  import ibex_xif_mem_intf_agent_pkg::*;
  import irq_agent_pkg::*;
  import riscv_signature_pkg::*;
  import ibex_xif_pkg::*;
  import ibex_xif_cosim_agent_pkg::*;
  import push_pull_agent_pkg::*;

  typedef struct {
    ibex_xif_pkg::opcode_e  opcode;
    bit [2:0]           funct3;
    bit [6:0]           funct7;
    // 12-bit immediate, used only for SYSTEM instructions
    bit [11:0]          system_imm;
  } instr_t;

  typedef class core_ibex_xif_vseq;

  // For new_seq_lib...

  typedef enum bit [1:0] {
    SingleRun,    // Single iteration
    InfiniteRuns, // Run forever until stop is specified
    MultipleRuns  // Multiple runs with configurable or randomizable iteration count
    } run_type_e;
  typedef enum bit [1:0] {
    IsideErr, // Inject error in instruction side memory.
    DsideErr, // Inject error in data side memory.
    PickErr   // Pick which memory to inject error in.
    } error_type_e;

  typedef virtual push_pull_if#(
    .DeviceDataWidth(ibex_xif_pkg::SCRAMBLE_NONCE_W + ibex_xif_pkg::SCRAMBLE_KEY_W)
    ) scrambling_key_vif;

  `include "core_ibex_xif_report_server.sv"
  `include "core_ibex_xif_seq_lib.sv"
  `include "core_ibex_xif_new_seq_lib.sv"
  `include "core_ibex_xif_vseq.sv"
  `include "core_ibex_xif_base_test.sv"
  `include "core_ibex_xif_test_lib.sv"

endpackage
