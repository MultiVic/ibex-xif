// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

module core_ibex_xif_fcov_bind;
  bind ibex_xif_core core_ibex_xif_fcov_if u_fcov_bind (
    .*
  );

  bind ibex_xif_core core_ibex_xif_pmp_fcov_if
  #(.PMPGranularity(PMPGranularity),
    .PMPNumRegions(PMPNumRegions),
    .PMPEnable(PMPEnable))
  u_pmp_fcov_bind (
    .*
  );
endmodule
