// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// ---------------------------------------------
// Core ibex_xif environment virtual sequencer
// ---------------------------------------------
class core_ibex_xif_vseqr extends uvm_sequencer;

  ibex_xif_mem_intf_response_sequencer                   data_if_seqr;
  ibex_xif_mem_intf_response_sequencer                   instr_if_seqr;
  irq_request_sequencer                              irq_seqr;

  `uvm_component_utils(core_ibex_xif_vseqr)
  `uvm_component_new

endclass
