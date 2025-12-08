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
	set IP_Revision {315758935}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {blast_module_v6_cordic_ddc}
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
		{{blast_module_v6_cordic_ddc_dist_mem_gen_i0_vivado.coe}}
		{{blast_module_v6_cordic_ddc_dist_mem_gen_i1_vivado.coe}}
		{{blast_module_v6_cordic_ddc_dist_mem_gen_i2_vivado.coe}}
		{{xpm_effb0c_vivado.mem}}
		{{xpm_98f453_vivado.mem}}
		{{xpm_cb2434_vivado.mem}}
		{{xpm_45185a_vivado.mem}}
		{{xpm_154457_vivado.mem}}
		{{xpm_f0602d_vivado.mem}}
		{{xpm_f7f5fd_vivado.mem}}
		{{xpm_a54c85_vivado.mem}}
		{{blast_module_v6_cordic_ddc_dist_mem_gen_i3_vivado.coe}}
		{{xpm_8739c2_vivado.mem}}
		{{xpm_f6cc85_vivado.mem}}
		{{xpm_b42cce_vivado.mem}}
		{{xpm_f133f0_vivado.mem}}
		{{xpm_65b62b_vivado.mem}}
		{{xpm_3dec81_vivado.mem}}
		{{xpm_9c9994_vivado.mem}}
		{{xpm_d7858d_vivado.mem}}
		{{xpm_5aee90_vivado.mem}}
		{{xpm_c30a66_vivado.mem}}
		{{xpm_25902f_vivado.mem}}
		{{xpm_f5fed5_vivado.mem}}
		{{blast_module_v6_cordic_ddc_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{blast_module_v6_cordic_ddc.vhd} -lib {xil_defaultlib}}
		{{blast_module_v6_cordic_ddc_clock.xdc}}
		{{blast_module_v6_cordic_ddc.xdc}}
	}
	set SimPeriod 1
	set SimTime 10
	set SimulationTime {310.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TargetDir {/home/adrian/simulink_2022/blast_mod_v6_cordic_ddc}
	set TopLevelModule {blast_module_v6_cordic_ddc}
	set TopLevelSimulinkHandle 74826
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface start_dac Name {start_dac}
	dict set TopLevelPortInterface start_dac Type Bool
	dict set TopLevelPortInterface start_dac ArithmeticType xlUnsigned
	dict set TopLevelPortInterface start_dac BinaryPoint 0
	dict set TopLevelPortInterface start_dac Width 1
	dict set TopLevelPortInterface start_dac DatFile {blast_module_v6_cordic_ddc_start_dac.dat}
	dict set TopLevelPortInterface start_dac IconText {start_dac}
	dict set TopLevelPortInterface start_dac Direction in
	dict set TopLevelPortInterface start_dac Period 1
	dict set TopLevelPortInterface start_dac Interface 0
	dict set TopLevelPortInterface start_dac InterfaceName {}
	dict set TopLevelPortInterface start_dac InterfaceString {DATA}
	dict set TopLevelPortInterface start_dac ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface start_dac Locs {}
	dict set TopLevelPortInterface start_dac IOStandard {}
	dict set TopLevelPortInterface load_bins Name {load_bins}
	dict set TopLevelPortInterface load_bins Type UFix_11_0
	dict set TopLevelPortInterface load_bins ArithmeticType xlUnsigned
	dict set TopLevelPortInterface load_bins BinaryPoint 0
	dict set TopLevelPortInterface load_bins Width 11
	dict set TopLevelPortInterface load_bins DatFile {blast_module_v6_cordic_ddc_load_bins.dat}
	dict set TopLevelPortInterface load_bins IconText {load_bins}
	dict set TopLevelPortInterface load_bins Direction in
	dict set TopLevelPortInterface load_bins Period 1
	dict set TopLevelPortInterface load_bins Interface 0
	dict set TopLevelPortInterface load_bins InterfaceName {}
	dict set TopLevelPortInterface load_bins InterfaceString {DATA}
	dict set TopLevelPortInterface load_bins ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface load_bins Locs {}
	dict set TopLevelPortInterface load_bins IOStandard {}
	dict set TopLevelPortInterface fft_shift Name {fft_shift}
	dict set TopLevelPortInterface fft_shift Type UFix_10_0
	dict set TopLevelPortInterface fft_shift ArithmeticType xlUnsigned
	dict set TopLevelPortInterface fft_shift BinaryPoint 0
	dict set TopLevelPortInterface fft_shift Width 10
	dict set TopLevelPortInterface fft_shift DatFile {blast_module_v6_cordic_ddc_fft_shift.dat}
	dict set TopLevelPortInterface fft_shift IconText {fft_shift}
	dict set TopLevelPortInterface fft_shift Direction in
	dict set TopLevelPortInterface fft_shift Period 1
	dict set TopLevelPortInterface fft_shift Interface 0
	dict set TopLevelPortInterface fft_shift InterfaceName {}
	dict set TopLevelPortInterface fft_shift InterfaceString {DATA}
	dict set TopLevelPortInterface fft_shift ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface fft_shift Locs {}
	dict set TopLevelPortInterface fft_shift IOStandard {}
	dict set TopLevelPortInterface dphi_odd Name {dphi_odd}
	dict set TopLevelPortInterface dphi_odd Type UFix_16_0
	dict set TopLevelPortInterface dphi_odd ArithmeticType xlUnsigned
	dict set TopLevelPortInterface dphi_odd BinaryPoint 0
	dict set TopLevelPortInterface dphi_odd Width 16
	dict set TopLevelPortInterface dphi_odd DatFile {blast_module_v6_cordic_ddc_dphi_odd.dat}
	dict set TopLevelPortInterface dphi_odd IconText {dphi_odd}
	dict set TopLevelPortInterface dphi_odd Direction in
	dict set TopLevelPortInterface dphi_odd Period 1
	dict set TopLevelPortInterface dphi_odd Interface 0
	dict set TopLevelPortInterface dphi_odd InterfaceName {}
	dict set TopLevelPortInterface dphi_odd InterfaceString {DATA}
	dict set TopLevelPortInterface dphi_odd ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface dphi_odd Locs {}
	dict set TopLevelPortInterface dphi_odd IOStandard {}
	dict set TopLevelPortInterface dphi_even Name {dphi_even}
	dict set TopLevelPortInterface dphi_even Type UFix_16_0
	dict set TopLevelPortInterface dphi_even ArithmeticType xlUnsigned
	dict set TopLevelPortInterface dphi_even BinaryPoint 0
	dict set TopLevelPortInterface dphi_even Width 16
	dict set TopLevelPortInterface dphi_even DatFile {blast_module_v6_cordic_ddc_dphi_even.dat}
	dict set TopLevelPortInterface dphi_even IconText {dphi_even}
	dict set TopLevelPortInterface dphi_even Direction in
	dict set TopLevelPortInterface dphi_even Period 1
	dict set TopLevelPortInterface dphi_even Interface 0
	dict set TopLevelPortInterface dphi_even InterfaceName {}
	dict set TopLevelPortInterface dphi_even InterfaceString {DATA}
	dict set TopLevelPortInterface dphi_even ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface dphi_even Locs {}
	dict set TopLevelPortInterface dphi_even IOStandard {}
	dict set TopLevelPortInterface dds_shift Name {dds_shift}
	dict set TopLevelPortInterface dds_shift Type UFix_9_0
	dict set TopLevelPortInterface dds_shift ArithmeticType xlUnsigned
	dict set TopLevelPortInterface dds_shift BinaryPoint 0
	dict set TopLevelPortInterface dds_shift Width 9
	dict set TopLevelPortInterface dds_shift DatFile {blast_module_v6_cordic_ddc_dds_shift.dat}
	dict set TopLevelPortInterface dds_shift IconText {dds_shift}
	dict set TopLevelPortInterface dds_shift Direction in
	dict set TopLevelPortInterface dds_shift Period 1
	dict set TopLevelPortInterface dds_shift Interface 0
	dict set TopLevelPortInterface dds_shift InterfaceName {}
	dict set TopLevelPortInterface dds_shift InterfaceString {DATA}
	dict set TopLevelPortInterface dds_shift ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface dds_shift Locs {}
	dict set TopLevelPortInterface dds_shift IOStandard {}
	dict set TopLevelPortInterface bin_num Name {bin_num}
	dict set TopLevelPortInterface bin_num Type UFix_10_0
	dict set TopLevelPortInterface bin_num ArithmeticType xlUnsigned
	dict set TopLevelPortInterface bin_num BinaryPoint 0
	dict set TopLevelPortInterface bin_num Width 10
	dict set TopLevelPortInterface bin_num DatFile {blast_module_v6_cordic_ddc_bin_num.dat}
	dict set TopLevelPortInterface bin_num IconText {bin_num}
	dict set TopLevelPortInterface bin_num Direction in
	dict set TopLevelPortInterface bin_num Period 1
	dict set TopLevelPortInterface bin_num Interface 0
	dict set TopLevelPortInterface bin_num InterfaceName {}
	dict set TopLevelPortInterface bin_num InterfaceString {DATA}
	dict set TopLevelPortInterface bin_num ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface bin_num Locs {}
	dict set TopLevelPortInterface bin_num IOStandard {}
	dict set TopLevelPortInterface adc_q1 Name {adc_q1}
	dict set TopLevelPortInterface adc_q1 Type UFix_16_0
	dict set TopLevelPortInterface adc_q1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface adc_q1 BinaryPoint 0
	dict set TopLevelPortInterface adc_q1 Width 16
	dict set TopLevelPortInterface adc_q1 DatFile {blast_module_v6_cordic_ddc_adc_q1.dat}
	dict set TopLevelPortInterface adc_q1 IconText {adc_q1}
	dict set TopLevelPortInterface adc_q1 Direction in
	dict set TopLevelPortInterface adc_q1 Period 1
	dict set TopLevelPortInterface adc_q1 Interface 0
	dict set TopLevelPortInterface adc_q1 InterfaceName {}
	dict set TopLevelPortInterface adc_q1 InterfaceString {DATA}
	dict set TopLevelPortInterface adc_q1 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface adc_q1 Locs {}
	dict set TopLevelPortInterface adc_q1 IOStandard {}
	dict set TopLevelPortInterface adc_q0 Name {adc_q0}
	dict set TopLevelPortInterface adc_q0 Type UFix_16_0
	dict set TopLevelPortInterface adc_q0 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface adc_q0 BinaryPoint 0
	dict set TopLevelPortInterface adc_q0 Width 16
	dict set TopLevelPortInterface adc_q0 DatFile {blast_module_v6_cordic_ddc_adc_q0.dat}
	dict set TopLevelPortInterface adc_q0 IconText {adc_q0}
	dict set TopLevelPortInterface adc_q0 Direction in
	dict set TopLevelPortInterface adc_q0 Period 1
	dict set TopLevelPortInterface adc_q0 Interface 0
	dict set TopLevelPortInterface adc_q0 InterfaceName {}
	dict set TopLevelPortInterface adc_q0 InterfaceString {DATA}
	dict set TopLevelPortInterface adc_q0 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface adc_q0 Locs {}
	dict set TopLevelPortInterface adc_q0 IOStandard {}
	dict set TopLevelPortInterface adc_i1 Name {adc_i1}
	dict set TopLevelPortInterface adc_i1 Type UFix_16_0
	dict set TopLevelPortInterface adc_i1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface adc_i1 BinaryPoint 0
	dict set TopLevelPortInterface adc_i1 Width 16
	dict set TopLevelPortInterface adc_i1 DatFile {blast_module_v6_cordic_ddc_adc_i1.dat}
	dict set TopLevelPortInterface adc_i1 IconText {adc_i1}
	dict set TopLevelPortInterface adc_i1 Direction in
	dict set TopLevelPortInterface adc_i1 Period 1
	dict set TopLevelPortInterface adc_i1 Interface 0
	dict set TopLevelPortInterface adc_i1 InterfaceName {}
	dict set TopLevelPortInterface adc_i1 InterfaceString {DATA}
	dict set TopLevelPortInterface adc_i1 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface adc_i1 Locs {}
	dict set TopLevelPortInterface adc_i1 IOStandard {}
	dict set TopLevelPortInterface adc_i0 Name {adc_i0}
	dict set TopLevelPortInterface adc_i0 Type UFix_16_0
	dict set TopLevelPortInterface adc_i0 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface adc_i0 BinaryPoint 0
	dict set TopLevelPortInterface adc_i0 Width 16
	dict set TopLevelPortInterface adc_i0 DatFile {blast_module_v6_cordic_ddc_adc_i0.dat}
	dict set TopLevelPortInterface adc_i0 IconText {adc_i0}
	dict set TopLevelPortInterface adc_i0 Direction in
	dict set TopLevelPortInterface adc_i0 Period 1
	dict set TopLevelPortInterface adc_i0 Interface 0
	dict set TopLevelPortInterface adc_i0 InterfaceName {}
	dict set TopLevelPortInterface adc_i0 InterfaceString {DATA}
	dict set TopLevelPortInterface adc_i0 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface adc_i0 Locs {}
	dict set TopLevelPortInterface adc_i0 IOStandard {}
	dict set TopLevelPortInterface accum_reset Name {accum_reset}
	dict set TopLevelPortInterface accum_reset Type Bool
	dict set TopLevelPortInterface accum_reset ArithmeticType xlUnsigned
	dict set TopLevelPortInterface accum_reset BinaryPoint 0
	dict set TopLevelPortInterface accum_reset Width 1
	dict set TopLevelPortInterface accum_reset DatFile {blast_module_v6_cordic_ddc_accum_reset.dat}
	dict set TopLevelPortInterface accum_reset IconText {accum_reset}
	dict set TopLevelPortInterface accum_reset Direction in
	dict set TopLevelPortInterface accum_reset Period 1
	dict set TopLevelPortInterface accum_reset Interface 0
	dict set TopLevelPortInterface accum_reset InterfaceName {}
	dict set TopLevelPortInterface accum_reset InterfaceString {DATA}
	dict set TopLevelPortInterface accum_reset ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface accum_reset Locs {}
	dict set TopLevelPortInterface accum_reset IOStandard {}
	dict set TopLevelPortInterface accum_len Name {accum_len}
	dict set TopLevelPortInterface accum_len Type UFix_24_0
	dict set TopLevelPortInterface accum_len ArithmeticType xlUnsigned
	dict set TopLevelPortInterface accum_len BinaryPoint 0
	dict set TopLevelPortInterface accum_len Width 24
	dict set TopLevelPortInterface accum_len DatFile {blast_module_v6_cordic_ddc_accum_len.dat}
	dict set TopLevelPortInterface accum_len IconText {accum_len}
	dict set TopLevelPortInterface accum_len Direction in
	dict set TopLevelPortInterface accum_len Period 1
	dict set TopLevelPortInterface accum_len Interface 0
	dict set TopLevelPortInterface accum_len InterfaceName {}
	dict set TopLevelPortInterface accum_len InterfaceString {DATA}
	dict set TopLevelPortInterface accum_len ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface accum_len Locs {}
	dict set TopLevelPortInterface accum_len IOStandard {}
	dict set TopLevelPortInterface accum_snap_i0 Name {accum_snap_i0}
	dict set TopLevelPortInterface accum_snap_i0 Type Fix_32_17
	dict set TopLevelPortInterface accum_snap_i0 ArithmeticType xlSigned
	dict set TopLevelPortInterface accum_snap_i0 BinaryPoint 17
	dict set TopLevelPortInterface accum_snap_i0 Width 32
	dict set TopLevelPortInterface accum_snap_i0 DatFile {blast_module_v6_cordic_ddc_accum_snap_i0.dat}
	dict set TopLevelPortInterface accum_snap_i0 IconText {accum_snap_i0}
	dict set TopLevelPortInterface accum_snap_i0 Direction out
	dict set TopLevelPortInterface accum_snap_i0 Period 1
	dict set TopLevelPortInterface accum_snap_i0 Interface 0
	dict set TopLevelPortInterface accum_snap_i0 InterfaceName {}
	dict set TopLevelPortInterface accum_snap_i0 InterfaceString {DATA}
	dict set TopLevelPortInterface accum_snap_i0 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface accum_snap_i0 Locs {}
	dict set TopLevelPortInterface accum_snap_i0 IOStandard {}
	dict set TopLevelPortInterface accum_snap_i1 Name {accum_snap_i1}
	dict set TopLevelPortInterface accum_snap_i1 Type Fix_32_17
	dict set TopLevelPortInterface accum_snap_i1 ArithmeticType xlSigned
	dict set TopLevelPortInterface accum_snap_i1 BinaryPoint 17
	dict set TopLevelPortInterface accum_snap_i1 Width 32
	dict set TopLevelPortInterface accum_snap_i1 DatFile {blast_module_v6_cordic_ddc_accum_snap_i1.dat}
	dict set TopLevelPortInterface accum_snap_i1 IconText {accum_snap_i1}
	dict set TopLevelPortInterface accum_snap_i1 Direction out
	dict set TopLevelPortInterface accum_snap_i1 Period 1
	dict set TopLevelPortInterface accum_snap_i1 Interface 0
	dict set TopLevelPortInterface accum_snap_i1 InterfaceName {}
	dict set TopLevelPortInterface accum_snap_i1 InterfaceString {DATA}
	dict set TopLevelPortInterface accum_snap_i1 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface accum_snap_i1 Locs {}
	dict set TopLevelPortInterface accum_snap_i1 IOStandard {}
	dict set TopLevelPortInterface accum_snap_q0 Name {accum_snap_q0}
	dict set TopLevelPortInterface accum_snap_q0 Type Fix_32_17
	dict set TopLevelPortInterface accum_snap_q0 ArithmeticType xlSigned
	dict set TopLevelPortInterface accum_snap_q0 BinaryPoint 17
	dict set TopLevelPortInterface accum_snap_q0 Width 32
	dict set TopLevelPortInterface accum_snap_q0 DatFile {blast_module_v6_cordic_ddc_accum_snap_q0.dat}
	dict set TopLevelPortInterface accum_snap_q0 IconText {accum_snap_q0}
	dict set TopLevelPortInterface accum_snap_q0 Direction out
	dict set TopLevelPortInterface accum_snap_q0 Period 1
	dict set TopLevelPortInterface accum_snap_q0 Interface 0
	dict set TopLevelPortInterface accum_snap_q0 InterfaceName {}
	dict set TopLevelPortInterface accum_snap_q0 InterfaceString {DATA}
	dict set TopLevelPortInterface accum_snap_q0 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface accum_snap_q0 Locs {}
	dict set TopLevelPortInterface accum_snap_q0 IOStandard {}
	dict set TopLevelPortInterface accum_snap_q1 Name {accum_snap_q1}
	dict set TopLevelPortInterface accum_snap_q1 Type Fix_32_17
	dict set TopLevelPortInterface accum_snap_q1 ArithmeticType xlSigned
	dict set TopLevelPortInterface accum_snap_q1 BinaryPoint 17
	dict set TopLevelPortInterface accum_snap_q1 Width 32
	dict set TopLevelPortInterface accum_snap_q1 DatFile {blast_module_v6_cordic_ddc_accum_snap_q1.dat}
	dict set TopLevelPortInterface accum_snap_q1 IconText {accum_snap_q1}
	dict set TopLevelPortInterface accum_snap_q1 Direction out
	dict set TopLevelPortInterface accum_snap_q1 Period 1
	dict set TopLevelPortInterface accum_snap_q1 Interface 0
	dict set TopLevelPortInterface accum_snap_q1 InterfaceName {}
	dict set TopLevelPortInterface accum_snap_q1 InterfaceString {DATA}
	dict set TopLevelPortInterface accum_snap_q1 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface accum_snap_q1 Locs {}
	dict set TopLevelPortInterface accum_snap_q1 IOStandard {}
	dict set TopLevelPortInterface accum_snap_sync Name {accum_snap_sync}
	dict set TopLevelPortInterface accum_snap_sync Type Bool
	dict set TopLevelPortInterface accum_snap_sync ArithmeticType xlUnsigned
	dict set TopLevelPortInterface accum_snap_sync BinaryPoint 0
	dict set TopLevelPortInterface accum_snap_sync Width 1
	dict set TopLevelPortInterface accum_snap_sync DatFile {blast_module_v6_cordic_ddc_accum_snap_sync.dat}
	dict set TopLevelPortInterface accum_snap_sync IconText {accum_snap_sync}
	dict set TopLevelPortInterface accum_snap_sync Direction out
	dict set TopLevelPortInterface accum_snap_sync Period 1
	dict set TopLevelPortInterface accum_snap_sync Interface 0
	dict set TopLevelPortInterface accum_snap_sync InterfaceName {}
	dict set TopLevelPortInterface accum_snap_sync InterfaceString {DATA}
	dict set TopLevelPortInterface accum_snap_sync ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface accum_snap_sync Locs {}
	dict set TopLevelPortInterface accum_snap_sync IOStandard {}
	dict set TopLevelPortInterface ddc_snap_i0q0 Name {ddc_snap_i0q0}
	dict set TopLevelPortInterface ddc_snap_i0q0 Type UFix_38_0
	dict set TopLevelPortInterface ddc_snap_i0q0 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface ddc_snap_i0q0 BinaryPoint 0
	dict set TopLevelPortInterface ddc_snap_i0q0 Width 38
	dict set TopLevelPortInterface ddc_snap_i0q0 DatFile {blast_module_v6_cordic_ddc_ddc_snap_i0q0.dat}
	dict set TopLevelPortInterface ddc_snap_i0q0 IconText {ddc_snap_i0q0}
	dict set TopLevelPortInterface ddc_snap_i0q0 Direction out
	dict set TopLevelPortInterface ddc_snap_i0q0 Period 1
	dict set TopLevelPortInterface ddc_snap_i0q0 Interface 0
	dict set TopLevelPortInterface ddc_snap_i0q0 InterfaceName {}
	dict set TopLevelPortInterface ddc_snap_i0q0 InterfaceString {DATA}
	dict set TopLevelPortInterface ddc_snap_i0q0 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface ddc_snap_i0q0 Locs {}
	dict set TopLevelPortInterface ddc_snap_i0q0 IOStandard {}
	dict set TopLevelPortInterface ddc_snap_i1q1 Name {ddc_snap_i1q1}
	dict set TopLevelPortInterface ddc_snap_i1q1 Type UFix_38_0
	dict set TopLevelPortInterface ddc_snap_i1q1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface ddc_snap_i1q1 BinaryPoint 0
	dict set TopLevelPortInterface ddc_snap_i1q1 Width 38
	dict set TopLevelPortInterface ddc_snap_i1q1 DatFile {blast_module_v6_cordic_ddc_ddc_snap_i1q1.dat}
	dict set TopLevelPortInterface ddc_snap_i1q1 IconText {ddc_snap_i1q1}
	dict set TopLevelPortInterface ddc_snap_i1q1 Direction out
	dict set TopLevelPortInterface ddc_snap_i1q1 Period 1
	dict set TopLevelPortInterface ddc_snap_i1q1 Interface 0
	dict set TopLevelPortInterface ddc_snap_i1q1 InterfaceName {}
	dict set TopLevelPortInterface ddc_snap_i1q1 InterfaceString {DATA}
	dict set TopLevelPortInterface ddc_snap_i1q1 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface ddc_snap_i1q1 Locs {}
	dict set TopLevelPortInterface ddc_snap_i1q1 IOStandard {}
	dict set TopLevelPortInterface ddc_snap_sync Name {ddc_snap_sync}
	dict set TopLevelPortInterface ddc_snap_sync Type Bool
	dict set TopLevelPortInterface ddc_snap_sync ArithmeticType xlUnsigned
	dict set TopLevelPortInterface ddc_snap_sync BinaryPoint 0
	dict set TopLevelPortInterface ddc_snap_sync Width 1
	dict set TopLevelPortInterface ddc_snap_sync DatFile {blast_module_v6_cordic_ddc_ddc_snap_sync.dat}
	dict set TopLevelPortInterface ddc_snap_sync IconText {ddc_snap_sync}
	dict set TopLevelPortInterface ddc_snap_sync Direction out
	dict set TopLevelPortInterface ddc_snap_sync Period 1
	dict set TopLevelPortInterface ddc_snap_sync Interface 0
	dict set TopLevelPortInterface ddc_snap_sync InterfaceName {}
	dict set TopLevelPortInterface ddc_snap_sync InterfaceString {DATA}
	dict set TopLevelPortInterface ddc_snap_sync ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface ddc_snap_sync Locs {}
	dict set TopLevelPortInterface ddc_snap_sync IOStandard {}
	dict set TopLevelPortInterface fft_of Name {fft_of}
	dict set TopLevelPortInterface fft_of Type UFix_1_0
	dict set TopLevelPortInterface fft_of ArithmeticType xlUnsigned
	dict set TopLevelPortInterface fft_of BinaryPoint 0
	dict set TopLevelPortInterface fft_of Width 1
	dict set TopLevelPortInterface fft_of DatFile {blast_module_v6_cordic_ddc_fft_of.dat}
	dict set TopLevelPortInterface fft_of IconText {fft_of}
	dict set TopLevelPortInterface fft_of Direction out
	dict set TopLevelPortInterface fft_of Period 1
	dict set TopLevelPortInterface fft_of Interface 0
	dict set TopLevelPortInterface fft_of InterfaceName {}
	dict set TopLevelPortInterface fft_of InterfaceString {DATA}
	dict set TopLevelPortInterface fft_of ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface fft_of Locs {}
	dict set TopLevelPortInterface fft_of IOStandard {}
	dict set TopLevelPortInterface fft_snap_i0q0 Name {fft_snap_i0q0}
	dict set TopLevelPortInterface fft_snap_i0q0 Type UFix_36_0
	dict set TopLevelPortInterface fft_snap_i0q0 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface fft_snap_i0q0 BinaryPoint 0
	dict set TopLevelPortInterface fft_snap_i0q0 Width 36
	dict set TopLevelPortInterface fft_snap_i0q0 DatFile {blast_module_v6_cordic_ddc_fft_snap_i0q0.dat}
	dict set TopLevelPortInterface fft_snap_i0q0 IconText {fft_snap_i0q0}
	dict set TopLevelPortInterface fft_snap_i0q0 Direction out
	dict set TopLevelPortInterface fft_snap_i0q0 Period 1
	dict set TopLevelPortInterface fft_snap_i0q0 Interface 0
	dict set TopLevelPortInterface fft_snap_i0q0 InterfaceName {}
	dict set TopLevelPortInterface fft_snap_i0q0 InterfaceString {DATA}
	dict set TopLevelPortInterface fft_snap_i0q0 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface fft_snap_i0q0 Locs {}
	dict set TopLevelPortInterface fft_snap_i0q0 IOStandard {}
	dict set TopLevelPortInterface fft_snap_i1q1 Name {fft_snap_i1q1}
	dict set TopLevelPortInterface fft_snap_i1q1 Type UFix_36_0
	dict set TopLevelPortInterface fft_snap_i1q1 ArithmeticType xlUnsigned
	dict set TopLevelPortInterface fft_snap_i1q1 BinaryPoint 0
	dict set TopLevelPortInterface fft_snap_i1q1 Width 36
	dict set TopLevelPortInterface fft_snap_i1q1 DatFile {blast_module_v6_cordic_ddc_fft_snap_i1q1.dat}
	dict set TopLevelPortInterface fft_snap_i1q1 IconText {fft_snap_i1q1}
	dict set TopLevelPortInterface fft_snap_i1q1 Direction out
	dict set TopLevelPortInterface fft_snap_i1q1 Period 1
	dict set TopLevelPortInterface fft_snap_i1q1 Interface 0
	dict set TopLevelPortInterface fft_snap_i1q1 InterfaceName {}
	dict set TopLevelPortInterface fft_snap_i1q1 InterfaceString {DATA}
	dict set TopLevelPortInterface fft_snap_i1q1 ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface fft_snap_i1q1 Locs {}
	dict set TopLevelPortInterface fft_snap_i1q1 IOStandard {}
	dict set TopLevelPortInterface fft_snap_sync Name {fft_snap_sync}
	dict set TopLevelPortInterface fft_snap_sync Type Bool
	dict set TopLevelPortInterface fft_snap_sync ArithmeticType xlUnsigned
	dict set TopLevelPortInterface fft_snap_sync BinaryPoint 0
	dict set TopLevelPortInterface fft_snap_sync Width 1
	dict set TopLevelPortInterface fft_snap_sync DatFile {blast_module_v6_cordic_ddc_fft_snap_sync.dat}
	dict set TopLevelPortInterface fft_snap_sync IconText {fft_snap_sync}
	dict set TopLevelPortInterface fft_snap_sync Direction out
	dict set TopLevelPortInterface fft_snap_sync Period 1
	dict set TopLevelPortInterface fft_snap_sync Interface 0
	dict set TopLevelPortInterface fft_snap_sync InterfaceName {}
	dict set TopLevelPortInterface fft_snap_sync InterfaceString {DATA}
	dict set TopLevelPortInterface fft_snap_sync ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface fft_snap_sync Locs {}
	dict set TopLevelPortInterface fft_snap_sync IOStandard {}
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
	dict set TopLevelPortInterface clk ClockDomain {blast_module_v6_cordic_ddc}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project