-- Generated from Simulink block cordic_mix_v1_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity cordic_mix_v1_struct is
  port (
    dphi : in std_logic_vector( 22-1 downto 0 );
    im_even : in std_logic_vector( 16-1 downto 0 );
    im_odd : in std_logic_vector( 16-1 downto 0 );
    re_even : in std_logic_vector( 16-1 downto 0 );
    re_odd : in std_logic_vector( 16-1 downto 0 );
    sync_in : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    gateway_out11 : out std_logic_vector( 1-1 downto 0 );
    out_im_even : out std_logic_vector( 16-1 downto 0 );
    out_im_odd : out std_logic_vector( 16-1 downto 0 );
    out_re_even : out std_logic_vector( 16-1 downto 0 );
    out_re_odd : out std_logic_vector( 16-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end cordic_mix_v1_struct;
architecture structural of cordic_mix_v1_struct is 
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal dphi_net : std_logic_vector( 22-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 22-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 22-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay14_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay13_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal im_even_net : std_logic_vector( 16-1 downto 0 );
  signal im_odd_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal re_even_net : std_logic_vector( 16-1 downto 0 );
  signal re_odd_net : std_logic_vector( 16-1 downto 0 );
  signal sync_in_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal accumulator_q_net : std_logic_vector( 22-1 downto 0 );
  signal shift_op_net : std_logic_vector( 22-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 22-1 downto 0 );
  signal shift1_op_net : std_logic_vector( 22-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 22-1 downto 0 );
  signal delay9_q_net : std_logic;
  signal convert1_dout_net : std_logic_vector( 24-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 24-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 24-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal convert4_dout_net : std_logic_vector( 24-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 24-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 24-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 22-1 downto 0 );
  signal delay10_q_net : std_logic_vector( 16-1 downto 0 );
begin
  gateway_out11 <= delay4_q_net;
  dphi_net <= dphi;
  im_even_net <= im_even;
  im_odd_net <= im_odd;
  out_im_even <= cordic_6_0_m_axis_dout_tdata_imag_net;
  out_im_odd <= cordic_6_0_1_m_axis_dout_tdata_imag_net;
  out_re_even <= cordic_6_0_m_axis_dout_tdata_real_net;
  out_re_odd <= cordic_6_0_1_m_axis_dout_tdata_real_net;
  re_even_net <= re_even;
  re_odd_net <= re_odd;
  sync_in_net <= sync_in;
  sync_out <= cordic_6_0_m_axis_dout_tvalid_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  accumulator : entity xil_defaultlib.sysgen_accum_3b3f4763a6 
  port map (
    clr => '0',
    b => shift_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  accumulator1 : entity xil_defaultlib.sysgen_accum_3b3f4763a6 
  port map (
    clr => '0',
    b => shift1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  addsub : entity xil_defaultlib.cordic_mix_v1_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 22,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 22,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 23,
    core_name0 => "cordic_mix_v1_c_addsub_v12_0_i0",
    extra_registers => 0,
    full_s_arith => 1,
    full_s_width => 23,
    latency => 1,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 22
  )
  port map (
    clr => '0',
    en => "1",
    a => accumulator1_q_net,
    b => dphi_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  cordic_6_0 : entity xil_defaultlib.xlcordic_3055c2d8b3b735d427f07ca8e5f5d615 
  port map (
    s_axis_cartesian_tvalid => delay9_q_net,
    s_axis_cartesian_tdata_imag => convert1_dout_net,
    s_axis_cartesian_tdata_real => convert2_dout_net,
    s_axis_phase_tvalid => delay9_q_net,
    s_axis_phase_tdata_phase => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net(0),
    m_axis_dout_tdata_imag => cordic_6_0_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
  cordic_6_0_1 : entity xil_defaultlib.xlcordic_3055c2d8b3b735d427f07ca8e5f5d615 
  port map (
    s_axis_cartesian_tvalid => delay9_q_net,
    s_axis_cartesian_tdata_imag => convert4_dout_net,
    s_axis_cartesian_tdata_real => convert5_dout_net,
    s_axis_phase_tvalid => delay9_q_net,
    s_axis_phase_tdata_phase => convert3_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_1_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => cordic_6_0_1_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => cordic_6_0_1_m_axis_dout_tdata_real_net
  );
  convert : entity xil_defaultlib.cordic_mix_v1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 21,
    din_width => 22,
    dout_arith => 2,
    dout_bin_pt => 21,
    dout_width => 24,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret1_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.cordic_mix_v1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 16,
    dout_arith => 2,
    dout_bin_pt => 22,
    dout_width => 24,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => delay10_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.cordic_mix_v1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 16,
    dout_arith => 2,
    dout_bin_pt => 22,
    dout_width => 24,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.cordic_mix_v1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 21,
    din_width => 22,
    dout_arith => 2,
    dout_bin_pt => 21,
    dout_width => 24,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret2_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.cordic_mix_v1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 16,
    dout_arith => 2,
    dout_bin_pt => 22,
    dout_width => 24,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => delay8_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.cordic_mix_v1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 16,
    dout_arith => 2,
    dout_bin_pt => 22,
    dout_width => 24,
    latency => 0,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => delay14_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  delay1 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => re_even_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay10 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay10_q_net
  );
  delay13 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => im_odd_net,
    clk => clk_net,
    ce => ce_net,
    q => delay13_q_net
  );
  delay14 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay14_q_net
  );
  delay2 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => re_odd_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => sync_in_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 24,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d(0) => delay9_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => im_even_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 22
  )
  port map (
    en => '1',
    rst => '0',
    d => accumulator_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay13_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
  delay9 : entity xil_defaultlib.cordic_mix_v1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    q(0) => delay9_q_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f8b14193cb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay6_q_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f8b14193cb 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => addsub_s_net,
    output_port => reinterpret2_output_port_net
  );
  shift : entity xil_defaultlib.sysgen_shift_5ee66187f5 
  port map (
    clr => '0',
    ip => dphi_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  shift1 : entity xil_defaultlib.sysgen_shift_5ee66187f5 
  port map (
    clr => '0',
    ip => dphi_net,
    clk => clk_net,
    ce => ce_net,
    op => shift1_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity cordic_mix_v1_default_clock_driver is
  port (
    cordic_mix_v1_sysclk : in std_logic;
    cordic_mix_v1_sysce : in std_logic;
    cordic_mix_v1_sysclr : in std_logic;
    cordic_mix_v1_clk1 : out std_logic;
    cordic_mix_v1_ce1 : out std_logic
  );
end cordic_mix_v1_default_clock_driver;
architecture structural of cordic_mix_v1_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => cordic_mix_v1_sysclk,
    sysce => cordic_mix_v1_sysce,
    sysclr => cordic_mix_v1_sysclr,
    clk => cordic_mix_v1_clk1,
    ce => cordic_mix_v1_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity cordic_mix_v1 is
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
end cordic_mix_v1;
architecture structural of cordic_mix_v1 is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "cordic_mix_v1,sysgen_core_2020_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=4116,accum=2,addsub=1,convert=6,cordic_v6_0=2,delay=12,reinterpret=2,shift=2,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  cordic_mix_v1_default_clock_driver : entity xil_defaultlib.cordic_mix_v1_default_clock_driver 
  port map (
    cordic_mix_v1_sysclk => clk,
    cordic_mix_v1_sysce => '1',
    cordic_mix_v1_sysclr => '0',
    cordic_mix_v1_clk1 => clk_1_net,
    cordic_mix_v1_ce1 => ce_1_net
  );
  cordic_mix_v1_struct : entity xil_defaultlib.cordic_mix_v1_struct 
  port map (
    dphi => dphi,
    im_even => im_even,
    im_odd => im_odd,
    re_even => re_even,
    re_odd => re_odd,
    sync_in => sync_in,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    gateway_out11 => gateway_out11,
    out_im_even => out_im_even,
    out_im_odd => out_im_odd,
    out_re_even => out_re_even,
    out_re_odd => out_re_odd,
    sync_out => sync_out
  );
end structural;
