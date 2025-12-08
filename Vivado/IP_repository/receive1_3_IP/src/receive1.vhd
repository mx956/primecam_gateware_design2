-- Generated from Simulink block Receive1/0001_
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_0001 is
  port (
    rst : in std_logic_vector( 1-1 downto 0 );
    en : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end receive1_0001;
architecture structural of receive1_0001 is 
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal constant17_op_net : std_logic_vector( 2-1 downto 0 );
  signal const_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 2-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= register_q_net;
  constant1_op_net <= rst;
  constant6_op_net <= en;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant17 : entity xil_defaultlib.sysgen_constant_b75673c6f9 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant17_op_net
  );
  counter : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 2
  )
  port map (
    clr => '0',
    rst => constant1_op_net,
    en => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => const_op_net,
    rst => constant1_op_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_bd8eda551f 
  port map (
    clr => '0',
    a => counter_op_net,
    b => constant17_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  const : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => const_op_net
  );
end structural;
-- Generated from Simulink block Receive1/Subsystem/vector_acc
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_acc is
  port (
    data_in : in std_logic_vector( 16-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic;
    acc_length : in std_logic_vector( 23-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tvalid_out : out std_logic_vector( 1-1 downto 0 );
    data_out : out std_logic_vector( 32-1 downto 0 );
    tvalid_snap : out std_logic_vector( 1-1 downto 0 );
    tvalid_out_eth : out std_logic_vector( 1-1 downto 0 )
  );
end receive1_vector_acc;
architecture structural of receive1_vector_acc is 
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_empty_net : std_logic;
  signal fifo1_full_net : std_logic;
  signal mux3_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tvalid_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 23-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 24-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 9-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
begin
  tvalid_out <= logical1_y_net;
  data_out <= delay2_q_net;
  tvalid_snap <= delay1_q_net;
  tvalid_out_eth <= delay4_q_net;
  cordic_6_0_0_m_axis_dout_tdata_real_net <= data_in;
  logical_y_net_x0 <= rst;
  cordic_6_0_0_m_axis_dout_tvalid_net <= tvalid_in;
  delay16_q_net <= acc_length;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "receive1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 2,
    overflow => 3,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 14,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mux1_y_net,
    b => mux2_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_e183f41306 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_6be1581f6a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 24
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => delay19_q_net,
    en => delay21_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  delay1 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 513,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay18 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => fifo1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay21 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay21_q_net
  );
  delay3 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  fifo1 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i0",
    data_count_width => 10,
    data_width => 32,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub1_s_net,
    we => constant4_op_net(0),
    re => delay18_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo1_dout_net,
    empty => fifo1_empty_net,
    full => fifo1_full_net
  );
  logical : entity xil_defaultlib.sysgen_logical_9843c561e4 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_a74c64cf5a 
  port map (
    clr => '0',
    d0 => delay3_q_net,
    d1 => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant1_op_net,
    d1 => cordic_6_0_0_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_82585297eb 
  port map (
    clr => '0',
    sel => mux3_y_net,
    d0 => fifo1_dout_net,
    d1 => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_08dc2819b2 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant2_op_net,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant7_op_net,
    rst => logical_y_net_x0,
    en(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant9_op_net,
    rst => relational2_op_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_1a7520a256 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => delay16_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_88fe75e2d4 
  port map (
    clr => '0',
    a => counter3_op_net,
    b => constant10_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
end structural;
-- Generated from Simulink block Receive1/Subsystem/vector_acc1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_acc1 is
  port (
    data_in : in std_logic_vector( 16-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic;
    acc_length : in std_logic_vector( 23-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 32-1 downto 0 )
  );
end receive1_vector_acc1;
architecture structural of receive1_vector_acc1 is 
  signal fifo1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_empty_net : std_logic;
  signal fifo1_full_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal cordic_6_0_0_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_0_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 23-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 24-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 9-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 1-1 downto 0 );
begin
  data_out <= delay2_q_net;
  cordic_6_0_0_m_axis_dout_tdata_imag_net <= data_in;
  logical_y_net_x0 <= rst;
  cordic_6_0_0_m_axis_dout_tvalid_net <= tvalid_in;
  delay16_q_net <= acc_length;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "receive1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 2,
    overflow => 3,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 14,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mux1_y_net,
    b => mux2_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_e183f41306 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_6be1581f6a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 24
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => delay19_q_net,
    en => delay21_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  delay18 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => fifo1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay21 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay21_q_net
  );
  fifo1 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i0",
    data_count_width => 10,
    data_width => 32,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub1_s_net,
    we => constant4_op_net(0),
    re => delay18_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo1_dout_net,
    empty => fifo1_empty_net,
    full => fifo1_full_net
  );
  logical : entity xil_defaultlib.sysgen_logical_9843c561e4 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant1_op_net,
    d1 => cordic_6_0_0_m_axis_dout_tdata_imag_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_82585297eb 
  port map (
    clr => '0',
    sel => mux3_y_net,
    d0 => fifo1_dout_net,
    d1 => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_08dc2819b2 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant2_op_net,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant7_op_net,
    rst => logical_y_net_x0,
    en(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant9_op_net,
    rst => relational2_op_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_1a7520a256 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => delay16_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_88fe75e2d4 
  port map (
    clr => '0',
    a => counter3_op_net,
    b => constant10_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
end structural;
-- Generated from Simulink block Receive1/Subsystem/vector_acc2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_acc2 is
  port (
    data_in : in std_logic_vector( 16-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic;
    acc_length : in std_logic_vector( 23-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 32-1 downto 0 )
  );
end receive1_vector_acc2;
architecture structural of receive1_vector_acc2 is 
  signal cordic_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 23-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tvalid_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal delay21_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 9-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 24-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_empty_net : std_logic;
  signal fifo1_full_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 1-1 downto 0 );
begin
  data_out <= delay2_q_net;
  cordic_6_0_1_m_axis_dout_tdata_real_net <= data_in;
  logical_y_net_x0 <= rst;
  cordic_6_0_0_m_axis_dout_tvalid_net <= tvalid_in;
  delay16_q_net <= acc_length;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "receive1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 2,
    overflow => 3,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 14,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mux1_y_net,
    b => mux2_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_e183f41306 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_6be1581f6a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 24
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => delay19_q_net,
    en => delay21_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  delay18 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => fifo1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay21 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay21_q_net
  );
  fifo1 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i0",
    data_count_width => 10,
    data_width => 32,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub1_s_net,
    we => constant4_op_net(0),
    re => delay18_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo1_dout_net,
    empty => fifo1_empty_net,
    full => fifo1_full_net
  );
  logical : entity xil_defaultlib.sysgen_logical_9843c561e4 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant1_op_net,
    d1 => cordic_6_0_1_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_82585297eb 
  port map (
    clr => '0',
    sel => mux3_y_net,
    d0 => fifo1_dout_net,
    d1 => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_08dc2819b2 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant2_op_net,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant7_op_net,
    rst => logical_y_net_x0,
    en(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant9_op_net,
    rst => relational2_op_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_1a7520a256 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => delay16_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_88fe75e2d4 
  port map (
    clr => '0',
    a => counter3_op_net,
    b => constant10_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
end structural;
-- Generated from Simulink block Receive1/Subsystem/vector_acc3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_acc3 is
  port (
    data_in : in std_logic_vector( 16-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic;
    acc_length : in std_logic_vector( 23-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 32-1 downto 0 )
  );
end receive1_vector_acc3;
architecture structural of receive1_vector_acc3 is 
  signal fifo1_empty_net : std_logic;
  signal fifo1_full_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 24-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 9-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal cordic_6_0_1_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tvalid_net : std_logic;
  signal delay16_q_net : std_logic_vector( 23-1 downto 0 );
  signal clk_net : std_logic;
  signal mux3_y_net : std_logic_vector( 1-1 downto 0 );
begin
  data_out <= delay2_q_net;
  cordic_6_0_1_m_axis_dout_tdata_imag_net <= data_in;
  logical_y_net_x0 <= rst;
  cordic_6_0_0_m_axis_dout_tvalid_net <= tvalid_in;
  delay16_q_net <= acc_length;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "receive1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 2,
    overflow => 3,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 14,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mux1_y_net,
    b => mux2_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_e183f41306 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_6be1581f6a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 24
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => delay19_q_net,
    en => delay21_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  delay18 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => fifo1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay21 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay21_q_net
  );
  fifo1 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i0",
    data_count_width => 10,
    data_width => 32,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub1_s_net,
    we => constant4_op_net(0),
    re => delay18_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo1_dout_net,
    empty => fifo1_empty_net,
    full => fifo1_full_net
  );
  logical : entity xil_defaultlib.sysgen_logical_9843c561e4 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant1_op_net,
    d1 => cordic_6_0_1_m_axis_dout_tdata_imag_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_82585297eb 
  port map (
    clr => '0',
    sel => mux3_y_net,
    d0 => fifo1_dout_net,
    d1 => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_08dc2819b2 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant2_op_net,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant7_op_net,
    rst => logical_y_net_x0,
    en(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant9_op_net,
    rst => relational2_op_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_1a7520a256 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => delay16_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_88fe75e2d4 
  port map (
    clr => '0',
    a => counter3_op_net,
    b => constant10_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
end structural;
-- Generated from Simulink block Receive1/Subsystem/vector_acc4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_acc4 is
  port (
    data_in : in std_logic_vector( 16-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic;
    acc_length : in std_logic_vector( 23-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 32-1 downto 0 )
  );
end receive1_vector_acc4;
architecture structural of receive1_vector_acc4 is 
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tvalid_net : std_logic;
  signal delay16_q_net : std_logic_vector( 23-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 9-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 24-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_full_net : std_logic;
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_empty_net : std_logic;
  signal fifo1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 1-1 downto 0 );
begin
  data_out <= delay2_q_net;
  cordic_6_0_2_m_axis_dout_tdata_real_net <= data_in;
  logical_y_net_x0 <= rst;
  cordic_6_0_0_m_axis_dout_tvalid_net <= tvalid_in;
  delay16_q_net <= acc_length;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "receive1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 2,
    overflow => 3,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 14,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mux1_y_net,
    b => mux2_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_e183f41306 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_6be1581f6a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 24
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => delay19_q_net,
    en => delay21_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  delay18 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => fifo1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay21 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay21_q_net
  );
  fifo1 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i0",
    data_count_width => 10,
    data_width => 32,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub1_s_net,
    we => constant4_op_net(0),
    re => delay18_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo1_dout_net,
    empty => fifo1_empty_net,
    full => fifo1_full_net
  );
  logical : entity xil_defaultlib.sysgen_logical_9843c561e4 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant1_op_net,
    d1 => cordic_6_0_2_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_82585297eb 
  port map (
    clr => '0',
    sel => mux3_y_net,
    d0 => fifo1_dout_net,
    d1 => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_08dc2819b2 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant2_op_net,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant7_op_net,
    rst => logical_y_net_x0,
    en(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant9_op_net,
    rst => relational2_op_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_1a7520a256 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => delay16_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_88fe75e2d4 
  port map (
    clr => '0',
    a => counter3_op_net,
    b => constant10_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
end structural;
-- Generated from Simulink block Receive1/Subsystem/vector_acc5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_acc5 is
  port (
    data_in : in std_logic_vector( 16-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic;
    acc_length : in std_logic_vector( 23-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 32-1 downto 0 )
  );
end receive1_vector_acc5;
architecture structural of receive1_vector_acc5 is 
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal cordic_6_0_0_m_axis_dout_tvalid_net : std_logic;
  signal delay16_q_net : std_logic_vector( 23-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 9-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 24-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_empty_net : std_logic;
  signal fifo1_full_net : std_logic;
begin
  data_out <= delay2_q_net;
  cordic_6_0_2_m_axis_dout_tdata_imag_net <= data_in;
  logical_y_net_x0 <= rst;
  cordic_6_0_0_m_axis_dout_tvalid_net <= tvalid_in;
  delay16_q_net <= acc_length;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "receive1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 2,
    overflow => 3,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 14,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mux1_y_net,
    b => mux2_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_e183f41306 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_6be1581f6a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 24
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => delay19_q_net,
    en => delay21_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  delay18 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => fifo1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay21 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay21_q_net
  );
  fifo1 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i0",
    data_count_width => 10,
    data_width => 32,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub1_s_net,
    we => constant4_op_net(0),
    re => delay18_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo1_dout_net,
    empty => fifo1_empty_net,
    full => fifo1_full_net
  );
  logical : entity xil_defaultlib.sysgen_logical_9843c561e4 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant1_op_net,
    d1 => cordic_6_0_2_m_axis_dout_tdata_imag_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_82585297eb 
  port map (
    clr => '0',
    sel => mux3_y_net,
    d0 => fifo1_dout_net,
    d1 => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_08dc2819b2 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant2_op_net,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant7_op_net,
    rst => logical_y_net_x0,
    en(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant9_op_net,
    rst => relational2_op_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_1a7520a256 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => delay16_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_88fe75e2d4 
  port map (
    clr => '0',
    a => counter3_op_net,
    b => constant10_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
end structural;
-- Generated from Simulink block Receive1/Subsystem/vector_acc6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_acc6 is
  port (
    data_in : in std_logic_vector( 16-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic;
    acc_length : in std_logic_vector( 23-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 32-1 downto 0 )
  );
end receive1_vector_acc6;
architecture structural of receive1_vector_acc6 is 
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal clk_net : std_logic;
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 23-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_3_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal constant10_op_net : std_logic_vector( 16-1 downto 0 );
  signal fifo1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 24-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 9-1 downto 0 );
  signal fifo1_full_net : std_logic;
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_empty_net : std_logic;
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 1-1 downto 0 );
begin
  data_out <= delay2_q_net;
  cordic_6_0_3_m_axis_dout_tdata_real_net <= data_in;
  logical_y_net_x0 <= rst;
  cordic_6_0_0_m_axis_dout_tvalid_net <= tvalid_in;
  delay16_q_net <= acc_length;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "receive1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 2,
    overflow => 3,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 14,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mux1_y_net,
    b => mux2_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_e183f41306 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_6be1581f6a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 24
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => delay19_q_net,
    en => delay21_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  delay18 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => fifo1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay21 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay21_q_net
  );
  fifo1 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i0",
    data_count_width => 10,
    data_width => 32,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub1_s_net,
    we => constant4_op_net(0),
    re => delay18_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo1_dout_net,
    empty => fifo1_empty_net,
    full => fifo1_full_net
  );
  logical : entity xil_defaultlib.sysgen_logical_9843c561e4 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant1_op_net,
    d1 => cordic_6_0_3_m_axis_dout_tdata_real_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_82585297eb 
  port map (
    clr => '0',
    sel => mux3_y_net,
    d0 => fifo1_dout_net,
    d1 => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_08dc2819b2 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant2_op_net,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant7_op_net,
    rst => logical_y_net_x0,
    en(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant9_op_net,
    rst => relational2_op_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_1a7520a256 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => delay16_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_88fe75e2d4 
  port map (
    clr => '0',
    a => counter3_op_net,
    b => constant10_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
end structural;
-- Generated from Simulink block Receive1/Subsystem/vector_acc7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_acc7 is
  port (
    data_in : in std_logic_vector( 16-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic;
    acc_length : in std_logic_vector( 23-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 32-1 downto 0 )
  );
end receive1_vector_acc7;
architecture structural of receive1_vector_acc7 is 
  signal delay16_q_net : std_logic_vector( 23-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_3_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 16-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 32-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 9-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 24-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 1-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 32-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 32-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_dout_net : std_logic_vector( 32-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal fifo1_empty_net : std_logic;
  signal fifo1_full_net : std_logic;
begin
  data_out <= delay2_q_net;
  cordic_6_0_3_m_axis_dout_tdata_imag_net <= data_in;
  logical_y_net_x0 <= rst;
  cordic_6_0_0_m_axis_dout_tvalid_net <= tvalid_in;
  delay16_q_net <= acc_length;
  clk_net <= clk_1;
  ce_net <= ce_1;
  addsub1 : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 14,
    a_width => 16,
    b_arith => xlSigned,
    b_bin_pt => 14,
    b_width => 32,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 33,
    core_name0 => "receive1_c_addsub_v12_0_i0",
    extra_registers => 1,
    full_s_arith => 2,
    full_s_width => 33,
    latency => 2,
    overflow => 3,
    quantization => 1,
    s_arith => xlSigned,
    s_bin_pt => 14,
    s_width => 32
  )
  port map (
    clr => '0',
    en => "1",
    a => mux1_y_net,
    b => mux2_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_e183f41306 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_6be1581f6a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 24
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => delay19_q_net,
    en => delay21_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  delay18 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant4_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => fifo1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay21 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay21_q_net
  );
  fifo1 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i0",
    data_count_width => 10,
    data_width => 32,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub1_s_net,
    we => constant4_op_net(0),
    re => delay18_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo1_dout_net,
    empty => fifo1_empty_net,
    full => fifo1_full_net
  );
  logical : entity xil_defaultlib.sysgen_logical_9843c561e4 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant1_op_net,
    d1 => cordic_6_0_3_m_axis_dout_tdata_imag_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_82585297eb 
  port map (
    clr => '0',
    sel => mux3_y_net,
    d0 => fifo1_dout_net,
    d1 => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_08dc2819b2 
  port map (
    clr => '0',
    sel(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    d0 => constant2_op_net,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant7_op_net,
    rst => logical_y_net_x0,
    en(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant9_op_net,
    rst => relational2_op_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_1a7520a256 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => delay16_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_88fe75e2d4 
  port map (
    clr => '0',
    a => counter3_op_net,
    b => constant10_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
end structural;
-- Generated from Simulink block Receive1/Subsystem
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_subsystem is
  port (
    rst : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic;
    acc_length : in std_logic_vector( 23-1 downto 0 );
    i0_in : in std_logic_vector( 16-1 downto 0 );
    q0_in : in std_logic_vector( 16-1 downto 0 );
    i1_in : in std_logic_vector( 16-1 downto 0 );
    q1_in : in std_logic_vector( 16-1 downto 0 );
    i2_in : in std_logic_vector( 16-1 downto 0 );
    q2_in : in std_logic_vector( 16-1 downto 0 );
    i3_in : in std_logic_vector( 16-1 downto 0 );
    q3_in : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    tvalid_out : out std_logic_vector( 1-1 downto 0 );
    i0_out : out std_logic_vector( 32-1 downto 0 );
    q0_out : out std_logic_vector( 32-1 downto 0 );
    i1_out : out std_logic_vector( 32-1 downto 0 );
    q1_out : out std_logic_vector( 32-1 downto 0 );
    i2_out : out std_logic_vector( 32-1 downto 0 );
    q2_out : out std_logic_vector( 32-1 downto 0 );
    i3_out : out std_logic_vector( 32-1 downto 0 );
    q3_out : out std_logic_vector( 32-1 downto 0 );
    tvalid_snap : out std_logic_vector( 1-1 downto 0 );
    tvalid_out_eth : out std_logic_vector( 1-1 downto 0 )
  );
end receive1_subsystem;
architecture structural of receive1_subsystem is 
  signal delay2_q_net_x4 : std_logic_vector( 32-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x3 : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net_x6 : std_logic_vector( 32-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net_x3 : std_logic_vector( 1-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 23-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net_x5 : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tvalid_net : std_logic;
  signal cordic_6_0_1_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_3_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal cordic_6_0_3_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
begin
  tvalid_out <= logical1_y_net_x3;
  i0_out <= delay2_q_net_x4;
  q0_out <= delay2_q_net_x3;
  i1_out <= delay2_q_net_x2;
  q1_out <= delay2_q_net_x1;
  i2_out <= delay2_q_net_x0;
  q2_out <= delay2_q_net;
  i3_out <= delay2_q_net_x5;
  q3_out <= delay2_q_net_x6;
  tvalid_snap <= delay1_q_net;
  tvalid_out_eth <= delay4_q_net;
  logical_y_net <= rst;
  cordic_6_0_0_m_axis_dout_tvalid_net <= tvalid_in;
  delay16_q_net <= acc_length;
  cordic_6_0_0_m_axis_dout_tdata_real_net <= i0_in;
  cordic_6_0_0_m_axis_dout_tdata_imag_net <= q0_in;
  cordic_6_0_1_m_axis_dout_tdata_real_net <= i1_in;
  cordic_6_0_1_m_axis_dout_tdata_imag_net <= q1_in;
  cordic_6_0_2_m_axis_dout_tdata_real_net <= i2_in;
  cordic_6_0_2_m_axis_dout_tdata_imag_net <= q2_in;
  cordic_6_0_3_m_axis_dout_tdata_real_net <= i3_in;
  cordic_6_0_3_m_axis_dout_tdata_imag_net <= q3_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  vector_acc : entity xil_defaultlib.receive1_vector_acc 
  port map (
    data_in => cordic_6_0_0_m_axis_dout_tdata_real_net,
    rst => logical_y_net,
    tvalid_in => cordic_6_0_0_m_axis_dout_tvalid_net,
    acc_length => delay16_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tvalid_out => logical1_y_net_x3,
    data_out => delay2_q_net_x4,
    tvalid_snap => delay1_q_net,
    tvalid_out_eth => delay4_q_net
  );
  vector_acc1 : entity xil_defaultlib.receive1_vector_acc1 
  port map (
    data_in => cordic_6_0_0_m_axis_dout_tdata_imag_net,
    rst => logical_y_net,
    tvalid_in => cordic_6_0_0_m_axis_dout_tvalid_net,
    acc_length => delay16_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => delay2_q_net_x3
  );
  vector_acc2 : entity xil_defaultlib.receive1_vector_acc2 
  port map (
    data_in => cordic_6_0_1_m_axis_dout_tdata_real_net,
    rst => logical_y_net,
    tvalid_in => cordic_6_0_0_m_axis_dout_tvalid_net,
    acc_length => delay16_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => delay2_q_net_x2
  );
  vector_acc3 : entity xil_defaultlib.receive1_vector_acc3 
  port map (
    data_in => cordic_6_0_1_m_axis_dout_tdata_imag_net,
    rst => logical_y_net,
    tvalid_in => cordic_6_0_0_m_axis_dout_tvalid_net,
    acc_length => delay16_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => delay2_q_net_x1
  );
  vector_acc4 : entity xil_defaultlib.receive1_vector_acc4 
  port map (
    data_in => cordic_6_0_2_m_axis_dout_tdata_real_net,
    rst => logical_y_net,
    tvalid_in => cordic_6_0_0_m_axis_dout_tvalid_net,
    acc_length => delay16_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => delay2_q_net_x0
  );
  vector_acc5 : entity xil_defaultlib.receive1_vector_acc5 
  port map (
    data_in => cordic_6_0_2_m_axis_dout_tdata_imag_net,
    rst => logical_y_net,
    tvalid_in => cordic_6_0_0_m_axis_dout_tvalid_net,
    acc_length => delay16_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => delay2_q_net
  );
  vector_acc6 : entity xil_defaultlib.receive1_vector_acc6 
  port map (
    data_in => cordic_6_0_3_m_axis_dout_tdata_real_net,
    rst => logical_y_net,
    tvalid_in => cordic_6_0_0_m_axis_dout_tvalid_net,
    acc_length => delay16_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => delay2_q_net_x5
  );
  vector_acc7 : entity xil_defaultlib.receive1_vector_acc7 
  port map (
    data_in => cordic_6_0_3_m_axis_dout_tdata_imag_net,
    rst => logical_y_net,
    tvalid_in => cordic_6_0_0_m_axis_dout_tvalid_net,
    acc_length => delay16_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => delay2_q_net_x6
  );
end structural;
-- Generated from Simulink block Receive1/Vector Concat
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_concat is
  port (
    hi_1 : in std_logic_vector( 27-1 downto 0 );
    lo_1 : in std_logic_vector( 27-1 downto 0 );
    hi_2 : in std_logic_vector( 27-1 downto 0 );
    hi_3 : in std_logic_vector( 27-1 downto 0 );
    hi_4 : in std_logic_vector( 27-1 downto 0 );
    lo_2 : in std_logic_vector( 27-1 downto 0 );
    lo_3 : in std_logic_vector( 27-1 downto 0 );
    lo_4 : in std_logic_vector( 27-1 downto 0 );
    out_1 : out std_logic_vector( 54-1 downto 0 );
    out_2 : out std_logic_vector( 54-1 downto 0 );
    out_3 : out std_logic_vector( 54-1 downto 0 );
    out_4 : out std_logic_vector( 54-1 downto 0 )
  );
end receive1_vector_concat;
architecture structural of receive1_vector_concat is 
  signal reinterpret1_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret0_output_port_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal concat0_y_net : std_logic_vector( 54-1 downto 0 );
  signal reinterpret1_output_port_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 54-1 downto 0 );
  signal reinterpret2_output_port_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 54-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 54-1 downto 0 );
  signal reinterpret3_output_port_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal reinterpret0_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 27-1 downto 0 );
begin
  out_1 <= concat0_y_net;
  out_2 <= concat1_y_net;
  out_3 <= concat2_y_net;
  out_4 <= concat3_y_net;
  reinterpret0_output_port_net_x0 <= hi_1;
  reinterpret0_output_port_net <= lo_1;
  reinterpret1_output_port_net_x0 <= hi_2;
  reinterpret2_output_port_net_x0 <= hi_3;
  reinterpret3_output_port_net_x0 <= hi_4;
  reinterpret1_output_port_net <= lo_2;
  reinterpret2_output_port_net <= lo_3;
  reinterpret3_output_port_net <= lo_4;
  concat0 : entity xil_defaultlib.sysgen_concat_3be02e9b2a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret0_output_port_net_x0,
    in1 => reinterpret0_output_port_net,
    y => concat0_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_3be02e9b2a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net_x0,
    in1 => reinterpret1_output_port_net,
    y => concat1_y_net
  );
  concat2 : entity xil_defaultlib.sysgen_concat_3be02e9b2a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret2_output_port_net_x0,
    in1 => reinterpret2_output_port_net,
    y => concat2_y_net
  );
  concat3 : entity xil_defaultlib.sysgen_concat_3be02e9b2a 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret3_output_port_net_x0,
    in1 => reinterpret3_output_port_net,
    y => concat3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/Vector Constant
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_constant is
  port (
    out1_1 : out std_logic_vector( 16-1 downto 0 );
    out1_2 : out std_logic_vector( 16-1 downto 0 );
    out1_3 : out std_logic_vector( 16-1 downto 0 );
    out1_4 : out std_logic_vector( 16-1 downto 0 )
  );
end receive1_vector_constant;
architecture structural of receive1_vector_constant is 
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant0_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
begin
  out1_1 <= constant0_op_net;
  out1_2 <= constant1_op_net;
  out1_3 <= constant2_op_net;
  out1_4 <= constant3_op_net;
  constant0 : entity xil_defaultlib.sysgen_constant_f0710aac1c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant0_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_f0710aac1c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_f0710aac1c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_f0710aac1c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
end structural;
-- Generated from Simulink block Receive1/Vector Delay
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_delay is
  port (
    d_1 : in std_logic_vector( 16-1 downto 0 );
    d_2 : in std_logic_vector( 16-1 downto 0 );
    d_3 : in std_logic_vector( 16-1 downto 0 );
    d_4 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q_1 : out std_logic_vector( 16-1 downto 0 );
    q_2 : out std_logic_vector( 16-1 downto 0 );
    q_3 : out std_logic_vector( 16-1 downto 0 );
    q_4 : out std_logic_vector( 16-1 downto 0 )
  );
end receive1_vector_delay;
architecture structural of receive1_vector_delay is 
  signal in_re_1_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal in_re_0_net : std_logic_vector( 16-1 downto 0 );
  signal delay0_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal in_re_3_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 16-1 downto 0 );
  signal in_re_2_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
begin
  q_1 <= delay0_q_net;
  q_2 <= delay1_q_net;
  q_3 <= delay2_q_net;
  q_4 <= delay3_q_net;
  in_re_0_net <= d_1;
  in_re_1_net <= d_2;
  in_re_2_net <= d_3;
  in_re_3_net <= d_4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay0 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => in_re_0_net,
    clk => clk_net,
    ce => ce_net,
    q => delay0_q_net
  );
  delay1 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => in_re_1_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => in_re_2_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => in_re_3_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
end structural;
-- Generated from Simulink block Receive1/Vector Delay1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_delay1 is
  port (
    d_1 : in std_logic_vector( 16-1 downto 0 );
    d_2 : in std_logic_vector( 16-1 downto 0 );
    d_3 : in std_logic_vector( 16-1 downto 0 );
    d_4 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    q_1 : out std_logic_vector( 16-1 downto 0 );
    q_2 : out std_logic_vector( 16-1 downto 0 );
    q_3 : out std_logic_vector( 16-1 downto 0 );
    q_4 : out std_logic_vector( 16-1 downto 0 )
  );
end receive1_vector_delay1;
architecture structural of receive1_vector_delay1 is 
  signal delay2_q_net : std_logic_vector( 16-1 downto 0 );
  signal in_im_0_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal in_im_1_net : std_logic_vector( 16-1 downto 0 );
  signal in_im_3_net : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay0_q_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal in_im_2_net : std_logic_vector( 16-1 downto 0 );
begin
  q_1 <= delay0_q_net;
  q_2 <= delay1_q_net;
  q_3 <= delay2_q_net;
  q_4 <= delay3_q_net;
  in_im_0_net <= d_1;
  in_im_1_net <= d_2;
  in_im_2_net <= d_3;
  in_im_3_net <= d_4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay0 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => in_im_0_net,
    clk => clk_net,
    ce => ce_net,
    q => delay0_q_net
  );
  delay1 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => in_im_1_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => in_im_2_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => in_im_3_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
end structural;
-- Generated from Simulink block Receive1/Vector FFT
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_fft is
  port (
    i_re_1 : in std_logic_vector( 16-1 downto 0 );
    i_im_1 : in std_logic_vector( 16-1 downto 0 );
    vi : in std_logic_vector( 1-1 downto 0 );
    si : in std_logic_vector( 11-1 downto 0 );
    i_re_2 : in std_logic_vector( 16-1 downto 0 );
    i_re_3 : in std_logic_vector( 16-1 downto 0 );
    i_re_4 : in std_logic_vector( 16-1 downto 0 );
    i_im_2 : in std_logic_vector( 16-1 downto 0 );
    i_im_3 : in std_logic_vector( 16-1 downto 0 );
    i_im_4 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    o_re_1 : out std_logic_vector( 27-1 downto 0 );
    o_im_1 : out std_logic_vector( 27-1 downto 0 );
    vo : out std_logic;
    o_re_2 : out std_logic_vector( 27-1 downto 0 );
    o_re_3 : out std_logic_vector( 27-1 downto 0 );
    o_re_4 : out std_logic_vector( 27-1 downto 0 );
    o_im_2 : out std_logic_vector( 27-1 downto 0 );
    o_im_3 : out std_logic_vector( 27-1 downto 0 );
    o_im_4 : out std_logic_vector( 27-1 downto 0 )
  );
end receive1_vector_fft;
architecture structural of receive1_vector_fft is 
  signal reinterpret13_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret12_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal test_systolicfft_vhdl_black_box_vo_net : std_logic;
  signal reinterpret9_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret10_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret11_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret14_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal concat0_y_net : std_logic_vector( 32-1 downto 0 );
  signal delay0_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay0_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 32-1 downto 0 );
  signal delay3_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal reinterpret15_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x1 : std_logic_vector( 11-1 downto 0 );
  signal reinterpret0_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 32-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal concat4_y_net : std_logic_vector( 128-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net_x2 : std_logic_vector( 11-1 downto 0 );
  signal delay3_q_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 32-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 27-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal slice10_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice11_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice9_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice8_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice0_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 27-1 downto 0 );
  signal test_systolicfft_vhdl_black_box_so_net : std_logic_vector( 11-1 downto 0 );
  signal test_systolicfft_vhdl_black_box_o_net : std_logic_vector( 216-1 downto 0 );
begin
  o_re_1 <= reinterpret8_output_port_net;
  o_im_1 <= reinterpret12_output_port_net;
  vo <= test_systolicfft_vhdl_black_box_vo_net;
  o_re_2 <= reinterpret9_output_port_net;
  o_re_3 <= reinterpret10_output_port_net;
  o_re_4 <= reinterpret11_output_port_net;
  o_im_2 <= reinterpret13_output_port_net;
  o_im_3 <= reinterpret14_output_port_net;
  o_im_4 <= reinterpret15_output_port_net;
  delay0_q_net_x0 <= i_re_1;
  delay0_q_net <= i_im_1;
  delay1_q_net_x1 <= vi;
  delay2_q_net_x1 <= si;
  delay1_q_net_x0 <= i_re_2;
  delay2_q_net_x0 <= i_re_3;
  delay3_q_net_x0 <= i_re_4;
  delay1_q_net <= i_im_2;
  delay2_q_net <= i_im_3;
  delay3_q_net <= i_im_4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  concat0 : entity xil_defaultlib.sysgen_concat_4deee4c1aa 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret0_output_port_net,
    in1 => reinterpret4_output_port_net,
    y => concat0_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_4deee4c1aa 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret1_output_port_net,
    in1 => reinterpret5_output_port_net,
    y => concat1_y_net
  );
  concat2 : entity xil_defaultlib.sysgen_concat_4deee4c1aa 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret2_output_port_net,
    in1 => reinterpret6_output_port_net,
    y => concat2_y_net
  );
  concat3 : entity xil_defaultlib.sysgen_concat_4deee4c1aa 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => reinterpret3_output_port_net,
    in1 => reinterpret7_output_port_net,
    y => concat3_y_net
  );
  concat4 : entity xil_defaultlib.sysgen_concat_92ee931b91 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => delay5_q_net,
    in1 => delay4_q_net,
    in2 => delay3_q_net_x1,
    in3 => delay2_q_net_x2,
    y => concat4_y_net
  );
  delay : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay1_q_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 11
  )
  port map (
    en => '1',
    rst => '0',
    d => delay2_q_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net_x2
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => concat0_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net_x2
  );
  delay3 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => concat1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net_x1
  );
  delay4 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => concat2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => concat3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  reinterpret0 : entity xil_defaultlib.sysgen_reinterpret_00d7b2b7c7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay0_q_net,
    output_port => reinterpret0_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_00d7b2b7c7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret10 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice6_y_net,
    output_port => reinterpret10_output_port_net
  );
  reinterpret11 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice7_y_net,
    output_port => reinterpret11_output_port_net
  );
  reinterpret12 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice8_y_net,
    output_port => reinterpret12_output_port_net
  );
  reinterpret13 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice9_y_net,
    output_port => reinterpret13_output_port_net
  );
  reinterpret14 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice10_y_net,
    output_port => reinterpret14_output_port_net
  );
  reinterpret15 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice11_y_net,
    output_port => reinterpret15_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_00d7b2b7c7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay2_q_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_00d7b2b7c7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay3_q_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_00d7b2b7c7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay0_q_net_x0,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_00d7b2b7c7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay1_q_net_x0,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_00d7b2b7c7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay2_q_net_x0,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_00d7b2b7c7 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => delay3_q_net_x0,
    output_port => reinterpret7_output_port_net
  );
  reinterpret8 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice4_y_net,
    output_port => reinterpret8_output_port_net
  );
  reinterpret9 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice5_y_net,
    output_port => reinterpret9_output_port_net
  );
  slice0 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 53,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => test_systolicfft_vhdl_black_box_o_net,
    y => slice0_y_net
  );
  slice1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 54,
    new_msb => 107,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => test_systolicfft_vhdl_black_box_o_net,
    y => slice1_y_net
  );
  slice10 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 27,
    new_msb => 53,
    x_width => 54,
    y_width => 27
  )
  port map (
    x => slice2_y_net,
    y => slice10_y_net
  );
  slice11 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 27,
    new_msb => 53,
    x_width => 54,
    y_width => 27
  )
  port map (
    x => slice3_y_net,
    y => slice11_y_net
  );
  slice2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 108,
    new_msb => 161,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => test_systolicfft_vhdl_black_box_o_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 162,
    new_msb => 215,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => test_systolicfft_vhdl_black_box_o_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 26,
    x_width => 54,
    y_width => 27
  )
  port map (
    x => slice0_y_net,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 26,
    x_width => 54,
    y_width => 27
  )
  port map (
    x => slice1_y_net,
    y => slice5_y_net
  );
  slice6 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 26,
    x_width => 54,
    y_width => 27
  )
  port map (
    x => slice2_y_net,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 26,
    x_width => 54,
    y_width => 27
  )
  port map (
    x => slice3_y_net,
    y => slice7_y_net
  );
  slice8 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 27,
    new_msb => 53,
    x_width => 54,
    y_width => 27
  )
  port map (
    x => slice0_y_net,
    y => slice8_y_net
  );
  slice9 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 27,
    new_msb => 53,
    x_width => 54,
    y_width => 27
  )
  port map (
    x => slice1_y_net,
    y => slice9_y_net
  );
  test_systolicfft_vhdl_black_box : entity xil_defaultlib.WRAPPER_VECTOR_FFT_2a6cb64fc6709063645e786e82712a30 
  generic map (
    BRAM_THRESHOLD => 258,
    DSP48E => 2,
    I_high => 0,
    I_low => -15,
    L2N => 11,
    N => 2048,
    O_high => 11,
    O_low => -15,
    SSR => 4,
    W_high => 1,
    W_low => -17
  )
  port map (
    i => concat4_y_net,
    vi => delay_q_net(0),
    si => delay1_q_net_x2,
    CLK => clk_net,
    CE => ce_net,
    o => test_systolicfft_vhdl_black_box_o_net,
    vo => test_systolicfft_vhdl_black_box_vo_net,
    so => test_systolicfft_vhdl_black_box_so_net
  );
