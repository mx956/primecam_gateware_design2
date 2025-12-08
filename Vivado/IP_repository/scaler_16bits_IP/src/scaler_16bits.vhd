-- Generated from Simulink block scaler_16bits_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity scaler_16bits_struct is
  port (
    psb_im0 : in std_logic_vector( 16-1 downto 0 );
    psb_im1 : in std_logic_vector( 16-1 downto 0 );
    psb_im2 : in std_logic_vector( 16-1 downto 0 );
    psb_im3 : in std_logic_vector( 16-1 downto 0 );
    psb_re0 : in std_logic_vector( 16-1 downto 0 );
    psb_re1 : in std_logic_vector( 16-1 downto 0 );
    psb_re2 : in std_logic_vector( 16-1 downto 0 );
    psb_re3 : in std_logic_vector( 16-1 downto 0 );
    scale_const16 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    psb_dac_im0 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_im1 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_im2 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_im3 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_re0 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_re1 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_re2 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_re3 : out std_logic_vector( 16-1 downto 0 );
    ov : out std_logic_vector( 1-1 downto 0 )
  );
end scaler_16bits_struct;
architecture structural of scaler_16bits_struct is 
  signal psb_im2_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret4_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal psb_im0_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal scale_const16_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret6_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal psb_re2_net : std_logic_vector( 16-1 downto 0 );
  signal convert_dout_net : std_logic_vector( 31-1 downto 0 );
  signal mult_p_net : std_logic_vector( 32-1 downto 0 );
  signal ce_net : std_logic;
  signal psb_re3_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret2_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal psb_re0_net : std_logic_vector( 16-1 downto 0 );
  signal psb_re1_net : std_logic_vector( 16-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal reinterpret1_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret7_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret3_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal psb_im1_net : std_logic_vector( 16-1 downto 0 );
  signal psb_im3_net : std_logic_vector( 16-1 downto 0 );
  signal reinterpret5_output_port_net : std_logic_vector( 16-1 downto 0 );
  signal convert7_dout_net : std_logic_vector( 31-1 downto 0 );
  signal mult7_p_net : std_logic_vector( 32-1 downto 0 );
  signal convert6_dout_net : std_logic_vector( 31-1 downto 0 );
  signal convert5_dout_net : std_logic_vector( 31-1 downto 0 );
  signal convert3_dout_net : std_logic_vector( 31-1 downto 0 );
  signal convert1_dout_net : std_logic_vector( 31-1 downto 0 );
  signal convert2_dout_net : std_logic_vector( 31-1 downto 0 );
  signal mult6_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult3_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult4_p_net : std_logic_vector( 32-1 downto 0 );
  signal convert4_dout_net : std_logic_vector( 31-1 downto 0 );
  signal mult1_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult5_p_net : std_logic_vector( 32-1 downto 0 );
  signal mult2_p_net : std_logic_vector( 32-1 downto 0 );
  signal relational4_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational3_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational7_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational5_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational6_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational8_op_net : std_logic_vector( 1-1 downto 0 );
  signal slice3_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice4_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice1_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice2_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay5_q_net : std_logic_vector( 32-1 downto 0 );
  signal slice6_y_net : std_logic_vector( 16-1 downto 0 );
  signal slice5_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay4_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 32-1 downto 0 );
  signal slice7_y_net : std_logic_vector( 16-1 downto 0 );
  signal delay6_q_net : std_logic_vector( 32-1 downto 0 );
  signal delay7_q_net : std_logic_vector( 32-1 downto 0 );
