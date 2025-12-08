--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Tue Jun 14 19:39:33 2022
--Host        : entropy running 64-bit Ubuntu 20.04.3 LTS
--Command     : generate_target axi_bram_mealy_x16_w_arm_bd_wrapper.bd
--Design      : axi_bram_mealy_x16_w_arm_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bram_mealy_x16_w_arm_bd_wrapper is
  port (
    address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    max_count_minus_one_step : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rising_edge_arm : in STD_LOGIC_VECTOR ( 0 to 0 );
    rising_edge_start : in STD_LOGIC_VECTOR ( 0 to 0 );
    we : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end axi_bram_mealy_x16_w_arm_bd_wrapper;

architecture STRUCTURE of axi_bram_mealy_x16_w_arm_bd_wrapper is
  component axi_bram_mealy_x16_w_arm_bd is
  port (
    address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    max_count_minus_one_step : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rising_edge_arm : in STD_LOGIC_VECTOR ( 0 to 0 );
    rising_edge_start : in STD_LOGIC_VECTOR ( 0 to 0 );
    we : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component axi_bram_mealy_x16_w_arm_bd;
begin
axi_bram_mealy_x16_w_arm_bd_i: component axi_bram_mealy_x16_w_arm_bd
     port map (
      address(31 downto 0) => address(31 downto 0),
      clk => clk,
      max_count_minus_one_step(31 downto 0) => max_count_minus_one_step(31 downto 0),
      rising_edge_arm(0) => rising_edge_arm(0),
      rising_edge_start(0) => rising_edge_start(0),
      we(0) => we(0)
    );
end STRUCTURE;
