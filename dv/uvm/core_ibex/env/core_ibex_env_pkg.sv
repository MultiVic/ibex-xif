// Copyright 2018 lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// ---------------------------------------------
// Core ibex_xif environment package
// ---------------------------------------------

package core_ibex_xif_env_pkg;

  import uvm_pkg::*;
  import ibex_xif_mem_intf_agent_pkg::*;
  import irq_agent_pkg::*;
  import ibex_xif_cosim_agent_pkg::*;
  import push_pull_agent_pkg::*;

  typedef push_pull_agent#(
    .DeviceDataWidth(ibex_xif_pkg::SCRAMBLE_NONCE_W + ibex_xif_pkg::SCRAMBLE_KEY_W)
    ) scrambling_key_agent;
  typedef push_pull_agent_cfg#(
    .DeviceDataWidth(ibex_xif_pkg::SCRAMBLE_NONCE_W + ibex_xif_pkg::SCRAMBLE_KEY_W)
    ) scrambling_key_agent_cfg;

  `include "core_ibex_xif_vseqr.sv"
  `include "core_ibex_xif_env_cfg.sv"
  `include "core_ibex_xif_scoreboard.sv"
  `include "core_ibex_xif_env.sv"

endpackage
