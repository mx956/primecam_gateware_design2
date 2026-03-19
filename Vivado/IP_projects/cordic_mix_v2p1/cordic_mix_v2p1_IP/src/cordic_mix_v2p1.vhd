-- Generated from Simulink block cordic_mix_v2p1_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity cordic_mix_v2p1_struct is
  port (
    dphi : in std_logic_vector( 22-1 downto 0 );
    im_0 : in std_logic_vector( 16-1 downto 0 );
    im_1 : in std_logic_vector( 16-1 downto 0 );
    im_2 : in std_logic_vector( 16-1 downto 0 );
    im_3 : in std_logic_vector( 16-1 downto 0 );
    re_0 : in std_logic_vector( 16-1 downto 0 );
    re_1 : in std_logic_vector( 16-1 downto 0 );
    re_2 : in std_logic_vector( 16-1 downto 0 );
    re_3 : in std_logic_vector( 16-1 downto 0 );
    sync_in : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_im_0 : out std_logic_vector( 16-1 downto 0 );
    out_im_1 : out std_logic_vector( 16-1 downto 0 );
    out_im_2 : out std_logic_vector( 16-1 downto 0 );
    out_im_3 : out std_logic_vector( 16-1 downto 0 );
    out_re_0 : out std_logic_vector( 16-1 downto 0 );
    out_re_1 : out std_logic_vector( 16-1 downto 0 );
    out_re_2 : out std_logic_vector( 16-1 downto 0 );
    out_re_3 : out std_logic_vector( 16-1 downto 0 );
    sync_out : out std_logic_vector( 1-1 downto 0 )
  );
