# Ethernetfmc.com ref_clk
# Enable internal termination resistor on LVDS 125MHz ref_clk

# Ethernetfmc.com Port3

# io standard



# package pins
set_property PACKAGE_PIN AL14 [get_ports {ref_clk_fsel[0]}]
set_property PACKAGE_PIN AM13 [get_ports {ref_clk_oe[0]}]
set_property PACKAGE_PIN AN10 [get_ports ref_clk_clk_p]
set_property PACKAGE_PIN AP10 [get_ports ref_clk_clk_n]

set_property PACKAGE_PIN AL7 [get_ports mdio_io_port_0_mdio_io]
set_property PACKAGE_PIN AM8 [get_ports mdio_io_port_0_mdc]
set_property PACKAGE_PIN AM7 [get_ports {reset_port_0[0]}]

set_property PACKAGE_PIN AP9 [get_ports rgmii_port_0_rxc]
set_property PACKAGE_PIN AR9 [get_ports rgmii_port_0_rx_ctl]
set_property PACKAGE_PIN AJ12 [get_ports {rgmii_port_0_rd[2]}]
set_property PACKAGE_PIN AK12 [get_ports {rgmii_port_0_rd[3]}]
set_property PACKAGE_PIN AL9 [get_ports {rgmii_port_0_td[1]}]
set_property PACKAGE_PIN AM9 [get_ports {rgmii_port_0_td[2]}]
set_property PACKAGE_PIN AH13 [get_ports {rgmii_port_0_rd[0]}]
set_property PACKAGE_PIN AJ13 [get_ports {rgmii_port_0_rd[1]}]
set_property PACKAGE_PIN AG12 [get_ports {rgmii_port_0_td[0]}]
set_property PACKAGE_PIN AH12 [get_ports rgmii_port_0_txc]
set_property PACKAGE_PIN AK13 [get_ports {rgmii_port_0_td[3]}]
set_property PACKAGE_PIN AL12 [get_ports rgmii_port_0_tx_ctl]



#BITSLICE0 not available during BISC: The port eth_rxctl_2 is assigned to a PACKAGE_PIN that uses BITSLICE_0
# of a Byte that will be using calibration. The signal connected to eth_rxctl_2 will not be available during
# calibration and will only be available after RDY asserts. If this condition is not acceptable for your
# design and board layout, eth_rxctl_2 will have to be moved to another PACKAGE_PIN that is not undergoing
# calibration or be moved to a PACKAGE_PIN location that is not BITSLICE_0 or BITSLICE_6 on that same Byte.
# If this condition is acceptable for your design and board layout, this DRC can be bypassed by acknowledging
# the condition and setting the following XDC constraint:
set_property UNAVAILABLE_DURING_CALIBRATION true [get_ports {rgmii_port_0_td[3]}]

set_property -dict {PACKAGE_PIN AR22 IOSTANDARD LVCMOS18} [get_ports {eth_rxd_3[0]}]
set_property -dict {PACKAGE_PIN AR21 IOSTANDARD LVCMOS18} [get_ports {eth_rxd_3[1]}]
set_property -dict {PACKAGE_PIN AT22 IOSTANDARD LVCMOS18} [get_ports {eth_rxd_3[2]}]
set_property -dict {PACKAGE_PIN AT21 IOSTANDARD LVCMOS18} [get_ports {eth_rxd_3[3]}]

set_property -dict {PACKAGE_PIN AN20 IOSTANDARD LVCMOS18} [get_ports eth_rxctl_3]
set_property -dict {PACKAGE_PIN AM20 IOSTANDARD LVCMOS18} [get_ports eth_rxclk_3]

set_property -dict {PACKAGE_PIN AK21 IOSTANDARD LVCMOS18} [get_ports {eth_txd_3[0]}]
set_property -dict {PACKAGE_PIN AJ18 IOSTANDARD LVCMOS18} [get_ports {eth_txd_3[1]}]
set_property -dict {PACKAGE_PIN AJ20 IOSTANDARD LVCMOS18} [get_ports {eth_txd_3[2]}]
set_property -dict {PACKAGE_PIN AJ19 IOSTANDARD LVCMOS18} [get_ports {eth_txd_3[3]}]

