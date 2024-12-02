// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

package ibex_xif_cosim_agent_pkg;
  import uvm_pkg::*;
  import ibex_xif_mem_intf_pkg::*;

  `include "uvm_macros.svh"

  `include "ibex_xif_cosim_cfg.sv"
  `include "ibex_xif_rvfi_seq_item.sv"
  `include "ibex_xif_rvfi_monitor.sv"
  `include "ibex_xif_ifetch_seq_item.sv"
  `include "ibex_xif_ifetch_monitor.sv"
  `include "ibex_xif_ifetch_pmp_seq_item.sv"
  `include "ibex_xif_ifetch_pmp_monitor.sv"
  `include "ibex_xif_cosim_scoreboard.sv"
  `include "ibex_xif_cosim_agent.sv"
endpackage