end cordic_mix_v2p1_struct;
architecture structural of cordic_mix_v2p1_struct is 
  signal dphi_net : std_logic_vector( 22-1 downto 0 );
  signal im_1_net : std_logic_vector( 16-1 downto 0 );
  signal im_2_net : std_logic_vector( 16-1 downto 0 );
  signal convert12_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert15_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert16_dout_net : std_logic_vector( 16-1 downto 0 );
  signal im_0_net : std_logic_vector( 16-1 downto 0 );
  signal im_3_net : std_logic_vector( 16-1 downto 0 );
  signal convert18_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert13_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert14_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert17_dout_net : std_logic_vector( 16-1 downto 0 );
  signal convert19_dout_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal addsub3_s_net : std_logic_vector( 22-1 downto 0 );
  signal re_1_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 22-1 downto 0 );
  signal delay30_q_net : std_logic_vector( 22-1 downto 0 );
  signal re_2_net : std_logic_vector( 16-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 22-1 downto 0 );
  signal shift_op_net : std_logic_vector( 22-1 downto 0 );
  signal accumulator_q_net : std_logic_vector( 22-1 downto 0 );
  signal sync_in_net : std_logic_vector( 1-1 downto 0 );
  signal delay32_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay31_q_net : std_logic_vector( 22-1 downto 0 );
  signal re_3_net : std_logic_vector( 16-1 downto 0 );
  signal shift1_op_net : std_logic_vector( 22-1 downto 0 );
  signal addsub2_s_net : std_logic_vector( 22-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 22-1 downto 0 );
  signal ce_net : std_logic;
  signal re_0_net : std_logic_vector( 16-1 downto 0 );
  signal convert10_dout_net : std_logic_vector( 24-1 downto 0 );
  signal convert11_dout_net : std_logic_vector( 24-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tvalid_net : std_logic;
  signal convert5_dout_net : std_logic_vector( 24-1 downto 0 );
  signal delay9_q_net : std_logic;
  signal convert6_dout_net : std_logic_vector( 24-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 24-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_imag_net : std_logic_vector( 17-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 24-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 24-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 24-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tdata_imag_net : std_logic_vector( 17-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 24-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal convert3_dout_net : std_logic_vector( 24-1 downto 0 );
  signal cordic_6_0_3_m_axis_dout_tdata_imag_net : std_logic_vector( 17-1 downto 0 );
  signal cordic_6_0_m_axis_dout_tdata_real_net : std_logic_vector( 17-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 17-1 downto 0 );
  signal cordic_6_0_3_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_3_m_axis_dout_tdata_real_net : std_logic_vector( 17-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 24-1 downto 0 );
  signal convert9_dout_net : std_logic_vector( 24-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 17-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_imag_net : std_logic_vector( 17-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 22-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 22-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 22-1 downto 0 );
  signal delay10_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 22-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay14_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay11_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay12_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay13_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay24_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay23_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay15_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay26_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay20_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay28_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay27_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay17_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay29_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay25_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay22_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 22-1 downto 0 );
begin
  dphi_net <= dphi;
  im_0_net <= im_0;
  im_1_net <= im_1;
  im_2_net <= im_2;
  im_3_net <= im_3;
  out_im_0 <= convert12_dout_net;
  out_im_1 <= convert14_dout_net;
  out_im_2 <= convert16_dout_net;
  out_im_3 <= convert18_dout_net;
  out_re_0 <= convert13_dout_net;
  out_re_1 <= convert15_dout_net;
  out_re_2 <= convert17_dout_net;
  out_re_3 <= convert19_dout_net;
  re_0_net <= re_0;
  re_1_net <= re_1;
  re_2_net <= re_2;
  re_3_net <= re_3;
  sync_in_net <= sync_in;
  sync_out <= delay32_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  accumulator : entity xil_defaultlib.sysgen_accum_77e6d48429 
  port map (
    clr => '0',
    b => shift_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator_q_net
  );
  addsub : entity xil_defaultlib.cordic_mix_v2p1_xladdsub 
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
    core_name0 => "cordic_mix_v2p1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 1,
    full_s_width => 23,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 22
  )
  port map (
    clr => '0',
    en => "1",
    a => accumulator_q_net,
    b => delay30_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  addsub1 : entity xil_defaultlib.cordic_mix_v2p1_xladdsub 
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
    core_name0 => "cordic_mix_v2p1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 1,
    full_s_width => 23,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 22
  )
  port map (
    clr => '0',
    en => "1",
    a => accumulator_q_net,
    b => delay31_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  addsub2 : entity xil_defaultlib.cordic_mix_v2p1_xladdsub 
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
    core_name0 => "cordic_mix_v2p1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 1,
    full_s_width => 23,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 22
  )
  port map (
    clr => '0',
    en => "1",
    a => accumulator_q_net,
    b => addsub3_s_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub2_s_net
  );
  addsub3 : entity xil_defaultlib.cordic_mix_v2p1_xladdsub 
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
    core_name0 => "cordic_mix_v2p1_c_addsub_v12_0_i0",
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
    a => shift1_op_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub3_s_net
  );
  cordic_6_0 : entity xil_defaultlib.xlcordic_2bbb167fa4d725612fcc0c13d5ab8925 
  port map (
    s_axis_cartesian_tvalid => delay9_q_net,
    s_axis_cartesian_tdata_imag => convert1_dout_net,
    s_axis_cartesian_tdata_real => convert2_dout_net,
    s_axis_phase_tvalid => delay9_q_net,
    s_axis_phase_tdata_phase => convert_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => cordic_6_0_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => cordic_6_0_m_axis_dout_tdata_real_net
  );
  cordic_6_0_1 : entity xil_defaultlib.xlcordic_2bbb167fa4d725612fcc0c13d5ab8925 
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
  cordic_6_0_2 : entity xil_defaultlib.xlcordic_2bbb167fa4d725612fcc0c13d5ab8925 
  port map (
    s_axis_cartesian_tvalid => delay9_q_net,
    s_axis_cartesian_tdata_imag => convert6_dout_net,
    s_axis_cartesian_tdata_real => convert7_dout_net,
    s_axis_phase_tvalid => delay9_q_net,
    s_axis_phase_tdata_phase => convert10_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_2_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => cordic_6_0_2_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => cordic_6_0_2_m_axis_dout_tdata_real_net
  );
  cordic_6_0_3 : entity xil_defaultlib.xlcordic_2bbb167fa4d725612fcc0c13d5ab8925 
  port map (
    s_axis_cartesian_tvalid => delay9_q_net,
    s_axis_cartesian_tdata_imag => convert8_dout_net,
    s_axis_cartesian_tdata_real => convert9_dout_net,
    s_axis_phase_tvalid => delay9_q_net,
    s_axis_phase_tdata_phase => convert11_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_3_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => cordic_6_0_3_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => cordic_6_0_3_m_axis_dout_tdata_real_net
  );
  convert : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
  convert1 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
  convert10 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
    din => reinterpret3_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert10_dout_net
  );
  convert11 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
    din => reinterpret4_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert11_dout_net
  );
  convert2 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
  convert3 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
  convert4 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
  convert5 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
  convert6 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
    din => delay16_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  convert7 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
    din => delay12_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  convert8 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
    din => delay20_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert8_dout_net
  );
  convert9 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
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
    din => delay18_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert9_dout_net
  );
  delay1 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay23_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay10 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 2,
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
  delay11 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay26_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay11_q_net
  );
  delay12 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay15_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay12_q_net
  );
  delay13 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay24_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay13_q_net
  );
  delay14 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 2,
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
  delay15 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay27_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay15_q_net
  );
  delay16 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay11_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay16_q_net
  );
  delay17 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay28_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay17_q_net
  );
  delay18 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay19_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay29_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay25_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay20 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay17_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay20_q_net
  );
  delay3 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay21_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay5 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => delay22_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 2,
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
  delay7 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 2,
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
  delay8 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 2,
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
  delay9 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 2,
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
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_37fe1dcaa4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay6_q_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_37fe1dcaa4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => addsub_s_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_37fe1dcaa4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => addsub1_s_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_37fe1dcaa4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => addsub2_s_net,
    output_port => reinterpret4_output_port_net
  );
  shift : entity xil_defaultlib.sysgen_shift_3ee29e4899 
  port map (
    clr => '0',
    ip => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    op => shift_op_net
  );
  shift1 : entity xil_defaultlib.sysgen_shift_79d850aad5 
  port map (
    clr => '0',
    ip => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    op => shift1_op_net
  );
  delay31 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 22
  )
  port map (
    en => '1',
    rst => '0',
    d => shift1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay31_q_net
  );
  delay32 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d(0) => cordic_6_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => delay32_q_net
  );
  convert12 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 17,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => cordic_6_0_m_axis_dout_tdata_imag_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert12_dout_net
  );
  convert13 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 17,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => cordic_6_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert13_dout_net
  );
  convert14 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 17,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => cordic_6_0_1_m_axis_dout_tdata_imag_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert14_dout_net
  );
  convert15 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 17,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => cordic_6_0_1_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert15_dout_net
  );
  convert16 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 17,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => cordic_6_0_2_m_axis_dout_tdata_imag_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert16_dout_net
  );
  convert17 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 17,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => cordic_6_0_2_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert17_dout_net
  );
  convert18 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 17,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => cordic_6_0_3_m_axis_dout_tdata_imag_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert18_dout_net
  );
  convert19 : entity xil_defaultlib.cordic_mix_v2p1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 17,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 16,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => cordic_6_0_3_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert19_dout_net
  );
  delay4 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 22
  )
  port map (
    en => '1',
    rst => '0',
    d => dphi_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay21 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
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
    q => delay21_q_net
  );
  delay22 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => im_0_net,
    clk => clk_net,
    ce => ce_net,
    q => delay22_q_net
  );
  delay23 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => re_0_net,
    clk => clk_net,
    ce => ce_net,
    q => delay23_q_net
  );
  delay24 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => im_1_net,
    clk => clk_net,
    ce => ce_net,
    q => delay24_q_net
  );
  delay25 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => re_1_net,
    clk => clk_net,
    ce => ce_net,
    q => delay25_q_net
  );
  delay26 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => im_2_net,
    clk => clk_net,
    ce => ce_net,
    q => delay26_q_net
  );
  delay27 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => re_2_net,
    clk => clk_net,
    ce => ce_net,
    q => delay27_q_net
  );
  delay28 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => im_3_net,
    clk => clk_net,
    ce => ce_net,
    q => delay28_q_net
  );
  delay29 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => re_3_net,
    clk => clk_net,
    ce => ce_net,
    q => delay29_q_net
  );
  delay30 : entity xil_defaultlib.cordic_mix_v2p1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 22
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay30_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity cordic_mix_v2p1_default_clock_driver is
  port (
    cordic_mix_v2p1_sysclk : in std_logic;
    cordic_mix_v2p1_sysce : in std_logic;
    cordic_mix_v2p1_sysclr : in std_logic;
    cordic_mix_v2p1_clk1 : out std_logic;
    cordic_mix_v2p1_ce1 : out std_logic
  );
