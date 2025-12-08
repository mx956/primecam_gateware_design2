--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Tue Jun 14 19:39:33 2022
--Host        : entropy running 64-bit Ubuntu 20.04.3 LTS
--Command     : generate_target axi_bram_mealy_x16_w_arm_bd.bd
--Design      : axi_bram_mealy_x16_w_arm_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_mealy_x16_w_arm_bd is
  port (
    address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    max_count_minus_one_step : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rising_edge_arm : in STD_LOGIC_VECTOR ( 0 to 0 );
    rising_edge_start : in STD_LOGIC_VECTOR ( 0 to 0 );
    we : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of axi_bram_mealy_x16_w_arm_bd : entity is "axi_bram_mealy_x16_w_arm_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=axi_bram_mealy_x16_w_arm_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of axi_bram_mealy_x16_w_arm_bd : entity is "axi_bram_mealy_x16_w_arm_bd.hwdef";
end axi_bram_mealy_x16_w_arm_bd;

architecture STRUCTURE of axi_bram_mealy_x16_w_arm_bd is
  component axi_bram_mealy_x16_w_arm_bd_axi_bram_mealy_x16_w_arm_1_0 is
  port (
    rising_edge_arm : in STD_LOGIC_VECTOR ( 0 to 0 );
    max_count_minus_one_step : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rising_edge_start : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    we : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component axi_bram_mealy_x16_w_arm_bd_axi_bram_mealy_x16_w_arm_1_0;
  signal axi_bram_mealy_x16_w_arm_1_address : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_mealy_x16_w_arm_1_we : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_1 : STD_LOGIC;
  signal max_count_minus_one_step_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rising_edge_arm_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rising_edge_start_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN axi_bram_mealy_x16_w_arm_bd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of address : signal is "xilinx.com:signal:data:1.0 DATA.ADDRESS DATA";
  attribute X_INTERFACE_PARAMETER of address : signal is "XIL_INTERFACENAME DATA.ADDRESS, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
  attribute X_INTERFACE_INFO of max_count_minus_one_step : signal is "xilinx.com:signal:data:1.0 DATA.MAX_COUNT_MINUS_ONE_STEP DATA";
  attribute X_INTERFACE_PARAMETER of max_count_minus_one_step : signal is "XIL_INTERFACENAME DATA.MAX_COUNT_MINUS_ONE_STEP, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of rising_edge_arm : signal is "xilinx.com:signal:data:1.0 DATA.RISING_EDGE_ARM DATA";
  attribute X_INTERFACE_PARAMETER of rising_edge_arm : signal is "XIL_INTERFACENAME DATA.RISING_EDGE_ARM, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of rising_edge_start : signal is "xilinx.com:signal:data:1.0 DATA.RISING_EDGE_START DATA";
  attribute X_INTERFACE_PARAMETER of rising_edge_start : signal is "XIL_INTERFACENAME DATA.RISING_EDGE_START, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of we : signal is "xilinx.com:signal:data:1.0 DATA.WE DATA";
  attribute X_INTERFACE_PARAMETER of we : signal is "XIL_INTERFACENAME DATA.WE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}";
begin
  address(31 downto 0) <= axi_bram_mealy_x16_w_arm_1_address(31 downto 0);
  clk_1 <= clk;
  max_count_minus_one_step_1(31 downto 0) <= max_count_minus_one_step(31 downto 0);
  rising_edge_arm_1(0) <= rising_edge_arm(0);
  rising_edge_start_1(0) <= rising_edge_start(0);
  we(0) <= axi_bram_mealy_x16_w_arm_1_we(0);
axi_bram_mealy_x16_w_arm_1: component axi_bram_mealy_x16_w_arm_bd_axi_bram_mealy_x16_w_arm_1_0
     port map (
      address(31 downto 0) => axi_bram_mealy_x16_w_arm_1_address(31 downto 0),
      clk => clk_1,
      max_count_minus_one_step(31 downto 0) => max_count_minus_one_step_1(31 downto 0),
      rising_edge_arm(0) => rising_edge_arm_1(0),
      rising_edge_start(0) => rising_edge_start_1(0),
      we(0) => axi_bram_mealy_x16_w_arm_1_we(0)
    );
end STRUCTURE;