end structural;
-- Generated from Simulink block Receive1/Vector Mux
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_mux is
  port (
    sel : in std_logic_vector( 1-1 downto 0 );
    i0_1 : in std_logic_vector( 16-1 downto 0 );
    i1_1 : in std_logic_vector( 27-1 downto 0 );
    i0_2 : in std_logic_vector( 16-1 downto 0 );
    i0_3 : in std_logic_vector( 16-1 downto 0 );
    i0_4 : in std_logic_vector( 16-1 downto 0 );
    i1_2 : in std_logic_vector( 27-1 downto 0 );
    i1_3 : in std_logic_vector( 27-1 downto 0 );
    i1_4 : in std_logic_vector( 27-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    o_1 : out std_logic_vector( 27-1 downto 0 );
    o_2 : out std_logic_vector( 27-1 downto 0 );
    o_3 : out std_logic_vector( 27-1 downto 0 );
    o_4 : out std_logic_vector( 27-1 downto 0 )
  );
end receive1_vector_mux;
architecture structural of receive1_vector_mux is 
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret10_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal clk_net : std_logic;
  signal reinterpret11_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret9_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal ce_net : std_logic;
  signal mux3_y_net : std_logic_vector( 27-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant0_op_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal mux0_y_net : std_logic_vector( 27-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 27-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 27-1 downto 0 );
begin
  o_1 <= mux0_y_net;
  o_2 <= mux1_y_net;
  o_3 <= mux2_y_net;
  o_4 <= mux3_y_net;
  register_q_net <= sel;
  constant0_op_net <= i0_1;
  reinterpret8_output_port_net <= i1_1;
  constant1_op_net <= i0_2;
  constant2_op_net <= i0_3;
  constant3_op_net <= i0_4;
  reinterpret9_output_port_net <= i1_2;
  reinterpret10_output_port_net <= i1_3;
  reinterpret11_output_port_net <= i1_4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mux0 : entity xil_defaultlib.sysgen_mux_f6ef012704 
  port map (
    clr => '0',
    sel => register_q_net,
    d0 => constant0_op_net,
    d1 => reinterpret8_output_port_net,
    clk => clk_net,
    ce => ce_net,
    y => mux0_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_f6ef012704 
  port map (
    clr => '0',
    sel => register_q_net,
    d0 => constant1_op_net,
    d1 => reinterpret9_output_port_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_f6ef012704 
  port map (
    clr => '0',
    sel => register_q_net,
    d0 => constant2_op_net,
    d1 => reinterpret10_output_port_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_f6ef012704 
  port map (
    clr => '0',
    sel => register_q_net,
    d0 => constant3_op_net,
    d1 => reinterpret11_output_port_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/Vector Mux1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_mux1 is
  port (
    sel : in std_logic_vector( 1-1 downto 0 );
    i0_1 : in std_logic_vector( 16-1 downto 0 );
    i1_1 : in std_logic_vector( 27-1 downto 0 );
    i0_2 : in std_logic_vector( 16-1 downto 0 );
    i0_3 : in std_logic_vector( 16-1 downto 0 );
    i0_4 : in std_logic_vector( 16-1 downto 0 );
    i1_2 : in std_logic_vector( 27-1 downto 0 );
    i1_3 : in std_logic_vector( 27-1 downto 0 );
    i1_4 : in std_logic_vector( 27-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    o_1 : out std_logic_vector( 27-1 downto 0 );
    o_2 : out std_logic_vector( 27-1 downto 0 );
    o_3 : out std_logic_vector( 27-1 downto 0 );
    o_4 : out std_logic_vector( 27-1 downto 0 )
  );
end receive1_vector_mux1;
architecture structural of receive1_vector_mux1 is 
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 27-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 27-1 downto 0 );
  signal constant0_op_net : std_logic_vector( 16-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal mux0_y_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret12_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 27-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal reinterpret15_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret13_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret14_output_port_net : std_logic_vector( 27-1 downto 0 );
begin
  o_1 <= mux0_y_net;
  o_2 <= mux1_y_net;
  o_3 <= mux2_y_net;
  o_4 <= mux3_y_net;
  register_q_net <= sel;
  constant0_op_net <= i0_1;
  reinterpret12_output_port_net <= i1_1;
  constant1_op_net <= i0_2;
  constant2_op_net <= i0_3;
  constant3_op_net <= i0_4;
  reinterpret13_output_port_net <= i1_2;
  reinterpret14_output_port_net <= i1_3;
  reinterpret15_output_port_net <= i1_4;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mux0 : entity xil_defaultlib.sysgen_mux_f6ef012704 
  port map (
    clr => '0',
    sel => register_q_net,
    d0 => constant0_op_net,
    d1 => reinterpret12_output_port_net,
    clk => clk_net,
    ce => ce_net,
    y => mux0_y_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_f6ef012704 
  port map (
    clr => '0',
    sel => register_q_net,
    d0 => constant1_op_net,
    d1 => reinterpret13_output_port_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_f6ef012704 
  port map (
    clr => '0',
    sel => register_q_net,
    d0 => constant2_op_net,
    d1 => reinterpret14_output_port_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  mux3 : entity xil_defaultlib.sysgen_mux_f6ef012704 
  port map (
    clr => '0',
    sel => register_q_net,
    d0 => constant3_op_net,
    d1 => reinterpret15_output_port_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/Vector Reinterpret
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_reinterpret is
  port (
    in_1 : in std_logic_vector( 27-1 downto 0 );
    in_2 : in std_logic_vector( 27-1 downto 0 );
    in_3 : in std_logic_vector( 27-1 downto 0 );
    in_4 : in std_logic_vector( 27-1 downto 0 );
    out_1 : out std_logic_vector( 27-1 downto 0 );
    out_2 : out std_logic_vector( 27-1 downto 0 );
    out_3 : out std_logic_vector( 27-1 downto 0 );
    out_4 : out std_logic_vector( 27-1 downto 0 )
  );
end receive1_vector_reinterpret;
architecture structural of receive1_vector_reinterpret is 
  signal mux3_y_net : std_logic_vector( 27-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret0_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal mux0_y_net : std_logic_vector( 27-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 27-1 downto 0 );
begin
  out_1 <= reinterpret0_output_port_net;
  out_2 <= reinterpret1_output_port_net;
  out_3 <= reinterpret2_output_port_net;
  out_4 <= reinterpret3_output_port_net;
  mux0_y_net <= in_1;
  mux1_y_net <= in_2;
  mux2_y_net <= in_3;
  mux3_y_net <= in_4;
  reinterpret0 : entity xil_defaultlib.sysgen_reinterpret_20863df879 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux0_y_net,
    output_port => reinterpret0_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_20863df879 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux1_y_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_20863df879 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux2_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_20863df879 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux3_y_net,
    output_port => reinterpret3_output_port_net
  );
end structural;
-- Generated from Simulink block Receive1/Vector Reinterpret2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_reinterpret2 is
  port (
    in_1 : in std_logic_vector( 27-1 downto 0 );
    in_2 : in std_logic_vector( 27-1 downto 0 );
    in_3 : in std_logic_vector( 27-1 downto 0 );
    in_4 : in std_logic_vector( 27-1 downto 0 );
    out_1 : out std_logic_vector( 27-1 downto 0 );
    out_2 : out std_logic_vector( 27-1 downto 0 );
    out_3 : out std_logic_vector( 27-1 downto 0 );
    out_4 : out std_logic_vector( 27-1 downto 0 )
  );
end receive1_vector_reinterpret2;
architecture structural of receive1_vector_reinterpret2 is 
  signal reinterpret2_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret0_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 27-1 downto 0 );
  signal mux0_y_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 27-1 downto 0 );
begin
  out_1 <= reinterpret0_output_port_net;
  out_2 <= reinterpret1_output_port_net;
  out_3 <= reinterpret2_output_port_net;
  out_4 <= reinterpret3_output_port_net;
  mux0_y_net <= in_1;
  mux1_y_net <= in_2;
  mux2_y_net <= in_3;
  mux3_y_net <= in_4;
  reinterpret0 : entity xil_defaultlib.sysgen_reinterpret_20863df879 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux0_y_net,
    output_port => reinterpret0_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_20863df879 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux1_y_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_20863df879 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux2_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_20863df879 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux3_y_net,
    output_port => reinterpret3_output_port_net
  );
end structural;
-- Generated from Simulink block Receive1/Vector to Scalar
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_vector_to_scalar is
  port (
    i_1 : in std_logic_vector( 54-1 downto 0 );
    i_2 : in std_logic_vector( 54-1 downto 0 );
    i_3 : in std_logic_vector( 54-1 downto 0 );
    i_4 : in std_logic_vector( 54-1 downto 0 );
    o : out std_logic_vector( 216-1 downto 0 )
  );
end receive1_vector_to_scalar;
architecture structural of receive1_vector_to_scalar is 
  signal concat3_y_net : std_logic_vector( 54-1 downto 0 );
  signal concat0_y_net : std_logic_vector( 54-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 54-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 216-1 downto 0 );
  signal concat1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
begin
  o <= concat1_y_net;
  concat0_y_net <= i_1;
  concat1_y_net_x0 <= i_2;
  concat2_y_net <= i_3;
  concat3_y_net <= i_4;
  concat1 : entity xil_defaultlib.sysgen_concat_ec7b83ea15 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => concat3_y_net,
    in1 => concat2_y_net,
    in2 => concat1_y_net_x0,
    in3 => concat0_y_net,
    y => concat1_y_net
  );
end structural;
-- Generated from Simulink block Receive1/beat_dphi0/rst_det
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_rst_det is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end receive1_rst_det;
architecture structural of receive1_rst_det is 
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= logical_y_net;
  delay4_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  inverter : entity xil_defaultlib.sysgen_inverter_07db874ee4 
  port map (
    clr => '0',
    ip => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a74c64cf5a 
  port map (
    clr => '0',
    d0 => logical1_y_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_93613f8b27 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
end structural;
-- Generated from Simulink block Receive1/beat_dphi0
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_beat_dphi0 is
  port (
    w_addr_x0 : in std_logic_vector( 9-1 downto 0 );
    w_data : in std_logic_vector( 16-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    beat_dphi : out std_logic_vector( 18-1 downto 0 )
  );
end receive1_beat_dphi0;
architecture structural of receive1_beat_dphi0 is 
  signal mux2_y_net : std_logic_vector( 16-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal w_beat_dphi_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 18-1 downto 0 );
  signal w_beat_addr_net : std_logic_vector( 9-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal beat_we0_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal delay37_q_net : std_logic_vector( 16-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 9-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay17_q_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 16-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal fifo4_full_net : std_logic;
  signal fifo4_dout_net : std_logic_vector( 16-1 downto 0 );
  signal delay38_q_net : std_logic_vector( 9-1 downto 0 );
  signal fifo4_empty_net : std_logic;
begin
  beat_dphi <= convert2_dout_net;
  w_beat_addr_net <= w_addr_x0;
  w_beat_dphi_net <= w_data;
  beat_we0_net <= we;
  delay4_q_net <= tvalid_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  rst_det : entity xil_defaultlib.receive1_rst_det 
  port map (
    in_x0 => delay4_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => logical_y_net
  );
  addsub : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "receive1_c_addsub_v12_0_i1",
    extra_registers => 1,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => mux2_y_net,
    b => mux1_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_13e1266ced 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  convert2 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 16,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 18,
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
    dout => convert2_dout_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  delay1 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay16 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => beat_we0_net,
    clk => clk_net,
    ce => ce_net,
    q => delay16_q_net
  );
  delay17 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay17_q_net
  );
  delay37 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => w_beat_dphi_net,
    clk => clk_net,
    ce => ce_net,
    q => delay37_q_net
  );
  delay38 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 9
  )
  port map (
    en => '1',
    rst => '0',
    d => w_beat_addr_net,
    clk => clk_net,
    ce => ce_net,
    q => delay38_q_net
  );
  dual_port_ram : entity xil_defaultlib.receive1_xltdpram 
  generic map (
    addr_width_b => 9,
    clocking_mode => "common_clock",
    data_width_b => 16,
    latency => 1,
    mem_init_file => "xpm_746d01_vivado.mem",
    mem_size => 8192,
    mem_type => "block",
    read_reset_a => "0",
    read_reset_b => "0",
    width => 16,
    width_addr => 9,
    write_mode_a => "read_first",
    write_mode_b => "read_first"
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => counter2_op_net,
    dina => constant8_op_net,
    wea => constant3_op_net,
    addrb => delay38_q_net,
    dinb => delay37_q_net,
    web => delay16_q_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  fifo4 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i1",
    data_count_width => 10,
    data_width => 16,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub_s_net,
    we => constant6_op_net(0),
    re => delay17_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo4_dout_net,
    empty => fifo4_empty_net,
    full => fifo4_full_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel => delay1_q_net,
    d0 => constant5_op_net,
    d1 => fifo4_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel => delay1_q_net,
    d0 => constant5_op_net,
    d1 => dual_port_ram_douta_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_365f5c58a4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux1_y_net,
    output_port => reinterpret2_output_port_net
  );
end structural;
-- Generated from Simulink block Receive1/beat_dphi1/rst_det
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_rst_det_x0 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end receive1_rst_det_x0;
architecture structural of receive1_rst_det_x0 is 
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= logical_y_net;
  delay4_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  inverter : entity xil_defaultlib.sysgen_inverter_07db874ee4 
  port map (
    clr => '0',
    ip => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a74c64cf5a 
  port map (
    clr => '0',
    d0 => logical1_y_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_93613f8b27 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
end structural;
-- Generated from Simulink block Receive1/beat_dphi1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_beat_dphi1 is
  port (
    w_addr_x0 : in std_logic_vector( 9-1 downto 0 );
    w_data : in std_logic_vector( 16-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    beat_dphi : out std_logic_vector( 18-1 downto 0 )
  );
end receive1_beat_dphi1;
architecture structural of receive1_beat_dphi1 is 
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal beat_we1_net : std_logic_vector( 1-1 downto 0 );
  signal w_beat_addr_net : std_logic_vector( 9-1 downto 0 );
  signal ce_net : std_logic;
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal w_beat_dphi_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 18-1 downto 0 );
  signal clk_net : std_logic;
  signal counter2_op_net : std_logic_vector( 9-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay17_q_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay37_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay38_q_net : std_logic_vector( 9-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 16-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 16-1 downto 0 );
  signal fifo4_empty_net : std_logic;
  signal fifo4_dout_net : std_logic_vector( 16-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal fifo4_full_net : std_logic;
begin
  beat_dphi <= convert2_dout_net;
  w_beat_addr_net <= w_addr_x0;
  w_beat_dphi_net <= w_data;
  beat_we1_net <= we;
  delay4_q_net <= tvalid_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  rst_det : entity xil_defaultlib.receive1_rst_det_x0 
  port map (
    in_x0 => delay4_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => logical_y_net
  );
  addsub : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "receive1_c_addsub_v12_0_i1",
    extra_registers => 1,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => mux2_y_net,
    b => mux1_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_13e1266ced 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  convert2 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 16,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 18,
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
    dout => convert2_dout_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  delay1 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay16 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => beat_we1_net,
    clk => clk_net,
    ce => ce_net,
    q => delay16_q_net
  );
  delay17 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay17_q_net
  );
  delay37 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => w_beat_dphi_net,
    clk => clk_net,
    ce => ce_net,
    q => delay37_q_net
  );
  delay38 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 9
  )
  port map (
    en => '1',
    rst => '0',
    d => w_beat_addr_net,
    clk => clk_net,
    ce => ce_net,
    q => delay38_q_net
  );
  dual_port_ram : entity xil_defaultlib.receive1_xltdpram 
  generic map (
    addr_width_b => 9,
    clocking_mode => "common_clock",
    data_width_b => 16,
    latency => 1,
    mem_init_file => "xpm_e30571_vivado.mem",
    mem_size => 8192,
    mem_type => "block",
    read_reset_a => "0",
    read_reset_b => "0",
    width => 16,
    width_addr => 9,
    write_mode_a => "read_first",
    write_mode_b => "read_first"
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => counter2_op_net,
    dina => constant8_op_net,
    wea => constant3_op_net,
    addrb => delay38_q_net,
    dinb => delay37_q_net,
    web => delay16_q_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  fifo4 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i1",
    data_count_width => 10,
    data_width => 16,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub_s_net,
    we => constant6_op_net(0),
    re => delay17_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo4_dout_net,
    empty => fifo4_empty_net,
    full => fifo4_full_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel => delay1_q_net,
    d0 => constant5_op_net,
    d1 => fifo4_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel => delay1_q_net,
    d0 => constant5_op_net,
    d1 => dual_port_ram_douta_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_365f5c58a4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux1_y_net,
    output_port => reinterpret2_output_port_net
  );
end structural;
-- Generated from Simulink block Receive1/beat_dphi2/rst_det
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_rst_det_x1 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end receive1_rst_det_x1;
architecture structural of receive1_rst_det_x1 is 
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= logical_y_net;
  delay4_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  inverter : entity xil_defaultlib.sysgen_inverter_07db874ee4 
  port map (
    clr => '0',
    ip => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a74c64cf5a 
  port map (
    clr => '0',
    d0 => logical1_y_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_93613f8b27 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
end structural;
-- Generated from Simulink block Receive1/beat_dphi2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_beat_dphi2 is
  port (
    w_addr_x0 : in std_logic_vector( 9-1 downto 0 );
    w_data : in std_logic_vector( 16-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    beat_dphi : out std_logic_vector( 18-1 downto 0 )
  );
end receive1_beat_dphi2;
architecture structural of receive1_beat_dphi2 is 
  signal mux2_y_net : std_logic_vector( 16-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal beat_we2_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal w_beat_dphi_net : std_logic_vector( 16-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 16-1 downto 0 );
  signal w_beat_addr_net : std_logic_vector( 9-1 downto 0 );
  signal clk_net : std_logic;
  signal convert2_dout_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal delay37_q_net : std_logic_vector( 16-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 9-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay38_q_net : std_logic_vector( 9-1 downto 0 );
  signal delay17_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal fifo4_empty_net : std_logic;
  signal fifo4_full_net : std_logic;
  signal dual_port_ram_douta_net : std_logic_vector( 16-1 downto 0 );
  signal fifo4_dout_net : std_logic_vector( 16-1 downto 0 );
begin
  beat_dphi <= convert2_dout_net;
  w_beat_addr_net <= w_addr_x0;
  w_beat_dphi_net <= w_data;
  beat_we2_net <= we;
  delay4_q_net <= tvalid_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  rst_det : entity xil_defaultlib.receive1_rst_det_x1 
  port map (
    in_x0 => delay4_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => logical_y_net
  );
  addsub : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "receive1_c_addsub_v12_0_i1",
    extra_registers => 1,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => mux2_y_net,
    b => mux1_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_13e1266ced 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  convert2 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 16,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 18,
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
    dout => convert2_dout_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  delay1 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay16 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => beat_we2_net,
    clk => clk_net,
    ce => ce_net,
    q => delay16_q_net
  );
  delay17 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay17_q_net
  );
  delay37 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => w_beat_dphi_net,
    clk => clk_net,
    ce => ce_net,
    q => delay37_q_net
  );
  delay38 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 9
  )
  port map (
    en => '1',
    rst => '0',
    d => w_beat_addr_net,
    clk => clk_net,
    ce => ce_net,
    q => delay38_q_net
  );
  dual_port_ram : entity xil_defaultlib.receive1_xltdpram 
  generic map (
    addr_width_b => 9,
    clocking_mode => "common_clock",
    data_width_b => 16,
    latency => 1,
    mem_init_file => "xpm_53fb4e_vivado.mem",
    mem_size => 8192,
    mem_type => "block",
    read_reset_a => "0",
    read_reset_b => "0",
    width => 16,
    width_addr => 9,
    write_mode_a => "read_first",
    write_mode_b => "read_first"
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => counter2_op_net,
    dina => constant8_op_net,
    wea => constant3_op_net,
    addrb => delay38_q_net,
    dinb => delay37_q_net,
    web => delay16_q_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  fifo4 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i1",
    data_count_width => 10,
    data_width => 16,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub_s_net,
    we => constant6_op_net(0),
    re => delay17_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo4_dout_net,
    empty => fifo4_empty_net,
    full => fifo4_full_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel => delay1_q_net,
    d0 => constant5_op_net,
    d1 => fifo4_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel => delay1_q_net,
    d0 => constant5_op_net,
    d1 => dual_port_ram_douta_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_365f5c58a4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux1_y_net,
    output_port => reinterpret2_output_port_net
  );
end structural;
-- Generated from Simulink block Receive1/beat_dphi3/rst_det
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_rst_det_x2 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end receive1_rst_det_x2;
architecture structural of receive1_rst_det_x2 is 
  signal clk_net : std_logic;
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= logical_y_net;
  delay4_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  inverter : entity xil_defaultlib.sysgen_inverter_07db874ee4 
  port map (
    clr => '0',
    ip => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a74c64cf5a 
  port map (
    clr => '0',
    d0 => logical1_y_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_93613f8b27 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
end structural;
-- Generated from Simulink block Receive1/beat_dphi3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_beat_dphi3 is
  port (
    w_addr_x0 : in std_logic_vector( 9-1 downto 0 );
    w_data : in std_logic_vector( 16-1 downto 0 );
    we : in std_logic_vector( 1-1 downto 0 );
    tvalid_in : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    beat_dphi : out std_logic_vector( 18-1 downto 0 )
  );
end receive1_beat_dphi3;
architecture structural of receive1_beat_dphi3 is 
  signal mux1_y_net : std_logic_vector( 16-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 16-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal w_beat_dphi_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal beat_we3_net : std_logic_vector( 1-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal w_beat_addr_net : std_logic_vector( 9-1 downto 0 );
  signal addsub_s_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 9-1 downto 0 );
  signal delay37_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay17_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 16-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 16-1 downto 0 );
  signal delay38_q_net : std_logic_vector( 9-1 downto 0 );
  signal fifo4_empty_net : std_logic;
  signal fifo4_dout_net : std_logic_vector( 16-1 downto 0 );
  signal fifo4_full_net : std_logic;
begin
  beat_dphi <= convert2_dout_net;
  w_beat_addr_net <= w_addr_x0;
  w_beat_dphi_net <= w_data;
  beat_we3_net <= we;
  delay4_q_net <= tvalid_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  rst_det : entity xil_defaultlib.receive1_rst_det_x2 
  port map (
    in_x0 => delay4_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => logical_y_net
  );
  addsub : entity xil_defaultlib.receive1_xladdsub 
  generic map (
    a_arith => xlUnsigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_has_c_out => 0,
    c_latency => 1,
    c_output_width => 17,
    core_name0 => "receive1_c_addsub_v12_0_i1",
    extra_registers => 1,
    full_s_arith => 1,
    full_s_width => 17,
    latency => 2,
    overflow => 1,
    quantization => 1,
    s_arith => xlUnsigned,
    s_bin_pt => 0,
    s_width => 16
  )
  port map (
    clr => '0',
    en => "1",
    a => mux2_y_net,
    b => mux1_y_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub_s_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_13e1266ced 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_d1480ff572 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  convert2 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 16,
    dout_arith => 2,
    dout_bin_pt => 15,
    dout_width => 18,
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
    dout => convert2_dout_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  delay1 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay16 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => beat_we3_net,
    clk => clk_net,
    ce => ce_net,
    q => delay16_q_net
  );
  delay17 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 508,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => constant6_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay17_q_net
  );
  delay37 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 16
  )
  port map (
    en => '1',
    rst => '0',
    d => w_beat_dphi_net,
    clk => clk_net,
    ce => ce_net,
    q => delay37_q_net
  );
  delay38 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 9
  )
  port map (
    en => '1',
    rst => '0',
    d => w_beat_addr_net,
    clk => clk_net,
    ce => ce_net,
    q => delay38_q_net
  );
  dual_port_ram : entity xil_defaultlib.receive1_xltdpram 
  generic map (
    addr_width_b => 9,
    clocking_mode => "common_clock",
    data_width_b => 16,
    latency => 1,
    mem_init_file => "xpm_3546c8_vivado.mem",
    mem_size => 8192,
    mem_type => "block",
    read_reset_a => "0",
    read_reset_b => "0",
    width => 16,
    width_addr => 9,
    write_mode_a => "read_first",
    write_mode_b => "read_first"
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => counter2_op_net,
    dina => constant8_op_net,
    wea => constant3_op_net,
    addrb => delay38_q_net,
    dinb => delay37_q_net,
    web => delay16_q_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  fifo4 : entity xil_defaultlib.receive1_xlfifogen_u 
  generic map (
    core_name0 => "receive1_fifo_generator_i1",
    data_count_width => 10,
    data_width => 16,
    extra_registers => 1,
    has_ae => 0,
    has_af => 0,
    has_rst => false,
    ignore_din_for_gcd => false,
    percent_full_width => 1
  )
  port map (
    en => '1',
    rst => '0',
    din => addsub_s_net,
    we => constant6_op_net(0),
    re => delay17_q_net(0),
    clk => clk_net,
    ce => ce_net,
    we_ce => ce_net,
    re_ce => ce_net,
    dout => fifo4_dout_net,
    empty => fifo4_empty_net,
    full => fifo4_full_net
  );
  mux1 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel => delay1_q_net,
    d0 => constant5_op_net,
    d1 => fifo4_dout_net,
    clk => clk_net,
    ce => ce_net,
    y => mux1_y_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_56261f5fa8 
  port map (
    clr => '0',
    sel => delay1_q_net,
    d0 => constant5_op_net,
    d1 => dual_port_ram_douta_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_365f5c58a4 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => mux1_y_net,
    output_port => reinterpret2_output_port_net
  );
end structural;
-- Generated from Simulink block Receive1/binSelect/rst_det
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_rst_det_x3 is
  port (
    in_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end receive1_rst_det_x3;
architecture structural of receive1_rst_det_x3 is 
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal clk_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= logical_y_net;
  delay5_q_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  inverter : entity xil_defaultlib.sysgen_inverter_07db874ee4 
  port map (
    clr => '0',
    ip => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a74c64cf5a 
  port map (
    clr => '0',
    d0 => logical1_y_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_93613f8b27 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
end structural;
-- Generated from Simulink block Receive1/binSelect/slice_and_sel
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_slice_and_sel is
  port (
    sel : in std_logic_vector( 2-1 downto 0 );
    data_in : in std_logic_vector( 216-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 54-1 downto 0 )
  );
end receive1_slice_and_sel;
architecture structural of receive1_slice_and_sel is 
  signal delay4_q_net : std_logic_vector( 2-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 216-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal slice_qi_0_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_3_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_2_y_net : std_logic_vector( 54-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_1_y_net : std_logic_vector( 54-1 downto 0 );
begin
  data_out <= mux2_y_net;
  delay4_q_net <= sel;
  dual_port_ram_douta_net <= data_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mux2 : entity xil_defaultlib.sysgen_mux_eb42247e7d 
  port map (
    clr => '0',
    sel => delay4_q_net,
    d0 => slice_qi_0_y_net,
    d1 => slice_qi_1_y_net,
    d2 => slice_qi_2_y_net,
    d3 => slice_qi_3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  slice_qi_0 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 53,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram_douta_net,
    y => slice_qi_0_y_net
  );
  slice_qi_1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 54,
    new_msb => 107,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram_douta_net,
    y => slice_qi_1_y_net
  );
  slice_qi_2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 108,
    new_msb => 161,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram_douta_net,
    y => slice_qi_2_y_net
  );
  slice_qi_3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 162,
    new_msb => 215,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram_douta_net,
    y => slice_qi_3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/binSelect/slice_and_sel1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_slice_and_sel1 is
  port (
    sel : in std_logic_vector( 2-1 downto 0 );
    data_in : in std_logic_vector( 216-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 54-1 downto 0 )
  );
end receive1_slice_and_sel1;
architecture structural of receive1_slice_and_sel1 is 
  signal mux2_y_net : std_logic_vector( 54-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 216-1 downto 0 );
  signal ce_net : std_logic;
  signal slice_qi_1_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_2_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_3_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_0_y_net : std_logic_vector( 54-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 2-1 downto 0 );
  signal clk_net : std_logic;
begin
  data_out <= mux2_y_net;
  delay5_q_net <= sel;
  dual_port_ram_doutb_net <= data_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mux2 : entity xil_defaultlib.sysgen_mux_eb42247e7d 
  port map (
    clr => '0',
    sel => delay5_q_net,
    d0 => slice_qi_0_y_net,
    d1 => slice_qi_1_y_net,
    d2 => slice_qi_2_y_net,
    d3 => slice_qi_3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  slice_qi_0 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 53,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram_doutb_net,
    y => slice_qi_0_y_net
  );
  slice_qi_1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 54,
    new_msb => 107,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram_doutb_net,
    y => slice_qi_1_y_net
  );
  slice_qi_2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 108,
    new_msb => 161,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram_doutb_net,
    y => slice_qi_2_y_net
  );
  slice_qi_3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 162,
    new_msb => 215,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram_doutb_net,
    y => slice_qi_3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/binSelect/slice_and_sel2
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_slice_and_sel2 is
  port (
    sel : in std_logic_vector( 2-1 downto 0 );
    data_in : in std_logic_vector( 216-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 54-1 downto 0 )
  );
end receive1_slice_and_sel2;
architecture structural of receive1_slice_and_sel2 is 
  signal delay6_q_net : std_logic_vector( 2-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 216-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal slice_qi_0_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_2_y_net : std_logic_vector( 54-1 downto 0 );
  signal ce_net : std_logic;
  signal slice_qi_1_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_3_y_net : std_logic_vector( 54-1 downto 0 );
begin
  data_out <= mux2_y_net;
  delay6_q_net <= sel;
  dual_port_ram1_douta_net <= data_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mux2 : entity xil_defaultlib.sysgen_mux_eb42247e7d 
  port map (
    clr => '0',
    sel => delay6_q_net,
    d0 => slice_qi_0_y_net,
    d1 => slice_qi_1_y_net,
    d2 => slice_qi_2_y_net,
    d3 => slice_qi_3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  slice_qi_0 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 53,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram1_douta_net,
    y => slice_qi_0_y_net
  );
  slice_qi_1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 54,
    new_msb => 107,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram1_douta_net,
    y => slice_qi_1_y_net
  );
  slice_qi_2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 108,
    new_msb => 161,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram1_douta_net,
    y => slice_qi_2_y_net
  );
  slice_qi_3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 162,
    new_msb => 215,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram1_douta_net,
    y => slice_qi_3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/binSelect/slice_and_sel3
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_slice_and_sel3 is
  port (
    sel : in std_logic_vector( 2-1 downto 0 );
    data_in : in std_logic_vector( 216-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 54-1 downto 0 )
  );
end receive1_slice_and_sel3;
architecture structural of receive1_slice_and_sel3 is 
  signal slice_qi_0_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_2_y_net : std_logic_vector( 54-1 downto 0 );
  signal ce_net : std_logic;
  signal slice_qi_3_y_net : std_logic_vector( 54-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal slice_qi_1_y_net : std_logic_vector( 54-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 2-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 216-1 downto 0 );
begin
  data_out <= mux2_y_net;
  delay7_q_net <= sel;
  dual_port_ram1_doutb_net <= data_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mux2 : entity xil_defaultlib.sysgen_mux_eb42247e7d 
  port map (
    clr => '0',
    sel => delay7_q_net,
    d0 => slice_qi_0_y_net,
    d1 => slice_qi_1_y_net,
    d2 => slice_qi_2_y_net,
    d3 => slice_qi_3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  slice_qi_0 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 53,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram1_doutb_net,
    y => slice_qi_0_y_net
  );
  slice_qi_1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 54,
    new_msb => 107,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram1_doutb_net,
    y => slice_qi_1_y_net
  );
  slice_qi_2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 108,
    new_msb => 161,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram1_doutb_net,
    y => slice_qi_2_y_net
  );
  slice_qi_3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 162,
    new_msb => 215,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram1_doutb_net,
    y => slice_qi_3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/binSelect/slice_and_sel4
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_slice_and_sel4 is
  port (
    sel : in std_logic_vector( 2-1 downto 0 );
    data_in : in std_logic_vector( 216-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 54-1 downto 0 )
  );
end receive1_slice_and_sel4;
architecture structural of receive1_slice_and_sel4 is 
  signal clk_net : std_logic;
  signal delay4_q_net : std_logic_vector( 2-1 downto 0 );
  signal dual_port_ram2_douta_net : std_logic_vector( 216-1 downto 0 );
  signal slice_qi_2_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_1_y_net : std_logic_vector( 54-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_3_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_0_y_net : std_logic_vector( 54-1 downto 0 );
  signal ce_net : std_logic;
begin
  data_out <= mux2_y_net;
  delay4_q_net <= sel;
  dual_port_ram2_douta_net <= data_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mux2 : entity xil_defaultlib.sysgen_mux_eb42247e7d 
  port map (
    clr => '0',
    sel => delay4_q_net,
    d0 => slice_qi_0_y_net,
    d1 => slice_qi_1_y_net,
    d2 => slice_qi_2_y_net,
    d3 => slice_qi_3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  slice_qi_0 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 53,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram2_douta_net,
    y => slice_qi_0_y_net
  );
  slice_qi_1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 54,
    new_msb => 107,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram2_douta_net,
    y => slice_qi_1_y_net
  );
  slice_qi_2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 108,
    new_msb => 161,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram2_douta_net,
    y => slice_qi_2_y_net
  );
  slice_qi_3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 162,
    new_msb => 215,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram2_douta_net,
    y => slice_qi_3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/binSelect/slice_and_sel5
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_slice_and_sel5 is
  port (
    sel : in std_logic_vector( 2-1 downto 0 );
    data_in : in std_logic_vector( 216-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 54-1 downto 0 )
  );
end receive1_slice_and_sel5;
architecture structural of receive1_slice_and_sel5 is 
  signal slice_qi_2_y_net : std_logic_vector( 54-1 downto 0 );
  signal dual_port_ram2_doutb_net : std_logic_vector( 216-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 54-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 2-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal slice_qi_3_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_1_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_0_y_net : std_logic_vector( 54-1 downto 0 );
begin
  data_out <= mux2_y_net;
  delay5_q_net <= sel;
  dual_port_ram2_doutb_net <= data_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mux2 : entity xil_defaultlib.sysgen_mux_eb42247e7d 
  port map (
    clr => '0',
    sel => delay5_q_net,
    d0 => slice_qi_0_y_net,
    d1 => slice_qi_1_y_net,
    d2 => slice_qi_2_y_net,
    d3 => slice_qi_3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  slice_qi_0 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 53,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram2_doutb_net,
    y => slice_qi_0_y_net
  );
  slice_qi_1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 54,
    new_msb => 107,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram2_doutb_net,
    y => slice_qi_1_y_net
  );
  slice_qi_2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 108,
    new_msb => 161,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram2_doutb_net,
    y => slice_qi_2_y_net
  );
  slice_qi_3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 162,
    new_msb => 215,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram2_doutb_net,
    y => slice_qi_3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/binSelect/slice_and_sel6
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_slice_and_sel6 is
  port (
    sel : in std_logic_vector( 2-1 downto 0 );
    data_in : in std_logic_vector( 216-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 54-1 downto 0 )
  );
end receive1_slice_and_sel6;
architecture structural of receive1_slice_and_sel6 is 
  signal dual_port_ram3_douta_net : std_logic_vector( 216-1 downto 0 );
  signal slice_qi_3_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_2_y_net : std_logic_vector( 54-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 2-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_0_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_1_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
begin
  data_out <= mux2_y_net;
  delay6_q_net <= sel;
  dual_port_ram3_douta_net <= data_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mux2 : entity xil_defaultlib.sysgen_mux_eb42247e7d 
  port map (
    clr => '0',
    sel => delay6_q_net,
    d0 => slice_qi_0_y_net,
    d1 => slice_qi_1_y_net,
    d2 => slice_qi_2_y_net,
    d3 => slice_qi_3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  slice_qi_0 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 53,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram3_douta_net,
    y => slice_qi_0_y_net
  );
  slice_qi_1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 54,
    new_msb => 107,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram3_douta_net,
    y => slice_qi_1_y_net
  );
  slice_qi_2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 108,
    new_msb => 161,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram3_douta_net,
    y => slice_qi_2_y_net
  );
  slice_qi_3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 162,
    new_msb => 215,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram3_douta_net,
    y => slice_qi_3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/binSelect/slice_and_sel7
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_slice_and_sel7 is
  port (
    sel : in std_logic_vector( 2-1 downto 0 );
    data_in : in std_logic_vector( 216-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 54-1 downto 0 )
  );
end receive1_slice_and_sel7;
architecture structural of receive1_slice_and_sel7 is 
  signal delay7_q_net : std_logic_vector( 2-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 54-1 downto 0 );
  signal ce_net : std_logic;
  signal slice_qi_0_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_1_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_3_y_net : std_logic_vector( 54-1 downto 0 );
  signal slice_qi_2_y_net : std_logic_vector( 54-1 downto 0 );
  signal clk_net : std_logic;
  signal dual_port_ram3_doutb_net : std_logic_vector( 216-1 downto 0 );
begin
  data_out <= mux2_y_net;
  delay7_q_net <= sel;
  dual_port_ram3_doutb_net <= data_in;
  clk_net <= clk_1;
  ce_net <= ce_1;
  mux2 : entity xil_defaultlib.sysgen_mux_eb42247e7d 
  port map (
    clr => '0',
    sel => delay7_q_net,
    d0 => slice_qi_0_y_net,
    d1 => slice_qi_1_y_net,
    d2 => slice_qi_2_y_net,
    d3 => slice_qi_3_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net
  );
  slice_qi_0 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 53,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram3_doutb_net,
    y => slice_qi_0_y_net
  );
  slice_qi_1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 54,
    new_msb => 107,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram3_doutb_net,
    y => slice_qi_1_y_net
  );
  slice_qi_2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 108,
    new_msb => 161,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram3_doutb_net,
    y => slice_qi_2_y_net
  );
  slice_qi_3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 162,
    new_msb => 215,
    x_width => 216,
    y_width => 54
  )
  port map (
    x => dual_port_ram3_doutb_net,
    y => slice_qi_3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/binSelect
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_binselect is
  port (
    data_in : in std_logic_vector( 216-1 downto 0 );
    tvalid_in : in std_logic_vector( 1-1 downto 0 );
    bin_sel_addr_x0 : in std_logic_vector( 10-1 downto 0 );
    bin_sel_data0 : in std_logic_vector( 22-1 downto 0 );
    bin_sel_data1_x0 : in std_logic_vector( 22-1 downto 0 );
    bin_sel_we_x0 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    data_out : out std_logic_vector( 216-1 downto 0 )
  );
end receive1_binselect;
architecture structural of receive1_binselect is 
  signal delay19_q_net_x0 : std_logic_vector( 9-1 downto 0 );
  signal delay18_q_net : std_logic_vector( 1-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 10-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 10-1 downto 0 );
  signal counter3_op_net : std_logic_vector( 9-1 downto 0 );
  signal delay16_q_net : std_logic_vector( 22-1 downto 0 );
  signal delay17_q_net_x0 : std_logic_vector( 22-1 downto 0 );
  signal delay8_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay21_q_net : std_logic_vector( 9-1 downto 0 );
  signal top9_slice1_y_net : std_logic_vector( 9-1 downto 0 );
  signal delay22_q_net : std_logic_vector( 216-1 downto 0 );
  signal low2_slice1_y_net : std_logic_vector( 2-1 downto 0 );
  signal delay20_q_net_x0 : std_logic_vector( 9-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal low2_slice_y_net : std_logic_vector( 2-1 downto 0 );
  signal low2_slice2_y_net : std_logic_vector( 2-1 downto 0 );
  signal low2_slice3_y_net : std_logic_vector( 2-1 downto 0 );
  signal top9_slice3_y_net : std_logic_vector( 9-1 downto 0 );
  signal mux5_y_net : std_logic_vector( 9-1 downto 0 );
  signal mux7_y_net : std_logic_vector( 9-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
  signal mux6_y_net : std_logic_vector( 9-1 downto 0 );
  signal mux8_y_net : std_logic_vector( 9-1 downto 0 );
  signal binselectram_douta_net : std_logic_vector( 22-1 downto 0 );
  signal top9_slice2_y_net : std_logic_vector( 9-1 downto 0 );
  signal top9_slice_y_net : std_logic_vector( 9-1 downto 0 );
  signal addr0_slice_y_net : std_logic_vector( 11-1 downto 0 );
  signal addr1_slice_y_net : std_logic_vector( 11-1 downto 0 );
  signal addr3_slice_y_net : std_logic_vector( 11-1 downto 0 );
  signal binselectram_doutb_net : std_logic_vector( 22-1 downto 0 );
  signal addr2_slice_y_net : std_logic_vector( 11-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 2-1 downto 0 );
  signal dual_port_ram1_douta_net : std_logic_vector( 216-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 54-1 downto 0 );
  signal delay6_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 2-1 downto 0 );
  signal dual_port_ram3_douta_net : std_logic_vector( 216-1 downto 0 );
  signal dual_port_ram3_doutb_net : std_logic_vector( 216-1 downto 0 );
  signal mux2_y_net_x2 : std_logic_vector( 54-1 downto 0 );
  signal accumulator1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal mux2_y_net_x4 : std_logic_vector( 54-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal dual_port_ram1_doutb_net : std_logic_vector( 216-1 downto 0 );
  signal concat1_y_net_x0 : std_logic_vector( 216-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 22-1 downto 0 );
  signal delay5_q_net_x0 : std_logic_vector( 2-1 downto 0 );
  signal dual_port_ram_doutb_net : std_logic_vector( 216-1 downto 0 );
  signal mux2_y_net_x1 : std_logic_vector( 54-1 downto 0 );
  signal mux2_y_net_x5 : std_logic_vector( 54-1 downto 0 );
  signal dual_port_ram2_douta_net : std_logic_vector( 216-1 downto 0 );
  signal delay17_q_net : std_logic_vector( 10-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 22-1 downto 0 );
  signal delay20_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal mux2_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal ce_net : std_logic;
  signal mux2_y_net_x6 : std_logic_vector( 54-1 downto 0 );
  signal addsub1_s_net : std_logic_vector( 10-1 downto 0 );
  signal mux2_y_net_x7 : std_logic_vector( 216-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 10-1 downto 0 );
  signal dual_port_ram2_doutb_net : std_logic_vector( 216-1 downto 0 );
  signal mux2_y_net_x3 : std_logic_vector( 54-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 10-1 downto 0 );
  signal dual_port_ram_douta_net : std_logic_vector( 216-1 downto 0 );
  signal constant9_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 216-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 216-1 downto 0 );
  signal constant16_op_net : std_logic_vector( 216-1 downto 0 );
  signal constant11_op_net : std_logic_vector( 1-1 downto 0 );
  signal concat_y_net : std_logic_vector( 216-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 216-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 9-1 downto 0 );
  signal constant7_op_net : std_logic_vector( 216-1 downto 0 );
  signal constant8_op_net : std_logic_vector( 1-1 downto 0 );
  signal constant10_op_net : std_logic_vector( 1-1 downto 0 );
begin
  data_out <= mux2_y_net_x7;
  concat1_y_net_x0 <= data_in;
  delay5_q_net <= tvalid_in;
  delay17_q_net <= bin_sel_addr_x0;
  delay19_q_net <= bin_sel_data0;
  delay6_q_net <= bin_sel_data1_x0;
  delay20_q_net <= bin_sel_we_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  rst_det : entity xil_defaultlib.receive1_rst_det_x3 
  port map (
    in_x0 => delay5_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => logical_y_net
  );
  slice_and_sel : entity xil_defaultlib.receive1_slice_and_sel 
  port map (
    sel => delay4_q_net,
    data_in => dual_port_ram_douta_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => mux2_y_net_x6
  );
  slice_and_sel1 : entity xil_defaultlib.receive1_slice_and_sel1 
  port map (
    sel => delay5_q_net_x0,
    data_in => dual_port_ram_doutb_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => mux2_y_net_x5
  );
  slice_and_sel2 : entity xil_defaultlib.receive1_slice_and_sel2 
  port map (
    sel => delay6_q_net_x0,
    data_in => dual_port_ram1_douta_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => mux2_y_net_x4
  );
  slice_and_sel3 : entity xil_defaultlib.receive1_slice_and_sel3 
  port map (
    sel => delay7_q_net,
    data_in => dual_port_ram1_doutb_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => mux2_y_net
  );
  slice_and_sel4 : entity xil_defaultlib.receive1_slice_and_sel4 
  port map (
    sel => delay4_q_net,
    data_in => dual_port_ram2_douta_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => mux2_y_net_x3
  );
  slice_and_sel5 : entity xil_defaultlib.receive1_slice_and_sel5 
  port map (
    sel => delay5_q_net_x0,
    data_in => dual_port_ram2_doutb_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => mux2_y_net_x2
  );
  slice_and_sel6 : entity xil_defaultlib.receive1_slice_and_sel6 
  port map (
    sel => delay6_q_net_x0,
    data_in => dual_port_ram3_douta_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => mux2_y_net_x1
  );
  slice_and_sel7 : entity xil_defaultlib.receive1_slice_and_sel7 
  port map (
    sel => delay7_q_net,
    data_in => dual_port_ram3_doutb_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => mux2_y_net_x0
  );
  accumulator1 : entity xil_defaultlib.sysgen_accum_2d2871b2cc 
  port map (
    clr => '0',
    b => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => accumulator1_q_net
  );
  addsub1 : entity xil_defaultlib.sysgen_addsub_727ad2ff47 
  port map (
    clr => '0',
    a => mux3_y_net,
    b => constant5_op_net,
    clk => clk_net,
    ce => ce_net,
    s => addsub1_s_net
  );
  concat : entity xil_defaultlib.sysgen_concat_ec7b83ea15 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => mux2_y_net,
    in1 => mux2_y_net_x4,
    in2 => mux2_y_net_x5,
    in3 => mux2_y_net_x6,
    y => concat_y_net
  );
  concat1 : entity xil_defaultlib.sysgen_concat_ec7b83ea15 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    in0 => mux2_y_net_x0,
    in1 => mux2_y_net_x1,
    in2 => mux2_y_net_x2,
    in3 => mux2_y_net_x3,
    y => concat1_y_net
  );
  constant10 : entity xil_defaultlib.sysgen_constant_13e1266ced 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant10_op_net
  );
  constant11 : entity xil_defaultlib.sysgen_constant_13e1266ced 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant11_op_net
  );
  constant16 : entity xil_defaultlib.sysgen_constant_801b580f80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant16_op_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_8ecae0cb4f 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_801b580f80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_4d7dc07cac 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  constant6 : entity xil_defaultlib.sysgen_constant_801b580f80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  constant7 : entity xil_defaultlib.sysgen_constant_801b580f80 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant7_op_net
  );
  constant8 : entity xil_defaultlib.sysgen_constant_13e1266ced 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant8_op_net
  );
  constant9 : entity xil_defaultlib.sysgen_constant_13e1266ced 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant9_op_net
  );
  convert1 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 1,
    din_arith => 1,
    din_bin_pt => 0,
    din_width => 1,
    dout_arith => 1,
    dout_bin_pt => 0,
    dout_width => 1,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => accumulator1_q_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  counter2 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i3",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  counter3 : entity xil_defaultlib.receive1_xlcounter_free 
  generic map (
    core_name0 => "receive1_c_counter_binary_v12_0_i2",
    op_arith => xlUnsigned,
    op_width => 9
  )
  port map (
    clr => '0',
    rst => logical_y_net,
    en => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter3_op_net
  );
  delay1 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => mux3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay16 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 22
  )
  port map (
    en => '1',
    rst => '0',
    d => delay19_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay16_q_net
  );
  delay17 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 22
  )
  port map (
    en => '1',
    rst => '0',
    d => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay17_q_net_x0
  );
  delay18 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    q => delay18_q_net
  );
  delay19 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 3,
    reg_retiming => 0,
    reset => 0,
    width => 9
  )
  port map (
    en => '1',
    rst => '0',
    d => counter3_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net_x0
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay20_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay20 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 9
  )
  port map (
    en => '1',
    rst => '0',
    d => top9_slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay20_q_net_x0
  );
  delay21 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 9
  )
  port map (
    en => '1',
    rst => '0',
    d => top9_slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay21_q_net
  );
  delay22 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 4,
    reg_retiming => 0,
    reset => 0,
    width => 216
  )
  port map (
    en => '1',
    rst => '0',
    d => concat1_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay22_q_net
  );
  delay3 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay20_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 2
  )
  port map (
    en => '1',
    rst => '0',
    d => low2_slice_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 2
  )
  port map (
    en => '1',
    rst => '0',
    d => low2_slice1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net_x0
  );
  delay6 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 2
  )
  port map (
    en => '1',
    rst => '0',
    d => low2_slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net_x0
  );
  delay7 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 2
  )
  port map (
    en => '1',
    rst => '0',
    d => low2_slice3_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
  delay8 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay18_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay8_q_net
  );
  dual_port_ram : entity xil_defaultlib.receive1_xltdpram 
  generic map (
    addr_width_b => 9,
    clocking_mode => "common_clock",
    data_width_b => 216,
    latency => 1,
    mem_init_file => "xpm_f6cc85_vivado.mem",
    mem_size => 110592,
    mem_type => "block",
    read_reset_a => "0",
    read_reset_b => "0",
    width => 216,
    width_addr => 9,
    write_mode_a => "read_first",
    write_mode_b => "read_first"
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => mux5_y_net,
    dina => delay22_q_net,
    wea => delay18_q_net,
    addrb => delay20_q_net_x0,
    dinb => constant16_op_net,
    web => constant8_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram_douta_net,
    doutb => dual_port_ram_doutb_net
  );
  dual_port_ram1 : entity xil_defaultlib.receive1_xltdpram 
  generic map (
    addr_width_b => 9,
    clocking_mode => "common_clock",
    data_width_b => 216,
    latency => 1,
    mem_init_file => "xpm_f6cc85_vivado.mem",
    mem_size => 110592,
    mem_type => "block",
    read_reset_a => "0",
    read_reset_b => "0",
    width => 216,
    width_addr => 9,
    write_mode_a => "read_first",
    write_mode_b => "read_first"
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => mux6_y_net,
    dina => delay22_q_net,
    wea => delay18_q_net,
    addrb => delay21_q_net,
    dinb => constant4_op_net,
    web => constant9_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram1_douta_net,
    doutb => dual_port_ram1_doutb_net
  );
  dual_port_ram2 : entity xil_defaultlib.receive1_xltdpram 
  generic map (
    addr_width_b => 9,
    clocking_mode => "common_clock",
    data_width_b => 216,
    latency => 1,
    mem_init_file => "xpm_f6cc85_vivado.mem",
    mem_size => 110592,
    mem_type => "block",
    read_reset_a => "0",
    read_reset_b => "0",
    width => 216,
    width_addr => 9,
    write_mode_a => "read_first",
    write_mode_b => "read_first"
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => mux7_y_net,
    dina => delay22_q_net,
    wea => inverter2_op_net,
    addrb => delay20_q_net_x0,
    dinb => constant6_op_net,
    web => constant10_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram2_douta_net,
    doutb => dual_port_ram2_doutb_net
  );
  dual_port_ram3 : entity xil_defaultlib.receive1_xltdpram 
  generic map (
    addr_width_b => 9,
    clocking_mode => "common_clock",
    data_width_b => 216,
    latency => 1,
    mem_init_file => "xpm_f6cc85_vivado.mem",
    mem_size => 110592,
    mem_type => "block",
    read_reset_a => "0",
    read_reset_b => "0",
    width => 216,
    width_addr => 9,
    write_mode_a => "read_first",
    write_mode_b => "read_first"
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => mux8_y_net,
    dina => delay22_q_net,
    wea => inverter2_op_net,
    addrb => delay21_q_net,
    dinb => constant7_op_net,
    web => constant11_op_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => dual_port_ram3_douta_net,
    doutb => dual_port_ram3_doutb_net
  );
  inverter2 : entity xil_defaultlib.sysgen_inverter_07db874ee4 
  port map (
    clr => '0',
    ip => convert1_dout_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  mux2 : entity xil_defaultlib.sysgen_mux_9a1dd83c2e 
  port map (
    clr => '0',
    sel => delay8_q_net,
    d0 => concat_y_net,
    d1 => concat1_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux2_y_net_x7
  );
  mux3 : entity xil_defaultlib.sysgen_mux_137b96540a 
  port map (
    clr => '0',
    sel => delay20_q_net,
    d0 => counter2_op_net,
    d1 => delay17_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux3_y_net
  );
  mux5 : entity xil_defaultlib.sysgen_mux_1fda2d6cfb 
  port map (
    clr => '0',
    sel => convert1_dout_net,
    d0 => top9_slice_y_net,
    d1 => delay19_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => mux5_y_net
  );
  mux6 : entity xil_defaultlib.sysgen_mux_1fda2d6cfb 
  port map (
    clr => '0',
    sel => convert1_dout_net,
    d0 => top9_slice2_y_net,
    d1 => delay19_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    y => mux6_y_net
  );
  mux7 : entity xil_defaultlib.sysgen_mux_1fda2d6cfb 
  port map (
    clr => '0',
    sel => convert1_dout_net,
    d0 => delay19_q_net_x0,
    d1 => top9_slice_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux7_y_net
  );
  mux8 : entity xil_defaultlib.sysgen_mux_1fda2d6cfb 
  port map (
    clr => '0',
    sel => convert1_dout_net,
    d0 => delay19_q_net_x0,
    d1 => top9_slice2_y_net,
    clk => clk_net,
    ce => ce_net,
    y => mux8_y_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_637c6770d1 
  port map (
    clr => '0',
    a => counter3_op_net,
    b => constant3_op_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  addr0_slice : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 10,
    x_width => 22,
    y_width => 11
  )
  port map (
    x => binselectram_douta_net,
    y => addr0_slice_y_net
  );
  addr1_slice : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 11,
    new_msb => 21,
    x_width => 22,
    y_width => 11
  )
  port map (
    x => binselectram_douta_net,
    y => addr1_slice_y_net
  );
  addr2_slice : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 10,
    x_width => 22,
    y_width => 11
  )
  port map (
    x => binselectram_doutb_net,
    y => addr2_slice_y_net
  );
  addr3_slice : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 11,
    new_msb => 21,
    x_width => 22,
    y_width => 11
  )
  port map (
    x => binselectram_doutb_net,
    y => addr3_slice_y_net
  );
  binselectram : entity xil_defaultlib.receive1_xltdpram 
  generic map (
    addr_width_b => 10,
    clocking_mode => "common_clock",
    data_width_b => 22,
    latency => 1,
    mem_init_file => "xpm_18f778_vivado.mem",
    mem_size => 22528,
    mem_type => "block",
    read_reset_a => "0",
    read_reset_b => "0",
    width => 22,
    width_addr => 10,
    write_mode_a => "read_first",
    write_mode_b => "read_first"
  )
  port map (
    ena => "1",
    enb => "1",
    rsta => "0",
    rstb => "0",
    addra => delay1_q_net,
    dina => delay16_q_net,
    wea => delay2_q_net,
    addrb => addsub1_s_net,
    dinb => delay17_q_net_x0,
    web => delay3_q_net,
    a_clk => clk_net,
    a_ce => ce_net,
    b_clk => clk_net,
    b_ce => ce_net,
    douta => binselectram_douta_net,
    doutb => binselectram_doutb_net
  );
  low2_slice : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 11,
    y_width => 2
  )
  port map (
    x => addr0_slice_y_net,
    y => low2_slice_y_net
  );
  low2_slice1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 11,
    y_width => 2
  )
  port map (
    x => addr1_slice_y_net,
    y => low2_slice1_y_net
  );
  low2_slice2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 11,
    y_width => 2
  )
  port map (
    x => addr2_slice_y_net,
    y => low2_slice2_y_net
  );
  low2_slice3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 1,
    x_width => 11,
    y_width => 2
  )
  port map (
    x => addr3_slice_y_net,
    y => low2_slice3_y_net
  );
  top9_slice : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 10,
    x_width => 11,
    y_width => 9
  )
  port map (
    x => addr0_slice_y_net,
    y => top9_slice_y_net
  );
  top9_slice1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 10,
    x_width => 11,
    y_width => 9
  )
  port map (
    x => addr1_slice_y_net,
    y => top9_slice1_y_net
  );
  top9_slice2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 10,
    x_width => 11,
    y_width => 9
  )
  port map (
    x => addr2_slice_y_net,
    y => top9_slice2_y_net
  );
  top9_slice3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 2,
    new_msb => 10,
    x_width => 11,
    y_width => 9
  )
  port map (
    x => addr3_slice_y_net,
    y => top9_slice3_y_net
  );