end cordic_mix_v2p1_default_clock_driver;
architecture structural of cordic_mix_v2p1_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => cordic_mix_v2p1_sysclk,
    sysce => cordic_mix_v2p1_sysce,
    sysclr => cordic_mix_v2p1_sysclr,
    clk => cordic_mix_v2p1_clk1,
    ce => cordic_mix_v2p1_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity cordic_mix_v2p1 is
  port (
    dphi : in std_logic_vector( 22-1 downto 0 );
    im_0 : in std_logic_vector( 16-1 downto 0 );
    im_1 : in std_logic_vector( 16-1 downto 0 );
    im_2 : in std_logic_vector( 16-1 downto 0 );
    im_3 : in std_logic_vector( 16-1 downto 0 );
    re_0 : in std_logic_vector( 16-1 downto 0 );
    re_1 : in std_logic_vector( 16-1 downto 0 );
    re_2 : in std_logic_vector( 16-1 downto 0 );
    re_3 : in std_logic_vector( 16-1 downto 0 );
    sync_in : in std_logic;
    clk : in std_logic;
    out_im_0 : out std_logic_vector( 16-1 downto 0 );
    out_im_1 : out std_logic_vector( 16-1 downto 0 );
    out_im_2 : out std_logic_vector( 16-1 downto 0 );
    out_im_3 : out std_logic_vector( 16-1 downto 0 );
    out_re_0 : out std_logic_vector( 16-1 downto 0 );
    out_re_1 : out std_logic_vector( 16-1 downto 0 );
    out_re_2 : out std_logic_vector( 16-1 downto 0 );
    out_re_3 : out std_logic_vector( 16-1 downto 0 );
    sync_out : out std_logic
  );
