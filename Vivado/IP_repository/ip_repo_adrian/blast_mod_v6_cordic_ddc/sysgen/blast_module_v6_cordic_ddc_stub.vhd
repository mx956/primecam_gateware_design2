-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity blast_module_v6_cordic_ddc_stub is
  port (
    accum_len : in std_logic_vector( 24-1 downto 0 );
    accum_reset : in std_logic_vector( 1-1 downto 0 );
    adc_i0 : in std_logic_vector( 16-1 downto 0 );
    adc_i1 : in std_logic_vector( 16-1 downto 0 );
    adc_q0 : in std_logic_vector( 16-1 downto 0 );
    adc_q1 : in std_logic_vector( 16-1 downto 0 );
    bin_num : in std_logic_vector( 10-1 downto 0 );
    dds_shift : in std_logic_vector( 9-1 downto 0 );
    dphi_even : in std_logic_vector( 16-1 downto 0 );
    dphi_odd : in std_logic_vector( 16-1 downto 0 );
    fft_shift : in std_logic_vector( 10-1 downto 0 );
    load_bins : in std_logic_vector( 11-1 downto 0 );
    start_dac : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    accum_snap_i0 : out std_logic_vector( 32-1 downto 0 );
    accum_snap_i1 : out std_logic_vector( 32-1 downto 0 );
    accum_snap_q0 : out std_logic_vector( 32-1 downto 0 );
    accum_snap_q1 : out std_logic_vector( 32-1 downto 0 );
    accum_snap_sync : out std_logic_vector( 1-1 downto 0 );
    ddc_snap_i0q0 : out std_logic_vector( 38-1 downto 0 );
    ddc_snap_i1q1 : out std_logic_vector( 38-1 downto 0 );
    ddc_snap_sync : out std_logic_vector( 1-1 downto 0 );
    fft_of : out std_logic_vector( 1-1 downto 0 );
    fft_snap_i0q0 : out std_logic_vector( 36-1 downto 0 );
    fft_snap_i1q1 : out std_logic_vector( 36-1 downto 0 );
    fft_snap_sync : out std_logic_vector( 1-1 downto 0 )
  );
end blast_module_v6_cordic_ddc_stub;
architecture structural of blast_module_v6_cordic_ddc_stub is 
begin
  sysgen_dut : entity xil_defaultlib.blast_module_v6_cordic_ddc 
  port map (
    accum_len => accum_len,
    accum_reset => accum_reset,
    adc_i0 => adc_i0,
    adc_i1 => adc_i1,
    adc_q0 => adc_q0,
    adc_q1 => adc_q1,
    bin_num => bin_num,
    dds_shift => dds_shift,
    dphi_even => dphi_even,
    dphi_odd => dphi_odd,
    fft_shift => fft_shift,
    load_bins => load_bins,
    start_dac => start_dac,
    clk => clk,
    accum_snap_i0 => accum_snap_i0,
    accum_snap_i1 => accum_snap_i1,
    accum_snap_q0 => accum_snap_q0,
    accum_snap_q1 => accum_snap_q1,
    accum_snap_sync => accum_snap_sync,
    ddc_snap_i0q0 => ddc_snap_i0q0,
    ddc_snap_i1q1 => ddc_snap_i1q1,
    ddc_snap_sync => ddc_snap_sync,
    fft_of => fft_of,
    fft_snap_i0q0 => fft_snap_i0q0,
    fft_snap_i1q1 => fft_snap_i1q1,
    fft_snap_sync => fft_snap_sync
  );
end structural;