begin
  psb_dac_im0 <= reinterpret4_output_port_net;
  psb_dac_im1 <= reinterpret5_output_port_net;
  psb_dac_im2 <= reinterpret6_output_port_net;
  psb_dac_im3 <= reinterpret7_output_port_net;
  psb_dac_re0 <= reinterpret_output_port_net;
  psb_dac_re1 <= reinterpret1_output_port_net;
  psb_dac_re2 <= reinterpret2_output_port_net;
  psb_dac_re3 <= reinterpret3_output_port_net;
  psb_im0_net <= psb_im0;
  psb_im1_net <= psb_im1;
  psb_im2_net <= psb_im2;
  psb_im3_net <= psb_im3;
  psb_re0_net <= psb_re0;
  psb_re1_net <= psb_re1;
  psb_re2_net <= psb_re2;
  psb_re3_net <= psb_re3;
  ov <= logical_y_net;
  scale_const16_net <= scale_const16;
  clk_net <= clk_1;
  ce_net <= ce_1;
  convert : entity xil_defaultlib.scaler_16bits_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 31,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert_dout_net
  );
  convert1 : entity xil_defaultlib.scaler_16bits_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 31,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mult1_p_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert1_dout_net
  );
  convert2 : entity xil_defaultlib.scaler_16bits_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 31,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mult2_p_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert2_dout_net
  );
  convert3 : entity xil_defaultlib.scaler_16bits_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 31,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mult3_p_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert3_dout_net
  );
  convert4 : entity xil_defaultlib.scaler_16bits_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 31,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mult4_p_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert4_dout_net
  );
  convert5 : entity xil_defaultlib.scaler_16bits_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 31,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mult5_p_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert5_dout_net
  );
  convert6 : entity xil_defaultlib.scaler_16bits_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 31,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mult6_p_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert6_dout_net
  );
  convert7 : entity xil_defaultlib.scaler_16bits_xlconvert 
  generic map (
    bool_conversion => 0,
    din_arith => 2,
    din_bin_pt => 0,
    din_width => 32,
    dout_arith => 2,
    dout_bin_pt => 0,
    dout_width => 31,
    latency => 1,
    overflow => xlSaturate,
    quantization => xlTruncate
  )
  port map (
    clr => '0',
    en => "1",
    din => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    dout => convert7_dout_net
  );
  logical : entity xil_defaultlib.sysgen_logical_bb3de1bc40 
  port map (
    clr => '0',
    d0 => relational1_op_net,
    d1 => relational2_op_net,
    d2 => relational3_op_net,
    d3 => relational4_op_net,
    d4 => relational5_op_net,
    d5 => relational6_op_net,
    d6 => relational7_op_net,
    d7 => relational8_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  mult : entity xil_defaultlib.scaler_16bits_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "scaler_16bits_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 3,
    p_arith => xlSigned,
    p_bin_pt => 0,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => psb_re0_net,
    b => scale_const16_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult_p_net
  );
  mult1 : entity xil_defaultlib.scaler_16bits_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "scaler_16bits_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 3,
    p_arith => xlSigned,
    p_bin_pt => 0,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => psb_re1_net,
    b => scale_const16_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult1_p_net
  );
  mult2 : entity xil_defaultlib.scaler_16bits_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "scaler_16bits_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 3,
    p_arith => xlSigned,
    p_bin_pt => 0,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => psb_re2_net,
    b => scale_const16_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult2_p_net
  );
  mult3 : entity xil_defaultlib.scaler_16bits_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "scaler_16bits_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 3,
    p_arith => xlSigned,
    p_bin_pt => 0,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => psb_re3_net,
    b => scale_const16_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult3_p_net
  );
  mult4 : entity xil_defaultlib.scaler_16bits_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "scaler_16bits_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 3,
    p_arith => xlSigned,
    p_bin_pt => 0,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => psb_im0_net,
    b => scale_const16_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult4_p_net
  );
  mult5 : entity xil_defaultlib.scaler_16bits_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "scaler_16bits_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 3,
    p_arith => xlSigned,
    p_bin_pt => 0,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => psb_im1_net,
    b => scale_const16_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult5_p_net
  );
  mult6 : entity xil_defaultlib.scaler_16bits_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "scaler_16bits_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 3,
    p_arith => xlSigned,
    p_bin_pt => 0,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => psb_im2_net,
    b => scale_const16_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult6_p_net
  );
  mult7 : entity xil_defaultlib.scaler_16bits_xlmult 
  generic map (
    a_arith => xlSigned,
    a_bin_pt => 0,
    a_width => 16,
    b_arith => xlUnsigned,
    b_bin_pt => 0,
    b_width => 16,
    c_a_type => 0,
    c_a_width => 16,
    c_b_type => 1,
    c_b_width => 16,
    c_baat => 16,
    c_output_width => 32,
    c_type => 0,
    core_name0 => "scaler_16bits_mult_gen_v12_0_i0",
    extra_registers => 0,
    multsign => 2,
    overflow => 3,
    p_arith => xlSigned,
    p_bin_pt => 0,
    p_width => 32,
    quantization => 1
  )
  port map (
    clr => '0',
    core_clr => '1',
    en => "1",
    rst => "0",
    a => psb_im3_net,
    b => scale_const16_net,
    clk => clk_net,
    ce => ce_net,
    core_clk => clk_net,
    core_ce => ce_net,
    p => mult7_p_net
  );
  reinterpret : entity xil_defaultlib.sysgen_reinterpret_9d153413bf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice_y_net,
    output_port => reinterpret_output_port_net
  );
  reinterpret1 : entity xil_defaultlib.sysgen_reinterpret_9d153413bf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice1_y_net,
    output_port => reinterpret1_output_port_net
  );
  reinterpret2 : entity xil_defaultlib.sysgen_reinterpret_9d153413bf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice2_y_net,
    output_port => reinterpret2_output_port_net
  );
  reinterpret3 : entity xil_defaultlib.sysgen_reinterpret_9d153413bf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice3_y_net,
    output_port => reinterpret3_output_port_net
  );
  reinterpret4 : entity xil_defaultlib.sysgen_reinterpret_9d153413bf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice4_y_net,
    output_port => reinterpret4_output_port_net
  );
  reinterpret5 : entity xil_defaultlib.sysgen_reinterpret_9d153413bf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice5_y_net,
    output_port => reinterpret5_output_port_net
  );
  reinterpret6 : entity xil_defaultlib.sysgen_reinterpret_9d153413bf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice6_y_net,
    output_port => reinterpret6_output_port_net
  );
  reinterpret7 : entity xil_defaultlib.sysgen_reinterpret_9d153413bf 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    input_port => slice7_y_net,
    output_port => reinterpret7_output_port_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_b83e0dd4ce 
  port map (
    clr => '0',
    a => convert_dout_net,
    b => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_b83e0dd4ce 
  port map (
    clr => '0',
    a => convert1_dout_net,
    b => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
  relational3 : entity xil_defaultlib.sysgen_relational_b83e0dd4ce 
  port map (
    clr => '0',
    a => convert2_dout_net,
    b => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational3_op_net
  );
  relational4 : entity xil_defaultlib.sysgen_relational_b83e0dd4ce 
  port map (
    clr => '0',
    a => convert3_dout_net,
    b => delay3_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational4_op_net
  );
  relational5 : entity xil_defaultlib.sysgen_relational_b83e0dd4ce 
  port map (
    clr => '0',
    a => convert4_dout_net,
    b => delay4_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational5_op_net
  );
  relational6 : entity xil_defaultlib.sysgen_relational_b83e0dd4ce 
  port map (
    clr => '0',
    a => convert5_dout_net,
    b => delay5_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational6_op_net
  );
  relational7 : entity xil_defaultlib.sysgen_relational_b83e0dd4ce 
  port map (
    clr => '0',
    a => convert6_dout_net,
    b => delay6_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational7_op_net
  );
  relational8 : entity xil_defaultlib.sysgen_relational_b83e0dd4ce 
  port map (
    clr => '0',
    a => convert7_dout_net,
    b => delay7_q_net,
    clk => clk_net,
    ce => ce_net,
    op => relational8_op_net
  );
  slice : entity xil_defaultlib.scaler_16bits_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 30,
    x_width => 31,
    y_width => 16
  )
  port map (
    x => convert_dout_net,
    y => slice_y_net
  );
  slice1 : entity xil_defaultlib.scaler_16bits_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 30,
    x_width => 31,
    y_width => 16
  )
  port map (
    x => convert1_dout_net,
    y => slice1_y_net
  );
  slice2 : entity xil_defaultlib.scaler_16bits_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 30,
    x_width => 31,
    y_width => 16
  )
  port map (
    x => convert2_dout_net,
    y => slice2_y_net
  );
  slice3 : entity xil_defaultlib.scaler_16bits_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 30,
    x_width => 31,
    y_width => 16
  )
  port map (
    x => convert3_dout_net,
    y => slice3_y_net
  );
  slice4 : entity xil_defaultlib.scaler_16bits_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 30,
    x_width => 31,
    y_width => 16
  )
  port map (
    x => convert4_dout_net,
    y => slice4_y_net
  );
  slice5 : entity xil_defaultlib.scaler_16bits_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 30,
    x_width => 31,
    y_width => 16
  )
  port map (
    x => convert5_dout_net,
    y => slice5_y_net
  );
  slice6 : entity xil_defaultlib.scaler_16bits_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 30,
    x_width => 31,
    y_width => 16
  )
  port map (
    x => convert6_dout_net,
    y => slice6_y_net
  );
  slice7 : entity xil_defaultlib.scaler_16bits_xlslice 
  generic map (
    new_lsb => 15,
    new_msb => 30,
    x_width => 31,
    y_width => 16
  )
  port map (
    x => convert7_dout_net,
    y => slice7_y_net
  );
  delay : entity xil_defaultlib.scaler_16bits_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.scaler_16bits_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult1_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.scaler_16bits_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult2_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.scaler_16bits_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult3_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  delay4 : entity xil_defaultlib.scaler_16bits_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult4_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay4_q_net
  );
  delay5 : entity xil_defaultlib.scaler_16bits_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult5_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay5_q_net
  );
  delay6 : entity xil_defaultlib.scaler_16bits_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult6_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay6_q_net
  );
  delay7 : entity xil_defaultlib.scaler_16bits_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => mult7_p_net,
    clk => clk_net,
    ce => ce_net,
    q => delay7_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity scaler_16bits_default_clock_driver is
  port (
    scaler_16bits_sysclk : in std_logic;
    scaler_16bits_sysce : in std_logic;
    scaler_16bits_sysclr : in std_logic;
    scaler_16bits_clk1 : out std_logic;
    scaler_16bits_ce1 : out std_logic
  );
