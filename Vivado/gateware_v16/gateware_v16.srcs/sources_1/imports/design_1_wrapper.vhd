--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
--Date        : Thu Nov 13 15:27:48 2025
--Host        : MattXie-Nitro5 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    adc0_clk_clk_n : in STD_LOGIC;
    adc0_clk_clk_p : in STD_LOGIC;
    adc1_clk_clk_n : in STD_LOGIC;
    adc1_clk_clk_p : in STD_LOGIC;
    dac1_clk_clk_n : in STD_LOGIC;
    dac1_clk_clk_p : in STD_LOGIC;
    default_sysclk2_125mhz_clk_n : in STD_LOGIC;
    default_sysclk2_125mhz_clk_p : in STD_LOGIC;
    eth_mdc_3 : out STD_LOGIC;
    eth_mdio_3 : inout STD_LOGIC;
    eth_rst_b_3 : out STD_LOGIC;
    eth_rxclk_3 : in STD_LOGIC;
    eth_rxctl_3 : in STD_LOGIC;
    eth_rxd_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    eth_txclk_3 : out STD_LOGIC;
    eth_txctl_3 : out STD_LOGIC;
    eth_txd_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    iic_rtl_scl_io : inout STD_LOGIC;
    iic_rtl_sda_io : inout STD_LOGIC;
    mdio_io_port_0_mdc : out STD_LOGIC;
    mdio_io_port_0_mdio_io : inout STD_LOGIC;
    ref_clk_clk_n : in STD_LOGIC;
    ref_clk_clk_p : in STD_LOGIC;
    ref_clk_fsel : out STD_LOGIC_VECTOR ( 0 to 0 );
    ref_clk_oe : out STD_LOGIC_VECTOR ( 0 to 0 );
    rgmii_port_0_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_port_0_rx_ctl : in STD_LOGIC;
    rgmii_port_0_rxc : in STD_LOGIC;
    rgmii_port_0_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_port_0_tx_ctl : out STD_LOGIC;
    rgmii_port_0_txc : out STD_LOGIC;
    sysref_in_diff_n : in STD_LOGIC;
    sysref_in_diff_p : in STD_LOGIC;
    vin0_01_v_n : in STD_LOGIC;
    vin0_01_v_p : in STD_LOGIC;
    vin0_23_v_n : in STD_LOGIC;
    vin0_23_v_p : in STD_LOGIC;
    vin1_01_v_n : in STD_LOGIC;
    vin1_01_v_p : in STD_LOGIC;
    vin1_23_v_n : in STD_LOGIC;
    vin1_23_v_p : in STD_LOGIC;
    vout10_v_n : out STD_LOGIC;
    vout10_v_p : out STD_LOGIC;
    vout11_v_n : out STD_LOGIC;
    vout11_v_p : out STD_LOGIC;
    vout12_v_n : out STD_LOGIC;
    vout12_v_p : out STD_LOGIC;
    vout13_v_n : out STD_LOGIC;
    vout13_v_p : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    eth_mdc_3 : out STD_LOGIC;
    eth_mdio_3 : inout STD_LOGIC;
    eth_rst_b_3 : out STD_LOGIC;
    eth_txclk_3 : out STD_LOGIC;
    eth_txctl_3 : out STD_LOGIC;
    eth_txd_3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ref_clk_fsel : out STD_LOGIC_VECTOR ( 0 to 0 );
    ref_clk_oe : out STD_LOGIC_VECTOR ( 0 to 0 );
    eth_rxclk_3 : in STD_LOGIC;
    eth_rxctl_3 : in STD_LOGIC;
    eth_rxd_3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ref_clk_clk_n : in STD_LOGIC;
    ref_clk_clk_p : in STD_LOGIC;
    adc0_clk_clk_n : in STD_LOGIC;
    adc0_clk_clk_p : in STD_LOGIC;
    adc1_clk_clk_n : in STD_LOGIC;
    adc1_clk_clk_p : in STD_LOGIC;
    iic_rtl_scl_i : in STD_LOGIC;
    iic_rtl_scl_o : out STD_LOGIC;
    iic_rtl_scl_t : out STD_LOGIC;
    iic_rtl_sda_i : in STD_LOGIC;
    iic_rtl_sda_o : out STD_LOGIC;
    iic_rtl_sda_t : out STD_LOGIC;
    dac1_clk_clk_n : in STD_LOGIC;
    dac1_clk_clk_p : in STD_LOGIC;
    default_sysclk2_125mhz_clk_n : in STD_LOGIC;
    default_sysclk2_125mhz_clk_p : in STD_LOGIC;
    mdio_io_port_0_mdc : out STD_LOGIC;
    mdio_io_port_0_mdio_i : in STD_LOGIC;
    mdio_io_port_0_mdio_o : out STD_LOGIC;
    mdio_io_port_0_mdio_t : out STD_LOGIC;
    rgmii_port_0_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_port_0_rx_ctl : in STD_LOGIC;
    rgmii_port_0_rxc : in STD_LOGIC;
    rgmii_port_0_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_port_0_tx_ctl : out STD_LOGIC;
    rgmii_port_0_txc : out STD_LOGIC;
    sysref_in_diff_n : in STD_LOGIC;
    sysref_in_diff_p : in STD_LOGIC;
    vout10_v_n : out STD_LOGIC;
    vout10_v_p : out STD_LOGIC;
    vout11_v_n : out STD_LOGIC;
    vout11_v_p : out STD_LOGIC;
    vout12_v_n : out STD_LOGIC;
    vout12_v_p : out STD_LOGIC;
    vout13_v_n : out STD_LOGIC;
    vout13_v_p : out STD_LOGIC;
    vin0_01_v_n : in STD_LOGIC;
    vin0_01_v_p : in STD_LOGIC;
    vin0_23_v_n : in STD_LOGIC;
    vin0_23_v_p : in STD_LOGIC;
    vin1_01_v_n : in STD_LOGIC;
    vin1_01_v_p : in STD_LOGIC;
    vin1_23_v_n : in STD_LOGIC;
    vin1_23_v_p : in STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal iic_rtl_scl_i : STD_LOGIC;
  signal iic_rtl_scl_o : STD_LOGIC;
  signal iic_rtl_scl_t : STD_LOGIC;
  signal iic_rtl_sda_i : STD_LOGIC;
  signal iic_rtl_sda_o : STD_LOGIC;
  signal iic_rtl_sda_t : STD_LOGIC;
  signal mdio_io_port_0_mdio_i : STD_LOGIC;
  signal mdio_io_port_0_mdio_o : STD_LOGIC;
  signal mdio_io_port_0_mdio_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      adc0_clk_clk_n => adc0_clk_clk_n,
      adc0_clk_clk_p => adc0_clk_clk_p,
      adc1_clk_clk_n => adc1_clk_clk_n,
      adc1_clk_clk_p => adc1_clk_clk_p,
      dac1_clk_clk_n => dac1_clk_clk_n,
      dac1_clk_clk_p => dac1_clk_clk_p,
      default_sysclk2_125mhz_clk_n => default_sysclk2_125mhz_clk_n,
      default_sysclk2_125mhz_clk_p => default_sysclk2_125mhz_clk_p,
      eth_mdc_3 => eth_mdc_3,
      eth_mdio_3 => eth_mdio_3,
      eth_rst_b_3 => eth_rst_b_3,
      eth_rxclk_3 => eth_rxclk_3,
      eth_rxctl_3 => eth_rxctl_3,
      eth_rxd_3(3 downto 0) => eth_rxd_3(3 downto 0),
      eth_txclk_3 => eth_txclk_3,
      eth_txctl_3 => eth_txctl_3,
      eth_txd_3(3 downto 0) => eth_txd_3(3 downto 0),
      iic_rtl_scl_i => iic_rtl_scl_i,
      iic_rtl_scl_o => iic_rtl_scl_o,
      iic_rtl_scl_t => iic_rtl_scl_t,
      iic_rtl_sda_i => iic_rtl_sda_i,
      iic_rtl_sda_o => iic_rtl_sda_o,
      iic_rtl_sda_t => iic_rtl_sda_t,
      mdio_io_port_0_mdc => mdio_io_port_0_mdc,
      mdio_io_port_0_mdio_i => mdio_io_port_0_mdio_i,
      mdio_io_port_0_mdio_o => mdio_io_port_0_mdio_o,
      mdio_io_port_0_mdio_t => mdio_io_port_0_mdio_t,
      ref_clk_clk_n => ref_clk_clk_n,
      ref_clk_clk_p => ref_clk_clk_p,
      ref_clk_fsel(0) => ref_clk_fsel(0),
      ref_clk_oe(0) => ref_clk_oe(0),
      rgmii_port_0_rd(3 downto 0) => rgmii_port_0_rd(3 downto 0),
      rgmii_port_0_rx_ctl => rgmii_port_0_rx_ctl,
      rgmii_port_0_rxc => rgmii_port_0_rxc,
      rgmii_port_0_td(3 downto 0) => rgmii_port_0_td(3 downto 0),
      rgmii_port_0_tx_ctl => rgmii_port_0_tx_ctl,
      rgmii_port_0_txc => rgmii_port_0_txc,
      sysref_in_diff_n => sysref_in_diff_n,
      sysref_in_diff_p => sysref_in_diff_p,
      vin0_01_v_n => vin0_01_v_n,
      vin0_01_v_p => vin0_01_v_p,
      vin0_23_v_n => vin0_23_v_n,
      vin0_23_v_p => vin0_23_v_p,
      vin1_01_v_n => vin1_01_v_n,
      vin1_01_v_p => vin1_01_v_p,
      vin1_23_v_n => vin1_23_v_n,
      vin1_23_v_p => vin1_23_v_p,
      vout10_v_n => vout10_v_n,
      vout10_v_p => vout10_v_p,
      vout11_v_n => vout11_v_n,
      vout11_v_p => vout11_v_p,
      vout12_v_n => vout12_v_n,
      vout12_v_p => vout12_v_p,
      vout13_v_n => vout13_v_n,
      vout13_v_p => vout13_v_p
    );
iic_rtl_scl_iobuf: component IOBUF
     port map (
      I => iic_rtl_scl_o,
      IO => iic_rtl_scl_io,
      O => iic_rtl_scl_i,
      T => iic_rtl_scl_t
    );
iic_rtl_sda_iobuf: component IOBUF
     port map (
      I => iic_rtl_sda_o,
      IO => iic_rtl_sda_io,
      O => iic_rtl_sda_i,
      T => iic_rtl_sda_t
    );
mdio_io_port_0_mdio_iobuf: component IOBUF
     port map (
      I => mdio_io_port_0_mdio_o,
      IO => mdio_io_port_0_mdio_io,
      O => mdio_io_port_0_mdio_i,
      T => mdio_io_port_0_mdio_t
    );
end STRUCTURE;
