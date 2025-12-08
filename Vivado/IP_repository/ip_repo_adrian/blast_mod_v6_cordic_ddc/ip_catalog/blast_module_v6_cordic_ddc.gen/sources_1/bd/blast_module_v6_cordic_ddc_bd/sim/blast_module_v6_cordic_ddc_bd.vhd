--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
--Date        : Tue May 23 14:49:18 2023
--Host        : entropy running 64-bit Ubuntu 20.04.5 LTS
--Command     : generate_target blast_module_v6_cordic_ddc_bd.bd
--Design      : blast_module_v6_cordic_ddc_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blast_module_v6_cordic_ddc_bd is
  port (
    accum_len : in STD_LOGIC_VECTOR ( 23 downto 0 );
    accum_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    accum_snap_i0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    accum_snap_i1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    accum_snap_q0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    accum_snap_q1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    accum_snap_sync : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc_i0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_i1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bin_num : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    ddc_snap_i0q0 : out STD_LOGIC_VECTOR ( 37 downto 0 );
    ddc_snap_i1q1 : out STD_LOGIC_VECTOR ( 37 downto 0 );
    ddc_snap_sync : out STD_LOGIC_VECTOR ( 0 to 0 );
    dds_shift : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dphi_even : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dphi_odd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_of : out STD_LOGIC_VECTOR ( 0 to 0 );
    fft_shift : in STD_LOGIC_VECTOR ( 9 downto 0 );
    fft_snap_i0q0 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    fft_snap_i1q1 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    fft_snap_sync : out STD_LOGIC_VECTOR ( 0 to 0 );
    load_bins : in STD_LOGIC_VECTOR ( 10 downto 0 );
    start_dac : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of blast_module_v6_cordic_ddc_bd : entity is "blast_module_v6_cordic_ddc_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=blast_module_v6_cordic_ddc_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of blast_module_v6_cordic_ddc_bd : entity is "blast_module_v6_cordic_ddc_bd.hwdef";
end blast_module_v6_cordic_ddc_bd;

architecture STRUCTURE of blast_module_v6_cordic_ddc_bd is
  component blast_module_v6_cordic_ddc_bd_blast_module_v6_cordic_ddc_1_0 is
  port (
    accum_len : in STD_LOGIC_VECTOR ( 23 downto 0 );
    accum_reset : in STD_LOGIC_VECTOR ( 0 to 0 );
    adc_i0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_i1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    adc_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bin_num : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dds_shift : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dphi_even : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dphi_odd : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fft_shift : in STD_LOGIC_VECTOR ( 9 downto 0 );
    load_bins : in STD_LOGIC_VECTOR ( 10 downto 0 );
    start_dac : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    accum_snap_i0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    accum_snap_i1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    accum_snap_q0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    accum_snap_q1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    accum_snap_sync : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddc_snap_i0q0 : out STD_LOGIC_VECTOR ( 37 downto 0 );
    ddc_snap_i1q1 : out STD_LOGIC_VECTOR ( 37 downto 0 );
    ddc_snap_sync : out STD_LOGIC_VECTOR ( 0 to 0 );
    fft_of : out STD_LOGIC_VECTOR ( 0 to 0 );
    fft_snap_i0q0 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    fft_snap_i1q1 : out STD_LOGIC_VECTOR ( 35 downto 0 );
    fft_snap_sync : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component blast_module_v6_cordic_ddc_bd_blast_module_v6_cordic_ddc_1_0;
  signal accum_len_1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal accum_reset_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal adc_i0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal adc_i1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal adc_q0_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal adc_q1_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal bin_num_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal blast_module_v6_cordic_ddc_1_accum_snap_i0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal blast_module_v6_cordic_ddc_1_accum_snap_i1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal blast_module_v6_cordic_ddc_1_accum_snap_q0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal blast_module_v6_cordic_ddc_1_accum_snap_q1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal blast_module_v6_cordic_ddc_1_accum_snap_sync : STD_LOGIC_VECTOR ( 0 to 0 );
  signal blast_module_v6_cordic_ddc_1_ddc_snap_i0q0 : STD_LOGIC_VECTOR ( 37 downto 0 );
  signal blast_module_v6_cordic_ddc_1_ddc_snap_i1q1 : STD_LOGIC_VECTOR ( 37 downto 0 );
  signal blast_module_v6_cordic_ddc_1_ddc_snap_sync : STD_LOGIC_VECTOR ( 0 to 0 );
  signal blast_module_v6_cordic_ddc_1_fft_of : STD_LOGIC_VECTOR ( 0 to 0 );
  signal blast_module_v6_cordic_ddc_1_fft_snap_i0q0 : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal blast_module_v6_cordic_ddc_1_fft_snap_i1q1 : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal blast_module_v6_cordic_ddc_1_fft_snap_sync : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_1 : STD_LOGIC;
  signal dds_shift_1 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal dphi_even_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal dphi_odd_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fft_shift_1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal load_bins_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal start_dac_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN blast_module_v6_cordic_ddc_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of accum_len : signal is "xilinx.com:signal:data:1.0 DATA.ACCUM_LEN DATA";
  attribute X_INTERFACE_PARAMETER of accum_len : signal is "XIL_INTERFACENAME DATA.ACCUM_LEN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of accum_reset : signal is "xilinx.com:signal:reset:1.0 RST.ACCUM_RESET RST";
  attribute X_INTERFACE_PARAMETER of accum_reset : signal is "XIL_INTERFACENAME RST.ACCUM_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of accum_snap_i0 : signal is "xilinx.com:signal:data:1.0 DATA.ACCUM_SNAP_I0 DATA";
  attribute X_INTERFACE_PARAMETER of accum_snap_i0 : signal is "XIL_INTERFACENAME DATA.ACCUM_SNAP_I0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 17} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of accum_snap_i1 : signal is "xilinx.com:signal:data:1.0 DATA.ACCUM_SNAP_I1 DATA";
  attribute X_INTERFACE_PARAMETER of accum_snap_i1 : signal is "XIL_INTERFACENAME DATA.ACCUM_SNAP_I1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 17} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of accum_snap_q0 : signal is "xilinx.com:signal:data:1.0 DATA.ACCUM_SNAP_Q0 DATA";
  attribute X_INTERFACE_PARAMETER of accum_snap_q0 : signal is "XIL_INTERFACENAME DATA.ACCUM_SNAP_Q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 17} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of accum_snap_q1 : signal is "xilinx.com:signal:data:1.0 DATA.ACCUM_SNAP_Q1 DATA";
  attribute X_INTERFACE_PARAMETER of accum_snap_q1 : signal is "XIL_INTERFACENAME DATA.ACCUM_SNAP_Q1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 17} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}";
  attribute X_INTERFACE_INFO of accum_snap_sync : signal is "xilinx.com:signal:data:1.0 DATA.ACCUM_SNAP_SYNC DATA";
  attribute X_INTERFACE_PARAMETER of accum_snap_sync : signal is "XIL_INTERFACENAME DATA.ACCUM_SNAP_SYNC, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of adc_i0 : signal is "xilinx.com:signal:data:1.0 DATA.ADC_I0 DATA";
  attribute X_INTERFACE_PARAMETER of adc_i0 : signal is "XIL_INTERFACENAME DATA.ADC_I0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of adc_i1 : signal is "xilinx.com:signal:data:1.0 DATA.ADC_I1 DATA";
  attribute X_INTERFACE_PARAMETER of adc_i1 : signal is "XIL_INTERFACENAME DATA.ADC_I1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of adc_q0 : signal is "xilinx.com:signal:data:1.0 DATA.ADC_Q0 DATA";
  attribute X_INTERFACE_PARAMETER of adc_q0 : signal is "XIL_INTERFACENAME DATA.ADC_Q0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of adc_q1 : signal is "xilinx.com:signal:data:1.0 DATA.ADC_Q1 DATA";
  attribute X_INTERFACE_PARAMETER of adc_q1 : signal is "XIL_INTERFACENAME DATA.ADC_Q1, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of bin_num : signal is "xilinx.com:signal:data:1.0 DATA.BIN_NUM DATA";
  attribute X_INTERFACE_PARAMETER of bin_num : signal is "XIL_INTERFACENAME DATA.BIN_NUM, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ddc_snap_i0q0 : signal is "xilinx.com:signal:data:1.0 DATA.DDC_SNAP_I0Q0 DATA";
  attribute X_INTERFACE_PARAMETER of ddc_snap_i0q0 : signal is "XIL_INTERFACENAME DATA.DDC_SNAP_I0Q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 38} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of ddc_snap_i1q1 : signal is "xilinx.com:signal:data:1.0 DATA.DDC_SNAP_I1Q1 DATA";
  attribute X_INTERFACE_PARAMETER of ddc_snap_i1q1 : signal is "XIL_INTERFACENAME DATA.DDC_SNAP_I1Q1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 38} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of ddc_snap_sync : signal is "xilinx.com:signal:data:1.0 DATA.DDC_SNAP_SYNC DATA";
  attribute X_INTERFACE_PARAMETER of ddc_snap_sync : signal is "XIL_INTERFACENAME DATA.DDC_SNAP_SYNC, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of dds_shift : signal is "xilinx.com:signal:data:1.0 DATA.DDS_SHIFT DATA";
  attribute X_INTERFACE_PARAMETER of dds_shift : signal is "XIL_INTERFACENAME DATA.DDS_SHIFT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dphi_even : signal is "xilinx.com:signal:data:1.0 DATA.DPHI_EVEN DATA";
  attribute X_INTERFACE_PARAMETER of dphi_even : signal is "XIL_INTERFACENAME DATA.DPHI_EVEN, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of dphi_odd : signal is "xilinx.com:signal:data:1.0 DATA.DPHI_ODD DATA";
  attribute X_INTERFACE_PARAMETER of dphi_odd : signal is "XIL_INTERFACENAME DATA.DPHI_ODD, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of fft_of : signal is "xilinx.com:signal:data:1.0 DATA.FFT_OF DATA";
  attribute X_INTERFACE_PARAMETER of fft_of : signal is "XIL_INTERFACENAME DATA.FFT_OF, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of fft_shift : signal is "xilinx.com:signal:data:1.0 DATA.FFT_SHIFT DATA";
  attribute X_INTERFACE_PARAMETER of fft_shift : signal is "XIL_INTERFACENAME DATA.FFT_SHIFT, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of fft_snap_i0q0 : signal is "xilinx.com:signal:data:1.0 DATA.FFT_SNAP_I0Q0 DATA";
  attribute X_INTERFACE_PARAMETER of fft_snap_i0q0 : signal is "XIL_INTERFACENAME DATA.FFT_SNAP_I0Q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 36} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of fft_snap_i1q1 : signal is "xilinx.com:signal:data:1.0 DATA.FFT_SNAP_I1Q1 DATA";
  attribute X_INTERFACE_PARAMETER of fft_snap_i1q1 : signal is "XIL_INTERFACENAME DATA.FFT_SNAP_I1Q1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 36} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of fft_snap_sync : signal is "xilinx.com:signal:data:1.0 DATA.FFT_SNAP_SYNC DATA";
  attribute X_INTERFACE_PARAMETER of fft_snap_sync : signal is "XIL_INTERFACENAME DATA.FFT_SNAP_SYNC, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of load_bins : signal is "xilinx.com:signal:data:1.0 DATA.LOAD_BINS DATA";
  attribute X_INTERFACE_PARAMETER of load_bins : signal is "XIL_INTERFACENAME DATA.LOAD_BINS, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of start_dac : signal is "xilinx.com:signal:data:1.0 DATA.START_DAC DATA";
  attribute X_INTERFACE_PARAMETER of start_dac : signal is "XIL_INTERFACENAME DATA.START_DAC, LAYERED_METADATA undef";
begin
  accum_len_1(23 downto 0) <= accum_len(23 downto 0);
  accum_reset_1(0) <= accum_reset(0);
  accum_snap_i0(31 downto 0) <= blast_module_v6_cordic_ddc_1_accum_snap_i0(31 downto 0);
  accum_snap_i1(31 downto 0) <= blast_module_v6_cordic_ddc_1_accum_snap_i1(31 downto 0);
  accum_snap_q0(31 downto 0) <= blast_module_v6_cordic_ddc_1_accum_snap_q0(31 downto 0);
  accum_snap_q1(31 downto 0) <= blast_module_v6_cordic_ddc_1_accum_snap_q1(31 downto 0);
  accum_snap_sync(0) <= blast_module_v6_cordic_ddc_1_accum_snap_sync(0);
  adc_i0_1(15 downto 0) <= adc_i0(15 downto 0);
  adc_i1_1(15 downto 0) <= adc_i1(15 downto 0);
  adc_q0_1(15 downto 0) <= adc_q0(15 downto 0);
  adc_q1_1(15 downto 0) <= adc_q1(15 downto 0);
  bin_num_1(9 downto 0) <= bin_num(9 downto 0);
  clk_1 <= clk;
  ddc_snap_i0q0(37 downto 0) <= blast_module_v6_cordic_ddc_1_ddc_snap_i0q0(37 downto 0);
  ddc_snap_i1q1(37 downto 0) <= blast_module_v6_cordic_ddc_1_ddc_snap_i1q1(37 downto 0);
  ddc_snap_sync(0) <= blast_module_v6_cordic_ddc_1_ddc_snap_sync(0);
  dds_shift_1(8 downto 0) <= dds_shift(8 downto 0);
  dphi_even_1(15 downto 0) <= dphi_even(15 downto 0);
  dphi_odd_1(15 downto 0) <= dphi_odd(15 downto 0);
  fft_of(0) <= blast_module_v6_cordic_ddc_1_fft_of(0);
  fft_shift_1(9 downto 0) <= fft_shift(9 downto 0);
  fft_snap_i0q0(35 downto 0) <= blast_module_v6_cordic_ddc_1_fft_snap_i0q0(35 downto 0);
  fft_snap_i1q1(35 downto 0) <= blast_module_v6_cordic_ddc_1_fft_snap_i1q1(35 downto 0);
  fft_snap_sync(0) <= blast_module_v6_cordic_ddc_1_fft_snap_sync(0);
  load_bins_1(10 downto 0) <= load_bins(10 downto 0);
  start_dac_1(0) <= start_dac(0);
blast_module_v6_cordic_ddc_1: component blast_module_v6_cordic_ddc_bd_blast_module_v6_cordic_ddc_1_0
     port map (
      accum_len(23 downto 0) => accum_len_1(23 downto 0),
      accum_reset(0) => accum_reset_1(0),
      accum_snap_i0(31 downto 0) => blast_module_v6_cordic_ddc_1_accum_snap_i0(31 downto 0),
      accum_snap_i1(31 downto 0) => blast_module_v6_cordic_ddc_1_accum_snap_i1(31 downto 0),
      accum_snap_q0(31 downto 0) => blast_module_v6_cordic_ddc_1_accum_snap_q0(31 downto 0),
      accum_snap_q1(31 downto 0) => blast_module_v6_cordic_ddc_1_accum_snap_q1(31 downto 0),
      accum_snap_sync(0) => blast_module_v6_cordic_ddc_1_accum_snap_sync(0),
      adc_i0(15 downto 0) => adc_i0_1(15 downto 0),
      adc_i1(15 downto 0) => adc_i1_1(15 downto 0),
      adc_q0(15 downto 0) => adc_q0_1(15 downto 0),
      adc_q1(15 downto 0) => adc_q1_1(15 downto 0),
      bin_num(9 downto 0) => bin_num_1(9 downto 0),
      clk => clk_1,
      ddc_snap_i0q0(37 downto 0) => blast_module_v6_cordic_ddc_1_ddc_snap_i0q0(37 downto 0),
      ddc_snap_i1q1(37 downto 0) => blast_module_v6_cordic_ddc_1_ddc_snap_i1q1(37 downto 0),
      ddc_snap_sync(0) => blast_module_v6_cordic_ddc_1_ddc_snap_sync(0),
      dds_shift(8 downto 0) => dds_shift_1(8 downto 0),
      dphi_even(15 downto 0) => dphi_even_1(15 downto 0),
      dphi_odd(15 downto 0) => dphi_odd_1(15 downto 0),
      fft_of(0) => blast_module_v6_cordic_ddc_1_fft_of(0),
      fft_shift(9 downto 0) => fft_shift_1(9 downto 0),
      fft_snap_i0q0(35 downto 0) => blast_module_v6_cordic_ddc_1_fft_snap_i0q0(35 downto 0),
      fft_snap_i1q1(35 downto 0) => blast_module_v6_cordic_ddc_1_fft_snap_i1q1(35 downto 0),
      fft_snap_sync(0) => blast_module_v6_cordic_ddc_1_fft_snap_sync(0),
      load_bins(10 downto 0) => load_bins_1(10 downto 0),
      start_dac(0) => start_dac_1(0)
    );
end STRUCTURE;