set_property -dict {PACKAGE_PIN AG20 IOSTANDARD LVCMOS18} [get_ports eth_txctl_3]
set_property -dict {PACKAGE_PIN AK18 IOSTANDARD LVCMOS18} [get_ports eth_txclk_3]

set_property -dict {PACKAGE_PIN AF20 IOSTANDARD LVCMOS18} [get_ports eth_mdio_3]
set_property -dict {PACKAGE_PIN AH20 IOSTANDARD LVCMOS18} [get_ports eth_mdc_3]
set_property -dict {PACKAGE_PIN AF19 IOSTANDARD LVCMOS18} [get_ports eth_rst_b_3]

# Ethernetfmc.com Port2





# Ethernetfmc.com Port1





# PMOD + LEDs
# section from Cody Roberson
#PMOD1_2 -> IIC SCL
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS12 DRIVE 8 SLEW SLOW} [get_ports iic_rtl_scl_io]
#PMOD1_3 -> IIC SDA
set_property -dict {PACKAGE_PIN N13 IOSTANDARD LVCMOS12 DRIVE 8 SLEW SLOW} [get_ports iic_rtl_sda_io]



set_property DIFF_TERM_ADV TERM_100 [get_ports ref_clk_clk_p]
set_property DIFF_TERM_ADV TERM_100 [get_ports ref_clk_clk_n]
set_property IOSTANDARD LVDS [get_ports ref_clk_clk_p]
set_property IOSTANDARD LVDS [get_ports ref_clk_clk_n]
set_property IOSTANDARD LVCMOS18 [get_ports {ref_clk_oe[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {ref_clk_fsel[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_0_mdio_io]
set_property IOSTANDARD LVCMOS18 [get_ports mdio_io_port_0_mdc]
set_property IOSTANDARD LVCMOS18 [get_ports {reset_port_0[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_0_rxc]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_0_rx_ctl]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_rd[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_rd[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_td[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_td[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_rd[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_rd[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_td[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_0_txc]
set_property IOSTANDARD LVCMOS18 [get_ports {rgmii_port_0_td[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports rgmii_port_0_tx_ctl]
#set_false_path -from [get_clocks clk_out1_bram_lutwave_clk_wiz_2_1] -to [get_clocks mdio0_mdc_clock]
create_clock -period 8.000 -name rgmii_port_0_rx_clk -waveform {0.000 4.000} [get_ports rgmii_port_0_rxc]

####################################################################################
# Constraints from file : 'bram_lutwave_auto_cc_0_clocks.xdc'
####################################################################################

#set_false_path -from [get_clocks -of_objects [get_pins bram_lutwave_i/clk_wiz_1/inst/mmcme4_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins bram_lutwave_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]
#set_false_path -from [get_clocks clk_pl_0] -to [get_clocks -of_objects [get_pins bram_lutwave_i/clk_wiz_1/inst/mmcme4_adv_inst/CLKOUT0]]
#set_false_path -from [get_clocks -of_objects [get_pins bram_lutwave_i/ddr4_1/inst/u_ddr4_infrastructure/gen_mmcme4.u_mmcme_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins bram_lutwave_i/clk_wiz_1/inst/mmcme4_adv_inst/CLKOUT0]]
#set_false_path -from [get_clocks -of_objects [get_pins bram_lutwave_i/ddr4_1/inst/u_ddr4_infrastructure/gen_mmcme4.u_mmcme_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins bram_lutwave_i/clk_wiz_0/inst/mmcme4_adv_inst/CLKOUT0]]
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk]



set_false_path -from [get_clocks clk_pl_0] -to [get_clocks clk_out1_design_1_clk_wiz_0_0_1]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0_1] -to [get_clocks clk_pl_0]

set_false_path -from [get_clocks clk_pl_0] -to [get_clocks clk_out1_design_1_clk_wiz_0_1]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_1] -to [get_clocks clk_pl_0]

set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_0_1] -to [get_clocks clk_out1_design_1_clk_wiz_0_1]
set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_0_1] -to [get_clocks clk_out1_design_1_clk_wiz_0_0_1]

set_false_path -from [get_clocks clk_out1_design_1_clk_wiz_2_0] -to [get_clocks mdio0_mdc_clock]
set_false_path -from [get_clocks mdio0_mdc_clock] -to [get_clocks clk_out1_design_1_clk_wiz_2_0]