end cordic_mix_v2p1;
architecture structural of cordic_mix_v2p1 is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "cordic_mix_v2p1,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=500,accum=1,addsub=4,convert=20,cordic_v6_0=4,delay=32,reinterpret=4,shift=2,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  cordic_mix_v2p1_default_clock_driver : entity xil_defaultlib.cordic_mix_v2p1_default_clock_driver 
  port map (
    cordic_mix_v2p1_sysclk => clk,
    cordic_mix_v2p1_sysce => '1',
    cordic_mix_v2p1_sysclr => '0',
    cordic_mix_v2p1_clk1 => clk_1_net,
    cordic_mix_v2p1_ce1 => ce_1_net
  );
  cordic_mix_v2p1_struct : entity xil_defaultlib.cordic_mix_v2p1_struct 
  port map (
    dphi => dphi,
    im_0 => im_0,
    im_1 => im_1,
    im_2 => im_2,
    im_3 => im_3,
    re_0 => re_0,
    re_1 => re_1,
    re_2 => re_2,
    re_3 => re_3,
    sync_in(0) => sync_in,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    out_im_0 => out_im_0,
    out_im_1 => out_im_1,
    out_im_2 => out_im_2,
    out_im_3 => out_im_3,
    out_re_0 => out_re_0,
    out_re_1 => out_re_1,
    out_re_2 => out_re_2,
    out_re_3 => out_re_3,
    sync_out(0) => sync_out
  );
end structural;