end structural;
-- Generated from Simulink block Receive1/in_im
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_in_im is
  port (
    in_im_0 : in std_logic_vector( 16-1 downto 0 );
    in_im_1 : in std_logic_vector( 16-1 downto 0 );
    in_im_2 : in std_logic_vector( 16-1 downto 0 );
    in_im_3 : in std_logic_vector( 16-1 downto 0 )
  );
end receive1_in_im;
architecture structural of receive1_in_im is 
  signal in_im_1_net : std_logic_vector( 16-1 downto 0 );
  signal in_im_0_net : std_logic_vector( 16-1 downto 0 );
  signal in_im_3_net : std_logic_vector( 16-1 downto 0 );
  signal in_im_2_net : std_logic_vector( 16-1 downto 0 );
begin
  in_im_0_net <= in_im_0;
  in_im_1_net <= in_im_1;
  in_im_2_net <= in_im_2;
  in_im_3_net <= in_im_3;
end structural;
-- Generated from Simulink block Receive1/in_re
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_in_re is
  port (
    in_re_0 : in std_logic_vector( 16-1 downto 0 );
    in_re_1 : in std_logic_vector( 16-1 downto 0 );
    in_re_2 : in std_logic_vector( 16-1 downto 0 );
    in_re_3 : in std_logic_vector( 16-1 downto 0 )
  );
