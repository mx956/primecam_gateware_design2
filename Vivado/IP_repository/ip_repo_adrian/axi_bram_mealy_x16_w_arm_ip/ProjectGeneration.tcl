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
	set IP_Revision {286141158}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {axi_bram_mealy_x16_w_arm}
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
		{{axi_bram_mealy_x16_w_arm_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{axi_bram_mealy_x16_w_arm.vhd} -lib {xil_defaultlib}}
		{{axi_bram_mealy_x16_w_arm_clock.xdc}}
		{{axi_bram_mealy_x16_w_arm.xdc}}
	}
	set SimPeriod 1
	set SimTime 1024
	set SimulationTime {10450.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/home/adrian/simulink_2022/axi_bram_mealy_x16_w_arm_ip}
	set TopLevelModule {axi_bram_mealy_x16_w_arm}
	set TopLevelSimulinkHandle 7622
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface rising_edge_start Name {rising_edge_start}
	dict set TopLevelPortInterface rising_edge_start Type Bool
	dict set TopLevelPortInterface rising_edge_start ArithmeticType xlUnsigned
	dict set TopLevelPortInterface rising_edge_start BinaryPoint 0
	dict set TopLevelPortInterface rising_edge_start Width 1
	dict set TopLevelPortInterface rising_edge_start DatFile {axi_bram_mealy_x16_w_arm_rising_edge_start.dat}
	dict set TopLevelPortInterface rising_edge_start IconText {rising_edge_start}
	dict set TopLevelPortInterface rising_edge_start Direction in
	dict set TopLevelPortInterface rising_edge_start Period 1
	dict set TopLevelPortInterface rising_edge_start Interface 0
	dict set TopLevelPortInterface rising_edge_start InterfaceName {}
	dict set TopLevelPortInterface rising_edge_start InterfaceString {DATA}
	dict set TopLevelPortInterface rising_edge_start ClockDomain {axi_bram_mealy_x16_w_arm}
	dict set TopLevelPortInterface rising_edge_start Locs {}
	dict set TopLevelPortInterface rising_edge_start IOStandard {}
	dict set TopLevelPortInterface max_count_minus_one_step Name {max_count_minus_one_step}
	dict set TopLevelPortInterface max_count_minus_one_step Type UFix_32_0
	dict set TopLevelPortInterface max_count_minus_one_step ArithmeticType xlUnsigned
	dict set TopLevelPortInterface max_count_minus_one_step BinaryPoint 0
	dict set TopLevelPortInterface max_count_minus_one_step Width 32
	dict set TopLevelPortInterface max_count_minus_one_step DatFile {axi_bram_mealy_x16_w_arm_max_count_minus_one_step.dat}
	dict set TopLevelPortInterface max_count_minus_one_step IconText {max_count_minus_one_step}
	dict set TopLevelPortInterface max_count_minus_one_step Direction in
	dict set TopLevelPortInterface max_count_minus_one_step Period 1
	dict set TopLevelPortInterface max_count_minus_one_step Interface 0
	dict set TopLevelPortInterface max_count_minus_one_step InterfaceName {}
	dict set TopLevelPortInterface max_count_minus_one_step InterfaceString {DATA}
	dict set TopLevelPortInterface max_count_minus_one_step ClockDomain {axi_bram_mealy_x16_w_arm}
	dict set TopLevelPortInterface max_count_minus_one_step Locs {}
	dict set TopLevelPortInterface max_count_minus_one_step IOStandard {}
	dict set TopLevelPortInterface rising_edge_arm Name {rising_edge_arm}
	dict set TopLevelPortInterface rising_edge_arm Type Bool
	dict set TopLevelPortInterface rising_edge_arm ArithmeticType xlUnsigned
	dict set TopLevelPortInterface rising_edge_arm BinaryPoint 0
	dict set TopLevelPortInterface rising_edge_arm Width 1
	dict set TopLevelPortInterface rising_edge_arm DatFile {axi_bram_mealy_x16_w_arm_rising_edge_arm.dat}
	dict set TopLevelPortInterface rising_edge_arm IconText {rising_edge_arm}
	dict set TopLevelPortInterface rising_edge_arm Direction in
	dict set TopLevelPortInterface rising_edge_arm Period 1
	dict set TopLevelPortInterface rising_edge_arm Interface 0
	dict set TopLevelPortInterface rising_edge_arm InterfaceName {}
	dict set TopLevelPortInterface rising_edge_arm InterfaceString {DATA}
	dict set TopLevelPortInterface rising_edge_arm ClockDomain {axi_bram_mealy_x16_w_arm}
	dict set TopLevelPortInterface rising_edge_arm Locs {}
	dict set TopLevelPortInterface rising_edge_arm IOStandard {}
	dict set TopLevelPortInterface address Name {address}
	dict set TopLevelPortInterface address Type UFix_32_0
	dict set TopLevelPortInterface address ArithmeticType xlUnsigned
	dict set TopLevelPortInterface address BinaryPoint 0
	dict set TopLevelPortInterface address Width 32
	dict set TopLevelPortInterface address DatFile {axi_bram_mealy_x16_w_arm_address.dat}
	dict set TopLevelPortInterface address IconText {address}
	dict set TopLevelPortInterface address Direction out
	dict set TopLevelPortInterface address Period 1
	dict set TopLevelPortInterface address Interface 0
	dict set TopLevelPortInterface address InterfaceName {}
	dict set TopLevelPortInterface address InterfaceString {DATA}
	dict set TopLevelPortInterface address ClockDomain {axi_bram_mealy_x16_w_arm}
	dict set TopLevelPortInterface address Locs {}
	dict set TopLevelPortInterface address IOStandard {}
	dict set TopLevelPortInterface we Name {we}
	dict set TopLevelPortInterface we Type Bool
	dict set TopLevelPortInterface we ArithmeticType xlUnsigned
	dict set TopLevelPortInterface we BinaryPoint 0
	dict set TopLevelPortInterface we Width 1
	dict set TopLevelPortInterface we DatFile {axi_bram_mealy_x16_w_arm_we.dat}
	dict set TopLevelPortInterface we IconText {we}
	dict set TopLevelPortInterface we Direction out
	dict set TopLevelPortInterface we Period 1
	dict set TopLevelPortInterface we Interface 0
	dict set TopLevelPortInterface we InterfaceName {}
	dict set TopLevelPortInterface we InterfaceString {DATA}
	dict set TopLevelPortInterface we ClockDomain {axi_bram_mealy_x16_w_arm}
	dict set TopLevelPortInterface we Locs {}
	dict set TopLevelPortInterface we IOStandard {}
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
	dict set TopLevelPortInterface clk ClockDomain {axi_bram_mealy_x16_w_arm}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project