--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
--Date        : Mon May 15 20:46:52 2023
--Host        : entropy running 64-bit Ubuntu 20.04.5 LTS
--Command     : generate_target cordic_mix_v1_bd_wrapper.bd
--Design      : cordic_mix_v1_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cordic_mix_v1_bd_wrapper is
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
end cordic_mix_v1_bd_wrapper;

architecture STRUCTURE of cordic_mix_v1_bd_wrapper is
  component cordic_mix_v1_bd is
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
  end component cordic_mix_v1_bd;
begin
cordic_mix_v1_bd_i: component cordic_mix_v1_bd
     port map (
      clk => clk,
      dphi(21 downto 0) => dphi(21 downto 0),
      gateway_out11(0) => gateway_out11(0),
      im_even(15 downto 0) => im_even(15 downto 0),
      im_odd(15 downto 0) => im_odd(15 downto 0),
      out_im_even(15 downto 0) => out_im_even(15 downto 0),
      out_im_odd(15 downto 0) => out_im_odd(15 downto 0),
      out_re_even(15 downto 0) => out_re_even(15 downto 0),
      out_re_odd(15 downto 0) => out_re_odd(15 downto 0),
      re_even(15 downto 0) => re_even(15 downto 0),
      re_odd(15 downto 0) => re_odd(15 downto 0),
      sync_in(0) => sync_in(0),
      sync_out(0) => sync_out(0)
    );
end STRUCTURE;
