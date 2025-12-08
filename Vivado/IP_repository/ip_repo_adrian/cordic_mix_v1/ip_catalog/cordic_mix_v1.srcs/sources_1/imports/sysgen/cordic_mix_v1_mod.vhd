-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity cordic_mix_v1_stub is
  port (
    dphi : in std_logic_vector( 22-1 downto 0 );
    im_even : in std_logic_vector( 16-1 downto 0 );
    im_odd : in std_logic_vector( 16-1 downto 0 );
    re_even : in std_logic_vector( 16-1 downto 0 );
    re_odd : in std_logic_vector( 16-1 downto 0 );
    sync_in : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    gateway_out11 : out std_logic_vector( 1-1 downto 0 );
    out_im_even : out std_logic_vector( 16-1 downto 0 );
    out_im_odd : out std_logic_vector( 16-1 downto 0 );
    out_re_even : out std_logic_vector( 16-1 downto 0 );
    out_re_odd : out std_logic_vector( 16-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end cordic_mix_v1_stub;
architecture structural of cordic_mix_v1_stub is 
begin
  sysgen_dut : entity xil_defaultlib.cordic_mix_v1_0 
  port map (
    dphi => dphi,
    im_even => im_even,
    im_odd => im_odd,
    re_even => re_even,
    re_odd => re_odd,
    sync_in => sync_in,
    clk => clk,
    gateway_out11 => gateway_out11,
    out_im_even => out_im_even,
    out_im_odd => out_im_odd,
    out_re_even => out_re_even,
    out_re_odd => out_re_odd,
    sync_out => sync_out
  );
end structural;