end receive1_in_re;
architecture structural of receive1_in_re is 
  signal in_re_1_net : std_logic_vector( 16-1 downto 0 );
  signal in_re_3_net : std_logic_vector( 16-1 downto 0 );
  signal in_re_0_net : std_logic_vector( 16-1 downto 0 );
  signal in_re_2_net : std_logic_vector( 16-1 downto 0 );
begin
  in_re_0_net <= in_re_0;
  in_re_1_net <= in_re_1;
  in_re_2_net <= in_re_2;
  in_re_3_net <= in_re_3;
end structural;
-- Generated from Simulink block Receive1/rst_det
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_rst_det_x4 is
  port (
    in_x0 : in std_logic;
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out_x0 : out std_logic_vector( 1-1 downto 0 )
  );
end receive1_rst_det_x4;
architecture structural of receive1_rst_det_x4 is 
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tvalid_net : std_logic;
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
begin
  out_x0 <= logical_y_net;
  cordic_6_0_0_m_axis_dout_tvalid_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  inverter : entity xil_defaultlib.sysgen_inverter_07db874ee4 
  port map (
    clr => '0',
    ip(0) => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_a74c64cf5a 
  port map (
    clr => '0',
    d0 => logical1_y_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_93613f8b27 
  port map (
    clr => '0',
    d0 => inverter_op_net,
    d1 => register_q_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  register_x0 : entity xil_defaultlib.receive1_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    en => "1",
    rst => "0",
    d => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
end structural;
-- Generated from Simulink block Receive1_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_struct is
  port (
    acc_length : in std_logic_vector( 23-1 downto 0 );
    beat_we0 : in std_logic_vector( 1-1 downto 0 );
    beat_we1 : in std_logic_vector( 1-1 downto 0 );
    beat_we2 : in std_logic_vector( 1-1 downto 0 );
    beat_we3 : in std_logic_vector( 1-1 downto 0 );
    binsel_we : in std_logic_vector( 1-1 downto 0 );
    fft_scale : in std_logic_vector( 11-1 downto 0 );
    in_tvalid : in std_logic_vector( 1-1 downto 0 );
    w_beat_addr : in std_logic_vector( 9-1 downto 0 );
    w_beat_dphi : in std_logic_vector( 16-1 downto 0 );
    w_binsel_addr : in std_logic_vector( 10-1 downto 0 );
    w_binsel_data0 : in std_logic_vector( 22-1 downto 0 );
    w_binsel_data1 : in std_logic_vector( 22-1 downto 0 );
    in_im_0 : in std_logic_vector( 16-1 downto 0 );
    in_im_1 : in std_logic_vector( 16-1 downto 0 );
    in_im_2 : in std_logic_vector( 16-1 downto 0 );
    in_im_3 : in std_logic_vector( 16-1 downto 0 );
    in_re_0 : in std_logic_vector( 16-1 downto 0 );
    in_re_1 : in std_logic_vector( 16-1 downto 0 );
    in_re_2 : in std_logic_vector( 16-1 downto 0 );
    in_re_3 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    acc_tvalid : out std_logic_vector( 1-1 downto 0 );
    acc_tvalid_eth : out std_logic_vector( 1-1 downto 0 );
    snap_i0 : out std_logic_vector( 32-1 downto 0 );
    snap_i1 : out std_logic_vector( 32-1 downto 0 );
    snap_i2 : out std_logic_vector( 32-1 downto 0 );
    snap_i3 : out std_logic_vector( 32-1 downto 0 );
    snap_q0 : out std_logic_vector( 32-1 downto 0 );
    snap_q1 : out std_logic_vector( 32-1 downto 0 );
    snap_q2 : out std_logic_vector( 32-1 downto 0 );
    snap_q3 : out std_logic_vector( 32-1 downto 0 );
    snap_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end receive1_struct;
architecture structural of receive1_struct is 
  signal beat_we3_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net_x4 : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net_x6 : std_logic_vector( 32-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal binsel_we_net : std_logic_vector( 1-1 downto 0 );
  signal fft_scale_net : std_logic_vector( 11-1 downto 0 );
  signal in_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net_x2 : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net_x5 : std_logic_vector( 32-1 downto 0 );
  signal acc_length_net : std_logic_vector( 23-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 1-1 downto 0 );
  signal beat_we2_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net_x3 : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net_x1 : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net_x8 : std_logic_vector( 32-1 downto 0 );
  signal delay2_q_net_x9 : std_logic_vector( 32-1 downto 0 );
  signal beat_we0_net : std_logic_vector( 1-1 downto 0 );
  signal beat_we1_net : std_logic_vector( 1-1 downto 0 );
  signal cordic_6_0_3_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal concat2_y_net : std_logic_vector( 54-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret0_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret1_output_port_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal in_re_3_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal in_re_2_net : std_logic_vector( 16-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal in_im_1_net : std_logic_vector( 16-1 downto 0 );
  signal in_re_1_net : std_logic_vector( 16-1 downto 0 );
  signal in_im_2_net : std_logic_vector( 16-1 downto 0 );
  signal in_im_3_net : std_logic_vector( 16-1 downto 0 );
  signal w_beat_addr_net : std_logic_vector( 9-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tvalid_net : std_logic;
  signal delay16_q_net : std_logic_vector( 23-1 downto 0 );
  signal concat1_y_net_x0 : std_logic_vector( 54-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_0_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal constant3_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal in_im_0_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal w_binsel_data1_net : std_logic_vector( 22-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_real_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal cordic_6_0_3_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal concat0_y_net : std_logic_vector( 54-1 downto 0 );
  signal constant6_op_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal concat3_y_net : std_logic_vector( 54-1 downto 0 );
  signal constant0_op_net : std_logic_vector( 16-1 downto 0 );
  signal constant2_op_net : std_logic_vector( 16-1 downto 0 );
  signal delay0_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal delay1_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal in_re_0_net : std_logic_vector( 16-1 downto 0 );
  signal w_beat_dphi_net : std_logic_vector( 16-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret0_output_port_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal w_binsel_addr_net : std_logic_vector( 10-1 downto 0 );
  signal w_binsel_data0_net : std_logic_vector( 22-1 downto 0 );
  signal reinterpret2_output_port_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tdata_imag_net : std_logic_vector( 16-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal convert2_dout_net_x3 : std_logic_vector( 18-1 downto 0 );
  signal reinterpret13_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal delay19_q_net : std_logic_vector( 22-1 downto 0 );
  signal mux1_y_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret12_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay4_q_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret8_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 16-1 downto 0 );
  signal mux1_y_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal delay1_q_net_x2 : std_logic_vector( 1-1 downto 0 );
  signal reinterpret15_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal mux2_y_net_x1 : std_logic_vector( 216-1 downto 0 );
  signal delay2_q_net_x7 : std_logic_vector( 11-1 downto 0 );
  signal convert2_dout_net_x0 : std_logic_vector( 18-1 downto 0 );
  signal mux2_y_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal tvalid : std_logic;
  signal mux0_y_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal convert2_dout_net_x2 : std_logic_vector( 18-1 downto 0 );
  signal delay17_q_net : std_logic_vector( 10-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 22-1 downto 0 );
  signal data : std_logic_vector( 18-1 downto 0 );
  signal test_systolicfft_vhdl_black_box_vo_net : std_logic;
  signal reinterpret14_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal mux2_y_net : std_logic_vector( 27-1 downto 0 );
  signal delay20_q_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret11_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal convert2_dout_net_x1 : std_logic_vector( 18-1 downto 0 );
  signal delay0_q_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret10_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal mux3_y_net_x0 : std_logic_vector( 27-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 18-1 downto 0 );
  signal cordic_6_0_1_m_axis_dout_tvalid_net : std_logic;
  signal mux0_y_net : std_logic_vector( 27-1 downto 0 );
  signal mux3_y_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret9_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 18-1 downto 0 );
  signal delay3_q_net_x0 : std_logic_vector( 16-1 downto 0 );
  signal concat1_y_net : std_logic_vector( 216-1 downto 0 );
  signal reinterpret3_output_port_net_x1 : std_logic_vector( 27-1 downto 0 );
  signal cordic_6_0_2_m_axis_dout_tvalid_net : std_logic;
  signal reinterpret_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal convert8_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 18-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret1_output_port_net_x1 : std_logic_vector( 27-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 18-1 downto 0 );
  signal reinterpret2_output_port_net_x1 : std_logic_vector( 27-1 downto 0 );
  signal cordic_6_0_3_m_axis_dout_tvalid_net : std_logic;
  signal reinterpret4_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 27-1 downto 0 );
  signal slice_i1_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice_i2_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice_q1_y_net : std_logic_vector( 27-1 downto 0 );
  signal delay3_q_net_x1 : std_logic_vector( 1-1 downto 0 );
  signal slice_q2_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice_q0_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice_i0_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice_q3_y_net : std_logic_vector( 27-1 downto 0 );
  signal slice_i3_y_net : std_logic_vector( 27-1 downto 0 );
begin
  acc_length_net <= acc_length;
  acc_tvalid <= logical1_y_net;
  acc_tvalid_eth <= delay4_q_net;
  beat_we0_net <= beat_we0;
  beat_we1_net <= beat_we1;
  beat_we2_net <= beat_we2;
  beat_we3_net <= beat_we3;
  binsel_we_net <= binsel_we;
  fft_scale_net <= fft_scale;
  in_tvalid_net <= in_tvalid;
  snap_i0 <= delay2_q_net_x8;
  snap_i1 <= delay2_q_net_x9;
  snap_i2 <= delay2_q_net_x4;
  snap_i3 <= delay2_q_net_x2;
  snap_q0 <= delay2_q_net_x6;
  snap_q1 <= delay2_q_net_x5;
  snap_q2 <= delay2_q_net_x3;
  snap_q3 <= delay2_q_net_x1;
  snap_tvalid <= delay1_q_net_x1;
  w_beat_addr_net <= w_beat_addr;
  w_beat_dphi_net <= w_beat_dphi;
  w_binsel_addr_net <= w_binsel_addr;
  w_binsel_data0_net <= w_binsel_data0;
  w_binsel_data1_net <= w_binsel_data1;
  in_im_0_net <= in_im_0;
  in_im_1_net <= in_im_1;
  in_im_2_net <= in_im_2;
  in_im_3_net <= in_im_3;
  in_re_0_net <= in_re_0;
  in_re_1_net <= in_re_1;
  in_re_2_net <= in_re_2;
  in_re_3_net <= in_re_3;
  clk_net <= clk_1;
  ce_net <= ce_1;
  x0001 : entity xil_defaultlib.receive1_0001 
  port map (
    rst => constant1_op_net_x0,
    en => constant6_op_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => register_q_net
  );
  subsystem : entity xil_defaultlib.receive1_subsystem 
  port map (
    rst => logical_y_net,
    tvalid_in => cordic_6_0_0_m_axis_dout_tvalid_net,
    acc_length => delay16_q_net,
    i0_in => cordic_6_0_0_m_axis_dout_tdata_real_net,
    q0_in => cordic_6_0_0_m_axis_dout_tdata_imag_net,
    i1_in => cordic_6_0_1_m_axis_dout_tdata_real_net,
    q1_in => cordic_6_0_1_m_axis_dout_tdata_imag_net,
    i2_in => cordic_6_0_2_m_axis_dout_tdata_real_net,
    q2_in => cordic_6_0_2_m_axis_dout_tdata_imag_net,
    i3_in => cordic_6_0_3_m_axis_dout_tdata_real_net,
    q3_in => cordic_6_0_3_m_axis_dout_tdata_imag_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    tvalid_out => logical1_y_net,
    i0_out => delay2_q_net_x8,
    q0_out => delay2_q_net_x6,
    i1_out => delay2_q_net_x9,
    q1_out => delay2_q_net_x5,
    i2_out => delay2_q_net_x4,
    q2_out => delay2_q_net_x3,
    i3_out => delay2_q_net_x2,
    q3_out => delay2_q_net_x1,
    tvalid_snap => delay1_q_net_x1,
    tvalid_out_eth => delay4_q_net
  );
  vector_concat : entity xil_defaultlib.receive1_vector_concat 
  port map (
    hi_1 => reinterpret0_output_port_net_x0,
    lo_1 => reinterpret0_output_port_net,
    hi_2 => reinterpret1_output_port_net_x0,
    hi_3 => reinterpret2_output_port_net_x0,
    hi_4 => reinterpret3_output_port_net_x0,
    lo_2 => reinterpret1_output_port_net,
    lo_3 => reinterpret2_output_port_net,
    lo_4 => reinterpret3_output_port_net,
    out_1 => concat0_y_net,
    out_2 => concat1_y_net_x0,
    out_3 => concat2_y_net,
    out_4 => concat3_y_net
  );
  vector_constant : entity xil_defaultlib.receive1_vector_constant 
  port map (
    out1_1 => constant0_op_net,
    out1_2 => constant1_op_net,
    out1_3 => constant2_op_net,
    out1_4 => constant3_op_net
  );
  vector_delay : entity xil_defaultlib.receive1_vector_delay 
  port map (
    d_1 => in_re_0_net,
    d_2 => in_re_1_net,
    d_3 => in_re_2_net,
    d_4 => in_re_3_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q_1 => delay0_q_net_x0,
    q_2 => delay1_q_net_x0,
    q_3 => delay2_q_net_x0,
    q_4 => delay3_q_net_x0
  );
  vector_delay1 : entity xil_defaultlib.receive1_vector_delay1 
  port map (
    d_1 => in_im_0_net,
    d_2 => in_im_1_net,
    d_3 => in_im_2_net,
    d_4 => in_im_3_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    q_1 => delay0_q_net,
    q_2 => delay1_q_net,
    q_3 => delay2_q_net,
    q_4 => delay3_q_net
  );
  vector_fft : entity xil_defaultlib.receive1_vector_fft 
  port map (
    i_re_1 => delay0_q_net_x0,
    i_im_1 => delay0_q_net,
    vi => delay1_q_net_x2,
    si => delay2_q_net_x7,
    i_re_2 => delay1_q_net_x0,
    i_re_3 => delay2_q_net_x0,
    i_re_4 => delay3_q_net_x0,
    i_im_2 => delay1_q_net,
    i_im_3 => delay2_q_net,
    i_im_4 => delay3_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    o_re_1 => reinterpret8_output_port_net,
    o_im_1 => reinterpret12_output_port_net,
    vo => test_systolicfft_vhdl_black_box_vo_net,
    o_re_2 => reinterpret9_output_port_net,
    o_re_3 => reinterpret10_output_port_net,
    o_re_4 => reinterpret11_output_port_net,
    o_im_2 => reinterpret13_output_port_net,
    o_im_3 => reinterpret14_output_port_net,
    o_im_4 => reinterpret15_output_port_net
  );
  vector_mux : entity xil_defaultlib.receive1_vector_mux 
  port map (
    sel => register_q_net,
    i0_1 => constant0_op_net,
    i1_1 => reinterpret8_output_port_net,
    i0_2 => constant1_op_net,
    i0_3 => constant2_op_net,
    i0_4 => constant3_op_net,
    i1_2 => reinterpret9_output_port_net,
    i1_3 => reinterpret10_output_port_net,
    i1_4 => reinterpret11_output_port_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    o_1 => mux0_y_net_x0,
    o_2 => mux1_y_net_x0,
    o_3 => mux2_y_net_x0,
    o_4 => mux3_y_net_x0
  );
  vector_mux1 : entity xil_defaultlib.receive1_vector_mux1 
  port map (
    sel => register_q_net,
    i0_1 => constant0_op_net,
    i1_1 => reinterpret12_output_port_net,
    i0_2 => constant1_op_net,
    i0_3 => constant2_op_net,
    i0_4 => constant3_op_net,
    i1_2 => reinterpret13_output_port_net,
    i1_3 => reinterpret14_output_port_net,
    i1_4 => reinterpret15_output_port_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    o_1 => mux0_y_net,
    o_2 => mux1_y_net,
    o_3 => mux2_y_net,
    o_4 => mux3_y_net
  );
  vector_reinterpret : entity xil_defaultlib.receive1_vector_reinterpret 
  port map (
    in_1 => mux0_y_net_x0,
    in_2 => mux1_y_net_x0,
    in_3 => mux2_y_net_x0,
    in_4 => mux3_y_net_x0,
    out_1 => reinterpret0_output_port_net_x0,
    out_2 => reinterpret1_output_port_net_x0,
    out_3 => reinterpret2_output_port_net_x0,
    out_4 => reinterpret3_output_port_net_x0
  );
  vector_reinterpret2 : entity xil_defaultlib.receive1_vector_reinterpret2 
  port map (
    in_1 => mux0_y_net,
    in_2 => mux1_y_net,
    in_3 => mux2_y_net,
    in_4 => mux3_y_net,
    out_1 => reinterpret0_output_port_net,
    out_2 => reinterpret1_output_port_net,
    out_3 => reinterpret2_output_port_net,
    out_4 => reinterpret3_output_port_net
  );
  vector_to_scalar : entity xil_defaultlib.receive1_vector_to_scalar 
  port map (
    i_1 => concat0_y_net,
    i_2 => concat1_y_net_x0,
    i_3 => concat2_y_net,
    i_4 => concat3_y_net,
    o => concat1_y_net
  );
  beat_dphi0 : entity xil_defaultlib.receive1_beat_dphi0 
  port map (
    w_addr_x0 => w_beat_addr_net,
    w_data => w_beat_dphi_net,
    we => beat_we0_net,
    tvalid_in => delay4_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    beat_dphi => convert2_dout_net_x2
  );
  beat_dphi1 : entity xil_defaultlib.receive1_beat_dphi1 
  port map (
    w_addr_x0 => w_beat_addr_net,
    w_data => w_beat_dphi_net,
    we => beat_we1_net,
    tvalid_in => delay4_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    beat_dphi => convert2_dout_net_x1
  );
  beat_dphi2 : entity xil_defaultlib.receive1_beat_dphi2 
  port map (
    w_addr_x0 => w_beat_addr_net,
    w_data => w_beat_dphi_net,
    we => beat_we2_net,
    tvalid_in => delay4_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    beat_dphi => convert2_dout_net_x0
  );
  beat_dphi3 : entity xil_defaultlib.receive1_beat_dphi3 
  port map (
    w_addr_x0 => w_beat_addr_net,
    w_data => w_beat_dphi_net,
    we => beat_we3_net,
    tvalid_in => delay4_q_net_x0,
    clk_1 => clk_net,
    ce_1 => ce_net,
    beat_dphi => convert2_dout_net
  );
  binselect : entity xil_defaultlib.receive1_binselect 
  port map (
    data_in => concat1_y_net,
    tvalid_in => delay5_q_net,
    bin_sel_addr_x0 => delay17_q_net,
    bin_sel_data0 => delay19_q_net,
    bin_sel_data1_x0 => delay6_q_net,
    bin_sel_we_x0 => delay20_q_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    data_out => mux2_y_net_x1
  );
  in_im : entity xil_defaultlib.receive1_in_im 
  port map (
    in_im_0 => in_im_0_net,
    in_im_1 => in_im_1_net,
    in_im_2 => in_im_2_net,
    in_im_3 => in_im_3_net
  );
  in_re : entity xil_defaultlib.receive1_in_re 
  port map (
    in_re_0 => in_re_0_net,
    in_re_1 => in_re_1_net,
    in_re_2 => in_re_2_net,
    in_re_3 => in_re_3_net
  );
  rst_det : entity xil_defaultlib.receive1_rst_det_x4 
  port map (
    in_x0 => cordic_6_0_0_m_axis_dout_tvalid_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out_x0 => logical_y_net
  );
  cordic_6_0_0 : entity xil_defaultlib.xlcordic_d28072868b96277f592dd6760b7f19c7 
  port map (
    s_axis_cartesian_tvalid => tvalid,
    s_axis_cartesian_tdata_imag => data,
    s_axis_cartesian_tdata_real => convert2_dout_net_x3,
    s_axis_phase_tvalid => tvalid,
    s_axis_phase_tdata_phase => convert2_dout_net_x2,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_0_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => cordic_6_0_0_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => cordic_6_0_0_m_axis_dout_tdata_real_net
  );
  cordic_6_0_1 : entity xil_defaultlib.xlcordic_d28072868b96277f592dd6760b7f19c7 
  port map (
    s_axis_cartesian_tvalid => tvalid,
    s_axis_cartesian_tdata_imag => convert3_dout_net,
    s_axis_cartesian_tdata_real => convert4_dout_net,
    s_axis_phase_tvalid => tvalid,
    s_axis_phase_tdata_phase => convert2_dout_net_x1,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_1_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => cordic_6_0_1_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => cordic_6_0_1_m_axis_dout_tdata_real_net
  );
  cordic_6_0_2 : entity xil_defaultlib.xlcordic_d28072868b96277f592dd6760b7f19c7 
  port map (
    s_axis_cartesian_tvalid => tvalid,
    s_axis_cartesian_tdata_imag => convert5_dout_net,
    s_axis_cartesian_tdata_real => convert6_dout_net,
    s_axis_phase_tvalid => tvalid,
    s_axis_phase_tdata_phase => convert2_dout_net_x0,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_2_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => cordic_6_0_2_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => cordic_6_0_2_m_axis_dout_tdata_real_net
  );
  cordic_6_0_3 : entity xil_defaultlib.xlcordic_d28072868b96277f592dd6760b7f19c7 
  port map (
    s_axis_cartesian_tvalid => tvalid,
    s_axis_cartesian_tdata_imag => convert7_dout_net,
    s_axis_cartesian_tdata_real => convert8_dout_net,
    s_axis_phase_tvalid => tvalid,
    s_axis_phase_tdata_phase => convert2_dout_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_dout_tvalid => cordic_6_0_3_m_axis_dout_tvalid_net,
    m_axis_dout_tdata_imag => cordic_6_0_3_m_axis_dout_tdata_imag_net,
    m_axis_dout_tdata_real => cordic_6_0_3_m_axis_dout_tdata_real_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_13e1266ced 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net_x0
  );
  constant6 : entity xil_defaultlib.sysgen_constant_c646635886 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant6_op_net
  );
  convert1 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 27,
    dout_arith => 2,
    dout_bin_pt => 16,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => data
  );
  convert2 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 27,
    dout_arith => 2,
    dout_bin_pt => 16,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret1_output_port_net_x1,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net_x3
  );
  convert3 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 27,
    dout_arith => 2,
    dout_bin_pt => 16,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret2_output_port_net_x1,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 27,
    dout_arith => 2,
    dout_bin_pt => 16,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret3_output_port_net_x1,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 27,
    dout_arith => 2,
    dout_bin_pt => 16,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret4_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 27,
    dout_arith => 2,
    dout_bin_pt => 16,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret5_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  convert7 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 27,
    dout_arith => 2,
    dout_bin_pt => 16,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret6_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  convert8 : entity xil_defaultlib.receive1_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 15,
    din_width => 27,
    dout_arith => 2,
    dout_bin_pt => 16,
    dout_width => 18,
    latency => 1,
    overflow => xlWrap,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => reinterpret7_output_port_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert8_dout_net
  );
  delay1 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 3841,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => in_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net_x2
  );
  delay16 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 23
  )
  port map (
    en => '1',
    rst => '0',
    d => acc_length_net,
    clk => clk_net,
    ce => ce_net,
    q => delay16_q_net
  );
  delay17 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 10
  )
  port map (
    en => '1',
    rst => '0',
    d => w_binsel_addr_net,
    clk => clk_net,
    ce => ce_net,
    q => delay17_q_net
  );
  delay18 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay4_q_net_x0,
    clk => clk_net,
    ce => ce_net,
    q(0) => tvalid
  );
  delay19 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 22
  )
  port map (
    en => '1',
    rst => '0',
    d => w_binsel_data0_net,
    clk => clk_net,
    ce => ce_net,
    q => delay19_q_net
  );
  delay2 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 11
  )
  port map (
    en => '1',
    rst => '0',
    d => fft_scale_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net_x7
  );
  delay20 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => binsel_we_net,
    clk => clk_net,
    ce => ce_net,
    q => delay20_q_net
  );
  delay3 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 517,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net_x1
  );
  delay4 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => delay3_q_net_x1,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net_x0
  );
  delay5 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d(0) => test_systolicfft_vhdl_black_box_vo_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.receive1_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 22
  )
  port map (
    en => '1',
    rst => '0',
    d => w_binsel_data1_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_q0_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_i0_y_net,
    output_port => reinterpret1_output_port_net_x1
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_q1_y_net,
    output_port => reinterpret2_output_port_net_x1
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_i1_y_net,
    output_port => reinterpret3_output_port_net_x1
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_q2_y_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_i2_y_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_q3_y_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_f3d0aaba7c 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_i3_y_net,
    output_port => reinterpret7_output_port_net
  );
  slice_i0 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 27,
    new_msb => 53,
    x_width => 216,
    y_width => 27
  )
  port map (
    x => mux2_y_net_x1,
    y => slice_i0_y_net
  );
  slice_i1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 81,
    new_msb => 107,
    x_width => 216,
    y_width => 27
  )
  port map (
    x => mux2_y_net_x1,
    y => slice_i1_y_net
  );
  slice_i2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 135,
    new_msb => 161,
    x_width => 216,
    y_width => 27
  )
  port map (
    x => mux2_y_net_x1,
    y => slice_i2_y_net
  );
  slice_i3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 189,
    new_msb => 215,
    x_width => 216,
    y_width => 27
  )
  port map (
    x => mux2_y_net_x1,
    y => slice_i3_y_net
  );
  slice_q0 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 0,
    new_msb => 26,
    x_width => 216,
    y_width => 27
  )
  port map (
    x => mux2_y_net_x1,
    y => slice_q0_y_net
  );
  slice_q1 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 54,
    new_msb => 80,
    x_width => 216,
    y_width => 27
  )
  port map (
    x => mux2_y_net_x1,
    y => slice_q1_y_net
  );
  slice_q2 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 108,
    new_msb => 134,
    x_width => 216,
    y_width => 27
  )
  port map (
    x => mux2_y_net_x1,
    y => slice_q2_y_net
  );
  slice_q3 : entity xil_defaultlib.receive1_xlslice 
  generic map (
    new_lsb => 162,
    new_msb => 188,
    x_width => 216,
    y_width => 27
  )
  port map (
    x => mux2_y_net_x1,
    y => slice_q3_y_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1_default_clock_driver is
  port (
    receive1_sysclk : in std_logic;
    receive1_sysce : in std_logic;
    receive1_sysclr : in std_logic;
    receive1_clk1 : out std_logic;
    receive1_ce1 : out std_logic
  );
end receive1_default_clock_driver;
architecture structural of receive1_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => receive1_sysclk,
    sysce => receive1_sysce,
    sysclr => receive1_sysclr,
    clk => receive1_clk1,
    ce => receive1_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive1 is
  port (
    acc_length : in std_logic_vector( 23-1 downto 0 );
    beat_we0 : in std_logic_vector( 1-1 downto 0 );
    beat_we1 : in std_logic_vector( 1-1 downto 0 );
    beat_we2 : in std_logic_vector( 1-1 downto 0 );
    beat_we3 : in std_logic_vector( 1-1 downto 0 );
    binsel_we : in std_logic_vector( 1-1 downto 0 );
    fft_scale : in std_logic_vector( 11-1 downto 0 );
    in_tvalid : in std_logic_vector( 1-1 downto 0 );
    w_beat_addr : in std_logic_vector( 9-1 downto 0 );
    w_beat_dphi : in std_logic_vector( 16-1 downto 0 );
    w_binsel_addr : in std_logic_vector( 10-1 downto 0 );
    w_binsel_data0 : in std_logic_vector( 22-1 downto 0 );
    w_binsel_data1 : in std_logic_vector( 22-1 downto 0 );
    in_im_0 : in std_logic_vector( 16-1 downto 0 );
    in_im_1 : in std_logic_vector( 16-1 downto 0 );
    in_im_2 : in std_logic_vector( 16-1 downto 0 );
    in_im_3 : in std_logic_vector( 16-1 downto 0 );
    in_re_0 : in std_logic_vector( 16-1 downto 0 );
    in_re_1 : in std_logic_vector( 16-1 downto 0 );
    in_re_2 : in std_logic_vector( 16-1 downto 0 );
    in_re_3 : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    acc_tvalid : out std_logic_vector( 1-1 downto 0 );
    acc_tvalid_eth : out std_logic_vector( 1-1 downto 0 );
    snap_i0 : out std_logic_vector( 32-1 downto 0 );
    snap_i1 : out std_logic_vector( 32-1 downto 0 );
    snap_i2 : out std_logic_vector( 32-1 downto 0 );
    snap_i3 : out std_logic_vector( 32-1 downto 0 );
    snap_q0 : out std_logic_vector( 32-1 downto 0 );
    snap_q1 : out std_logic_vector( 32-1 downto 0 );
    snap_q2 : out std_logic_vector( 32-1 downto 0 );
    snap_q3 : out std_logic_vector( 32-1 downto 0 );
    snap_tvalid : out std_logic_vector( 1-1 downto 0 )
  );
end receive1;
architecture structural of receive1 is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "receive1,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=20000,accum=1,addsub=13,blackbox2=1,concat=12,constant=90,convert=13,cordic_v6_0=4,counter=23,delay=102,dpram=9,fifo=12,inv=7,logical=28,mux=54,register=23,reinterpret=36,relational=18,slice=64,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  receive1_default_clock_driver : entity xil_defaultlib.receive1_default_clock_driver 
  port map (
    receive1_sysclk => clk,
    receive1_sysce => '1',
    receive1_sysclr => '0',
    receive1_clk1 => clk_1_net,
    receive1_ce1 => ce_1_net
  );
  receive1_struct : entity xil_defaultlib.receive1_struct 
  port map (
    acc_length => acc_length,
    beat_we0 => beat_we0,
    beat_we1 => beat_we1,
    beat_we2 => beat_we2,
    beat_we3 => beat_we3,
    binsel_we => binsel_we,
    fft_scale => fft_scale,
    in_tvalid => in_tvalid,
    w_beat_addr => w_beat_addr,
    w_beat_dphi => w_beat_dphi,
    w_binsel_addr => w_binsel_addr,
    w_binsel_data0 => w_binsel_data0,
    w_binsel_data1 => w_binsel_data1,
    in_im_0 => in_im_0,
    in_im_1 => in_im_1,
    in_im_2 => in_im_2,
    in_im_3 => in_im_3,
    in_re_0 => in_re_0,
    in_re_1 => in_re_1,
    in_re_2 => in_re_2,
    in_re_3 => in_re_3,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    acc_tvalid => acc_tvalid,
    acc_tvalid_eth => acc_tvalid_eth,
    snap_i0 => snap_i0,
    snap_i1 => snap_i1,
    snap_i2 => snap_i2,
    snap_i3 => snap_i3,
    snap_q0 => snap_q0,
    snap_q1 => snap_q1,
    snap_q2 => snap_q2,
    snap_q3 => snap_q3,
    snap_tvalid => snap_tvalid
  );
end structural;
