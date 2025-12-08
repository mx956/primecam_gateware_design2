# Note: This file is produced automatically, and will be overwritten the next
# time you press "Generate" in System Generator. 
#


namespace eval ::xilinx::dsp::planaheaddriver {
	set BoardFileVersion {1.4}
	set BoardName {zcu111}
	set BoardRevision {Rev}
	set BoardVendor {xilinx.com}
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xczu28dr}
	set DSPFamily {zynquplus}
	set DSPPackage {ffvg1517}
	set DSPSpeed {-2-e}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IPOOCCacheRootPath {/home/adrian/.Xilinx/Sysgen/SysgenVivado/lnx64.o/ip}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System_Generator_for_DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {2}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {}
	set IP_Revision {315089193}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {cordic_mix_v1}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{cordic_mix_v1_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{cordic_mix_v1.vhd} -lib {xil_defaultlib}}
		{{cordic_mix_v1_clock.xdc}}
		{{cordic_mix_v1.xdc}}
	}
	set SimPeriod 1
	set SimTime 4116
	set SimulationTime {41370.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/home/adrian/simulink_2022/cordic_mix_v1}
	set TopLevelModule {cordic_mix_v1}
	set TopLevelSimulinkHandle 21451
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface sync_in Name {sync_in}
	dict set TopLevelPortInterface sync_in Type Bool
	dict set TopLevelPortInterface sync_in ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sync_in BinaryPoint 0
	dict set TopLevelPortInterface sync_in Width 1
	dict set TopLevelPortInterface sync_in DatFile {cordic_mix_v1_sync_in.dat}
	dict set TopLevelPortInterface sync_in IconText {sync_in}
	dict set TopLevelPortInterface sync_in Direction in
	dict set TopLevelPortInterface sync_in Period 1
	dict set TopLevelPortInterface sync_in Interface 0
	dict set TopLevelPortInterface sync_in InterfaceName {}
	dict set TopLevelPortInterface sync_in InterfaceString {DATA}
	dict set TopLevelPortInterface sync_in ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface sync_in Locs {}
	dict set TopLevelPortInterface sync_in IOStandard {}
	dict set TopLevelPortInterface re_odd Name {re_odd}
	dict set TopLevelPortInterface re_odd Type Fix_16_15
	dict set TopLevelPortInterface re_odd ArithmeticType xlSigned
	dict set TopLevelPortInterface re_odd BinaryPoint 15
	dict set TopLevelPortInterface re_odd Width 16
	dict set TopLevelPortInterface re_odd DatFile {cordic_mix_v1_re_odd.dat}
	dict set TopLevelPortInterface re_odd IconText {re_odd}
	dict set TopLevelPortInterface re_odd Direction in
	dict set TopLevelPortInterface re_odd Period 1
	dict set TopLevelPortInterface re_odd Interface 0
	dict set TopLevelPortInterface re_odd InterfaceName {}
	dict set TopLevelPortInterface re_odd InterfaceString {DATA}
	dict set TopLevelPortInterface re_odd ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface re_odd Locs {}
	dict set TopLevelPortInterface re_odd IOStandard {}
	dict set TopLevelPortInterface re_even Name {re_even}
	dict set TopLevelPortInterface re_even Type Fix_16_15
	dict set TopLevelPortInterface re_even ArithmeticType xlSigned
	dict set TopLevelPortInterface re_even BinaryPoint 15
	dict set TopLevelPortInterface re_even Width 16
	dict set TopLevelPortInterface re_even DatFile {cordic_mix_v1_re_even.dat}
	dict set TopLevelPortInterface re_even IconText {re_even}
	dict set TopLevelPortInterface re_even Direction in
	dict set TopLevelPortInterface re_even Period 1
	dict set TopLevelPortInterface re_even Interface 0
	dict set TopLevelPortInterface re_even InterfaceName {}
	dict set TopLevelPortInterface re_even InterfaceString {DATA}
	dict set TopLevelPortInterface re_even ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface re_even Locs {}
	dict set TopLevelPortInterface re_even IOStandard {}
	dict set TopLevelPortInterface im_odd Name {im_odd}
	dict set TopLevelPortInterface im_odd Type Fix_16_15
	dict set TopLevelPortInterface im_odd ArithmeticType xlSigned
	dict set TopLevelPortInterface im_odd BinaryPoint 15
	dict set TopLevelPortInterface im_odd Width 16
	dict set TopLevelPortInterface im_odd DatFile {cordic_mix_v1_im_odd.dat}
	dict set TopLevelPortInterface im_odd IconText {im_odd}
	dict set TopLevelPortInterface im_odd Direction in
	dict set TopLevelPortInterface im_odd Period 1
	dict set TopLevelPortInterface im_odd Interface 0
	dict set TopLevelPortInterface im_odd InterfaceName {}
	dict set TopLevelPortInterface im_odd InterfaceString {DATA}
	dict set TopLevelPortInterface im_odd ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface im_odd Locs {}
	dict set TopLevelPortInterface im_odd IOStandard {}
	dict set TopLevelPortInterface im_even Name {im_even}
	dict set TopLevelPortInterface im_even Type Fix_16_15
	dict set TopLevelPortInterface im_even ArithmeticType xlSigned
	dict set TopLevelPortInterface im_even BinaryPoint 15
	dict set TopLevelPortInterface im_even Width 16
	dict set TopLevelPortInterface im_even DatFile {cordic_mix_v1_im_even.dat}
	dict set TopLevelPortInterface im_even IconText {im_even}
	dict set TopLevelPortInterface im_even Direction in
	dict set TopLevelPortInterface im_even Period 1
	dict set TopLevelPortInterface im_even Interface 0
	dict set TopLevelPortInterface im_even InterfaceName {}
	dict set TopLevelPortInterface im_even InterfaceString {DATA}
	dict set TopLevelPortInterface im_even ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface im_even Locs {}
	dict set TopLevelPortInterface im_even IOStandard {}
	dict set TopLevelPortInterface dphi Name {dphi}
	dict set TopLevelPortInterface dphi Type UFix_22_0
	dict set TopLevelPortInterface dphi ArithmeticType xlUnsigned
	dict set TopLevelPortInterface dphi BinaryPoint 0
	dict set TopLevelPortInterface dphi Width 22
	dict set TopLevelPortInterface dphi DatFile {cordic_mix_v1_dphi.dat}
	dict set TopLevelPortInterface dphi IconText {dphi}
	dict set TopLevelPortInterface dphi Direction in
	dict set TopLevelPortInterface dphi Period 1
	dict set TopLevelPortInterface dphi Interface 0
	dict set TopLevelPortInterface dphi InterfaceName {}
	dict set TopLevelPortInterface dphi InterfaceString {DATA}
	dict set TopLevelPortInterface dphi ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface dphi Locs {}
	dict set TopLevelPortInterface dphi IOStandard {}
	dict set TopLevelPortInterface gateway_out11 Name {gateway_out11}
	dict set TopLevelPortInterface gateway_out11 Type Bool
	dict set TopLevelPortInterface gateway_out11 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface gateway_out11 BinaryPoint 0
	dict set TopLevelPortInterface gateway_out11 Width 1
	dict set TopLevelPortInterface gateway_out11 DatFile {cordic_mix_v1_gateway_out11.dat}
	dict set TopLevelPortInterface gateway_out11 IconText {Gateway Out11}
	dict set TopLevelPortInterface gateway_out11 Direction out
	dict set TopLevelPortInterface gateway_out11 Period 1
	dict set TopLevelPortInterface gateway_out11 Interface 0
	dict set TopLevelPortInterface gateway_out11 InterfaceName {}
	dict set TopLevelPortInterface gateway_out11 InterfaceString {DATA}
	dict set TopLevelPortInterface gateway_out11 ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface gateway_out11 Locs {}
	dict set TopLevelPortInterface gateway_out11 IOStandard {}
	dict set TopLevelPortInterface out_im_even Name {out_im_even}
	dict set TopLevelPortInterface out_im_even Type Fix_16_14
	dict set TopLevelPortInterface out_im_even ArithmeticType xlSigned
	dict set TopLevelPortInterface out_im_even BinaryPoint 14
	dict set TopLevelPortInterface out_im_even Width 16
	dict set TopLevelPortInterface out_im_even DatFile {cordic_mix_v1_out_im_even.dat}
	dict set TopLevelPortInterface out_im_even IconText {out_im_even}
	dict set TopLevelPortInterface out_im_even Direction out
	dict set TopLevelPortInterface out_im_even Period 1
	dict set TopLevelPortInterface out_im_even Interface 0
	dict set TopLevelPortInterface out_im_even InterfaceName {}
	dict set TopLevelPortInterface out_im_even InterfaceString {DATA}
	dict set TopLevelPortInterface out_im_even ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface out_im_even Locs {}
	dict set TopLevelPortInterface out_im_even IOStandard {}
	dict set TopLevelPortInterface out_im_odd Name {out_im_odd}
	dict set TopLevelPortInterface out_im_odd Type Fix_16_14
	dict set TopLevelPortInterface out_im_odd ArithmeticType xlSigned
	dict set TopLevelPortInterface out_im_odd BinaryPoint 14
	dict set TopLevelPortInterface out_im_odd Width 16
	dict set TopLevelPortInterface out_im_odd DatFile {cordic_mix_v1_out_im_odd.dat}
	dict set TopLevelPortInterface out_im_odd IconText {out_im_odd}
	dict set TopLevelPortInterface out_im_odd Direction out
	dict set TopLevelPortInterface out_im_odd Period 1
	dict set TopLevelPortInterface out_im_odd Interface 0
	dict set TopLevelPortInterface out_im_odd InterfaceName {}
	dict set TopLevelPortInterface out_im_odd InterfaceString {DATA}
	dict set TopLevelPortInterface out_im_odd ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface out_im_odd Locs {}
	dict set TopLevelPortInterface out_im_odd IOStandard {}
	dict set TopLevelPortInterface out_re_even Name {out_re_even}
	dict set TopLevelPortInterface out_re_even Type Fix_16_14
	dict set TopLevelPortInterface out_re_even ArithmeticType xlSigned
	dict set TopLevelPortInterface out_re_even BinaryPoint 14
	dict set TopLevelPortInterface out_re_even Width 16
	dict set TopLevelPortInterface out_re_even DatFile {cordic_mix_v1_out_re_even.dat}
	dict set TopLevelPortInterface out_re_even IconText {out_re_even}
	dict set TopLevelPortInterface out_re_even Direction out
	dict set TopLevelPortInterface out_re_even Period 1
	dict set TopLevelPortInterface out_re_even Interface 0
	dict set TopLevelPortInterface out_re_even InterfaceName {}
	dict set TopLevelPortInterface out_re_even InterfaceString {DATA}
	dict set TopLevelPortInterface out_re_even ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface out_re_even Locs {}
	dict set TopLevelPortInterface out_re_even IOStandard {}
	dict set TopLevelPortInterface out_re_odd Name {out_re_odd}
	dict set TopLevelPortInterface out_re_odd Type Fix_16_14
	dict set TopLevelPortInterface out_re_odd ArithmeticType xlSigned
	dict set TopLevelPortInterface out_re_odd BinaryPoint 14
	dict set TopLevelPortInterface out_re_odd Width 16
	dict set TopLevelPortInterface out_re_odd DatFile {cordic_mix_v1_out_re_odd.dat}
	dict set TopLevelPortInterface out_re_odd IconText {out_re_odd}
	dict set TopLevelPortInterface out_re_odd Direction out
	dict set TopLevelPortInterface out_re_odd Period 1
	dict set TopLevelPortInterface out_re_odd Interface 0
	dict set TopLevelPortInterface out_re_odd InterfaceName {}
	dict set TopLevelPortInterface out_re_odd InterfaceString {DATA}
	dict set TopLevelPortInterface out_re_odd ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface out_re_odd Locs {}
	dict set TopLevelPortInterface out_re_odd IOStandard {}
	dict set TopLevelPortInterface sync_out Name {sync_out}
	dict set TopLevelPortInterface sync_out Type Bool
	dict set TopLevelPortInterface sync_out ArithmeticType xlUnsigned
	dict set TopLevelPortInterface sync_out BinaryPoint 0
	dict set TopLevelPortInterface sync_out Width 1
	dict set TopLevelPortInterface sync_out DatFile {cordic_mix_v1_sync_out.dat}
	dict set TopLevelPortInterface sync_out IconText {sync_out}
	dict set TopLevelPortInterface sync_out Direction out
	dict set TopLevelPortInterface sync_out Period 1
	dict set TopLevelPortInterface sync_out Interface 0
	dict set TopLevelPortInterface sync_out InterfaceName {}
	dict set TopLevelPortInterface sync_out InterfaceString {DATA}
	dict set TopLevelPortInterface sync_out ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface sync_out Locs {}
	dict set TopLevelPortInterface sync_out IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {cordic_mix_v1}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project