-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity axi_bram_mealy_x16_w_arm_stub is
  port (
    rising_edge_arm : in std_logic_vector( 1-1 downto 0 );
    max_count_minus_one_step : in std_logic_vector( 32-1 downto 0 );
    rising_edge_start : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    address : out std_logic_vector( 32-1 downto 0 );
    we : out std_logic_vector( 1-1 downto 0 )
  );
end axi_bram_mealy_x16_w_arm_stub;
architecture structural of axi_bram_mealy_x16_w_arm_stub is 
begin
  sysgen_dut : entity xil_defaultlib.axi_bram_mealy_x16_w_arm 
  port map (
    rising_edge_arm => rising_edge_arm,
    max_count_minus_one_step => max_count_minus_one_step,
    rising_edge_start => rising_edge_start,
    clk => clk,
    address => address,
    we => we
  );
end structural;
