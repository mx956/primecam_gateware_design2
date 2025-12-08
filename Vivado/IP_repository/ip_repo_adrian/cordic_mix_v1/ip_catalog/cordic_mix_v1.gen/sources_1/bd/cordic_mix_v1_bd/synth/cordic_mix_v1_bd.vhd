--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Mon May 15 20:46:52 2023
--Host        : entropy running 64-bit Ubuntu 20.04.5 LTS
--Command     : generate_target cordic_mix_v1_bd.bd
--Design      : cordic_mix_v1_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cordic_mix_v1_bd is
  port (
    clk : in STD_LOGIC;
    dphi : in STD_LOGIC_VECTOR ( 21 downto 0 );
    gateway_out11 : out STD_LOGIC_VECTOR ( 0 to 0 );
    im_even : in STD_LOGIC_VECTOR ( 15 downto 0 );
    im_odd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    out_im_even : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_im_odd : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_re_even : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_re_odd : out STD_LOGIC_VECTOR ( 15 downto 0 );
    re_even : in STD_LOGIC_VECTOR ( 15 downto 0 );
    re_odd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sync_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    sync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of cordic_mix_v1_bd : entity is "cordic_mix_v1_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cordic_mix_v1_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of cordic_mix_v1_bd : entity is "cordic_mix_v1_bd.hwdef";
end cordic_mix_v1_bd;

architecture STRUCTURE of cordic_mix_v1_bd is
  component cordic_mix_v1_bd_cordic_mix_v1_1_0 is
  port (
    dphi : in STD_LOGIC_VECTOR ( 21 downto 0 );
    im_even : in STD_LOGIC_VECTOR ( 15 downto 0 );
    im_odd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    re_even : in STD_LOGIC_VECTOR ( 15 downto 0 );
    re_odd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sync_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    gateway_out11 : out STD_LOGIC_VECTOR ( 0 to 0 );
    out_im_even : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_im_odd : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_re_even : out STD_LOGIC_VECTOR ( 15 downto 0 );
    out_re_odd : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sync_out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component cordic_mix_v1_bd_cordic_mix_v1_1_0;
  signal clk_1 : STD_LOGIC;
  signal cordic_mix_v1_1_gateway_out11 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cordic_mix_v1_1_out_im_even : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cordic_mix_v1_1_out_im_odd : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cordic_mix_v1_1_out_re_even : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cordic_mix_v1_1_out_re_odd : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cordic_mix_v1_1_sync_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal dphi_1 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal im_even_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal im_odd_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal re_even_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal re_odd_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sync_in_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN cordic_mix_v1_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of dphi : signal is "xilinx.com:signal:data:1.0 DATA.DPHI DATA";
  attribute X_INTERFACE_PARAMETER of dphi : signal is "XIL_INTERFACENAME DATA.DPHI, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of gateway_out11 : signal is "xilinx.com:signal:data:1.0 DATA.GATEWAY_OUT11 DATA";
  attribute X_INTERFACE_PARAMETER of gateway_out11 : signal is "XIL_INTERFACENAME DATA.GATEWAY_OUT11, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of im_even : signal is "xilinx.com:signal:data:1.0 DATA.IM_EVEN DATA";
  attribute X_INTERFACE_PARAMETER of im_even : signal is "XIL_INTERFACENAME DATA.IM_EVEN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of im_odd : signal is "xilinx.com:signal:data:1.0 DATA.IM_ODD DATA";
  attribute X_INTERFACE_PARAMETER of im_odd : signal is "XIL_INTERFACENAME DATA.IM_ODD, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of out_im_even : signal is "xilinx.com:signal:data:1.0 DATA.OUT_IM_EVEN DATA";
  attribute X_INTERFACE_PARAMETER of out_im_even : signal is "XIL_INTERFACENAME DATA.OUT_IM_EVEN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of out_im_odd : signal is "xilinx.com:signal:data:1.0 DATA.OUT_IM_ODD DATA";
  attribute X_INTERFACE_PARAMETER of out_im_odd : signal is "XIL_INTERFACENAME DATA.OUT_IM_ODD, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of out_re_even : signal is "xilinx.com:signal:data:1.0 DATA.OUT_RE_EVEN DATA";
  attribute X_INTERFACE_PARAMETER of out_re_even : signal is "XIL_INTERFACENAME DATA.OUT_RE_EVEN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of out_re_odd : signal is "xilinx.com:signal:data:1.0 DATA.OUT_RE_ODD DATA";
  attribute X_INTERFACE_PARAMETER of out_re_odd : signal is "XIL_INTERFACENAME DATA.OUT_RE_ODD, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of re_even : signal is "xilinx.com:signal:data:1.0 DATA.RE_EVEN DATA";
  attribute X_INTERFACE_PARAMETER of re_even : signal is "XIL_INTERFACENAME DATA.RE_EVEN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of re_odd : signal is "xilinx.com:signal:data:1.0 DATA.RE_ODD DATA";
  attribute X_INTERFACE_PARAMETER of re_odd : signal is "XIL_INTERFACENAME DATA.RE_ODD, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of sync_in : signal is "xilinx.com:signal:data:1.0 DATA.SYNC_IN DATA";
  attribute X_INTERFACE_PARAMETER of sync_in : signal is "XIL_INTERFACENAME DATA.SYNC_IN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of sync_out : signal is "xilinx.com:signal:data:1.0 DATA.SYNC_OUT DATA";
  attribute X_INTERFACE_PARAMETER of sync_out : signal is "XIL_INTERFACENAME DATA.SYNC_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
begin
  clk_1 <= clk;
  dphi_1(21 downto 0) <= dphi(21 downto 0);
  gateway_out11(0) <= cordic_mix_v1_1_gateway_out11(0);
  im_even_1(15 downto 0) <= im_even(15 downto 0);
  im_odd_1(15 downto 0) <= im_odd(15 downto 0);
  out_im_even(15 downto 0) <= cordic_mix_v1_1_out_im_even(15 downto 0);
  out_im_odd(15 downto 0) <= cordic_mix_v1_1_out_im_odd(15 downto 0);
  out_re_even(15 downto 0) <= cordic_mix_v1_1_out_re_even(15 downto 0);
  out_re_odd(15 downto 0) <= cordic_mix_v1_1_out_re_odd(15 downto 0);
  re_even_1(15 downto 0) <= re_even(15 downto 0);
  re_odd_1(15 downto 0) <= re_odd(15 downto 0);
  sync_in_1(0) <= sync_in(0);
  sync_out(0) <= cordic_mix_v1_1_sync_out(0);
cordic_mix_v1_1: component cordic_mix_v1_bd_cordic_mix_v1_1_0
     port map (
      clk => clk_1,
      dphi(21 downto 0) => dphi_1(21 downto 0),
      gateway_out11(0) => cordic_mix_v1_1_gateway_out11(0),
      im_even(15 downto 0) => im_even_1(15 downto 0),
      im_odd(15 downto 0) => im_odd_1(15 downto 0),
      out_im_even(15 downto 0) => cordic_mix_v1_1_out_im_even(15 downto 0),
      out_im_odd(15 downto 0) => cordic_mix_v1_1_out_im_odd(15 downto 0),
      out_re_even(15 downto 0) => cordic_mix_v1_1_out_re_even(15 downto 0),
      out_re_odd(15 downto 0) => cordic_mix_v1_1_out_re_odd(15 downto 0),
      re_even(15 downto 0) => re_even_1(15 downto 0),
      re_odd(15 downto 0) => re_odd_1(15 downto 0),
      sync_in(0) => sync_in_1(0),
      sync_out(0) => cordic_mix_v1_1_sync_out(0)
    );
end STRUCTURE;