end scaler_16bits_default_clock_driver;
architecture structural of scaler_16bits_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => scaler_16bits_sysclk,
    sysce => scaler_16bits_sysce,
    sysclr => scaler_16bits_sysclr,
    clk => scaler_16bits_clk1,
    ce => scaler_16bits_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity scaler_16bits is
  port (
    psb_im0 : in std_logic_vector( 16-1 downto 0 );
    psb_im1 : in std_logic_vector( 16-1 downto 0 );
    psb_im2 : in std_logic_vector( 16-1 downto 0 );
    psb_im3 : in std_logic_vector( 16-1 downto 0 );
    psb_re0 : in std_logic_vector( 16-1 downto 0 );
    psb_re1 : in std_logic_vector( 16-1 downto 0 );
    psb_re2 : in std_logic_vector( 16-1 downto 0 );
    psb_re3 : in std_logic_vector( 16-1 downto 0 );
    scale_const16 : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    psb_dac_im0 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_im1 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_im2 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_im3 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_re0 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_re1 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_re2 : out std_logic_vector( 16-1 downto 0 );
    psb_dac_re3 : out std_logic_vector( 16-1 downto 0 );
    ov : out std_logic_vector( 1-1 downto 0 )
  );
end scaler_16bits;
architecture structural of scaler_16bits is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "scaler_16bits,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10,convert=8,delay=8,logical=1,mult=8,reinterpret=8,relational=8,slice=8,}";
  signal ce_1_net : std_logic;
  signal clk_1_net : std_logic;
begin
  scaler_16bits_default_clock_driver : entity xil_defaultlib.scaler_16bits_default_clock_driver 
  port map (
    scaler_16bits_sysclk => clk,
    scaler_16bits_sysce => '1',
    scaler_16bits_sysclr => '0',
    scaler_16bits_clk1 => clk_1_net,
    scaler_16bits_ce1 => ce_1_net
  );
  scaler_16bits_struct : entity xil_defaultlib.scaler_16bits_struct 
  port map (
    psb_im0 => psb_im0,
    psb_im1 => psb_im1,
    psb_im2 => psb_im2,
    psb_im3 => psb_im3,
    psb_re0 => psb_re0,
    psb_re1 => psb_re1,
    psb_re2 => psb_re2,
    psb_re3 => psb_re3,
    scale_const16 => scale_const16,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    psb_dac_im0 => psb_dac_im0,
    psb_dac_im1 => psb_dac_im1,
    psb_dac_im2 => psb_dac_im2,
    psb_dac_im3 => psb_dac_im3,
    psb_dac_re0 => psb_dac_re0,
    psb_dac_re1 => psb_dac_re1,
    psb_dac_re2 => psb_dac_re2,
    psb_dac_re3 => psb_dac_re3,
    ov => ov
  );
end structural;
