#-----------------------------------------------------------------
# System Generator version 2020.2 IP Tcl source file.
#
# Copyright(C) 2020 by Xilinx, Inc.  All rights reserved.  This
# text/file contains proprietary, confidential information of Xilinx,
# Inc., is distributed under license from Xilinx, Inc., and may be used,
# copied and/or disclosed only pursuant to the terms of a valid license
# agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
# this text/file solely for design, simulation, implementation and
# creation of design files limited to Xilinx devices or technologies.
# Use with non-Xilinx devices or technologies is expressly prohibited
# and immediately terminates your license unless covered by a separate
# agreement.
#
# Xilinx is providing this design, code, or information "as is" solely
# for use in developing programs and solutions for Xilinx devices.  By
# providing this design, code, or information as one possible
# implementation of this feature, application or standard, Xilinx is
# making no representation that this implementation is free from any
# claims of infringement.  You are responsible for obtaining any rights
# you may require for your implementation.  Xilinx expressly disclaims
# any warranty whatsoever with respect to the adequacy of the
# implementation, including but not limited to warranties of
# merchantability or fitness for a particular purpose.
#
# Xilinx products are not intended for use in life support appliances,
# devices, or systems.  Use in such applications is expressly prohibited.
#
# Any modifications that are made to the source code are done at the user's
# sole risk and will be unsupported.
#
# This copyright and support notice must be retained as part of this
# text at all times.  (c) Copyright 1995-2020 Xilinx, Inc.  All rights
# reserved.
#-----------------------------------------------------------------

set existingipslist [get_ips]
if {[lsearch $existingipslist cordic_mix_v1_c_addsub_v12_0_i0] < 0} {
create_ip -name c_addsub -version 12.0 -vendor xilinx.com -library ip -module_name cordic_mix_v1_c_addsub_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {cordic_mix_v1_c_addsub_v12_0_i0}
lappend params_list CONFIG.AINIT_Value {0}
lappend params_list CONFIG.A_Type {Unsigned}
lappend params_list CONFIG.A_Width {23}
lappend params_list CONFIG.Add_Mode {Add}
lappend params_list CONFIG.B_Constant {false}
lappend params_list CONFIG.B_Type {Unsigned}
lappend params_list CONFIG.B_Value {0}
lappend params_list CONFIG.B_Width {23}
lappend params_list CONFIG.Borrow_Sense {Active_Low}
lappend params_list CONFIG.Bypass {false}
lappend params_list CONFIG.Bypass_CE_Priority {Bypass_Overrides_CE}
lappend params_list CONFIG.Bypass_Sense {Active_Low}
lappend params_list CONFIG.CE {true}
lappend params_list CONFIG.C_In {false}
lappend params_list CONFIG.C_Out {false}
lappend params_list CONFIG.Implementation {Fabric}
lappend params_list CONFIG.Latency {1}
lappend params_list CONFIG.Out_Width {23}
lappend params_list CONFIG.SCLR {false}
lappend params_list CONFIG.SINIT {false}
lappend params_list CONFIG.SINIT_Value {0}
lappend params_list CONFIG.SSET {false}
lappend params_list CONFIG.Sync_CE_Priority {Sync_Overrides_CE}
lappend params_list CONFIG.Sync_Ctrl_Priority {Reset_Overrides_Set}

set_property -dict $params_list [get_ips cordic_mix_v1_c_addsub_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist cordic_mix_v1_cordic_v6_0_i0] < 0} {
create_ip -name cordic -version 6.0 -vendor xilinx.com -library ip -module_name cordic_mix_v1_cordic_v6_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {cordic_mix_v1_cordic_v6_0_i0}
lappend params_list CONFIG.ACLKEN {true}
lappend params_list CONFIG.ARESETN {false}
lappend params_list CONFIG.Architectural_Configuration {Parallel}
lappend params_list CONFIG.Coarse_Rotation {true}
lappend params_list CONFIG.Compensation_Scaling {No_Scale_Compensation}
lappend params_list CONFIG.Data_Format {SignedFraction}
lappend params_list CONFIG.Functional_Selection {Rotate}
lappend params_list CONFIG.Input_Width {24}
lappend params_list CONFIG.Iterations {18}
lappend params_list CONFIG.Output_Width {16}
lappend params_list CONFIG.Phase_Format {Scaled_Radians}
lappend params_list CONFIG.Pipelining_Mode {Maximum}
lappend params_list CONFIG.Precision {20}
lappend params_list CONFIG.Round_Mode {Truncate}
lappend params_list CONFIG.cartesian_has_tlast {false}
lappend params_list CONFIG.cartesian_has_tuser {false}
lappend params_list CONFIG.cartesian_tuser_width {1}
lappend params_list CONFIG.flow_control {NonBlocking}
lappend params_list CONFIG.optimize_goal {Performance}
lappend params_list CONFIG.out_tlast_behv {Null}
lappend params_list CONFIG.out_tready {false}
lappend params_list CONFIG.phase_has_tlast {false}
lappend params_list CONFIG.phase_has_tuser {false}
lappend params_list CONFIG.phase_tuser_width {1}

set_property -dict $params_list [get_ips cordic_mix_v1_cordic_v6_0_i0]
}


validate_ip [get_ips]
