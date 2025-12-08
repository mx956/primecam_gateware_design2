-- Generated from Simulink block getAccumCtrl/posEdgeDetector
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity getaccumctrl_posedgedetector is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end getaccumctrl_posedgedetector;
architecture structural of getaccumctrl_posedgedetector is 
  signal ce_net : std_logic;
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal rst_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
begin
  out1 <= logical_y_net;
  rst_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  inverter : entity xil_defaultlib.sysgen_inverter_b76243c935 
  port map (
    clr => '0',
    ip => rst_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_2a90dc2a46 
  port map (
    clr => '0',
    d0 => rst_net,
    d1 => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block getAccumCtrl/posEdgeDetector1
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity getaccumctrl_posedgedetector1 is
  port (
    in1 : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    out1 : out std_logic_vector( 1-1 downto 0 )
  );
end getaccumctrl_posedgedetector1;
architecture structural of getaccumctrl_posedgedetector1 is 
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
begin
  out1 <= logical_y_net;
  tvalid_net <= in1;
  clk_net <= clk_1;
  ce_net <= ce_1;
  inverter : entity xil_defaultlib.sysgen_inverter_b76243c935 
  port map (
    clr => '0',
    ip => tvalid_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_2a90dc2a46 
  port map (
    clr => '0',
    d0 => tvalid_net,
    d1 => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
end structural;
-- Generated from Simulink block getAccumCtrl_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity getaccumctrl_struct is
  port (
    max_chan_minus_three : in std_logic_vector( 9-1 downto 0 );
    max_count_minus_two_step : in std_logic_vector( 32-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    tvalid : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    addr : out std_logic_vector( 32-1 downto 0 );
    we : out std_logic_vector( 1-1 downto 0 )
  );
end getaccumctrl_struct;
architecture structural of getaccumctrl_struct is 
  signal constant3_op_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal max_chan_minus_three_net : std_logic_vector( 9-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net_x0 : std_logic_vector( 1-1 downto 0 );
  signal rst_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 10-1 downto 0 );
  signal counter32_op_net : std_logic_vector( 32-1 downto 0 );
  signal mux_y_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 32-1 downto 0 );
  signal max_count_minus_two_step_net : std_logic_vector( 32-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay3_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant4_op_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
begin
  addr <= delay_q_net;
  max_chan_minus_three_net <= max_chan_minus_three;
  max_count_minus_two_step_net <= max_count_minus_two_step;
  rst_net <= rst;
  tvalid_net <= tvalid;
  we <= mux_y_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  posedgedetector : entity xil_defaultlib.getaccumctrl_posedgedetector 
  port map (
    in1 => rst_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net_x0
  );
  posedgedetector1 : entity xil_defaultlib.getaccumctrl_posedgedetector1 
  port map (
    in1 => tvalid_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    out1 => logical_y_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_eb45a67582 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  counter : entity xil_defaultlib.getaccumctrl_xlcounter_free 
  generic map (
    core_name0 => "getaccumctrl_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 10
  )
  port map (
    clr => '0',
    rst => delay2_q_net,
    en => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  counter32 : entity xil_defaultlib.getaccumctrl_xlcounter_free 
  generic map (
    core_name0 => "getaccumctrl_c_counter_binary_v12_0_i1",
    op_arith => xlUnsigned,
    op_width => 32
  )
  port map (
    clr => '0',
    rst => delay1_q_net,
    en => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter32_op_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_e7a49d5a63 
  port map (
    clr => '0',
    d0 => logical_y_net_x0,
    d1 => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
  register1 : entity xil_defaultlib.getaccumctrl_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant1_op_net,
    rst => logical2_y_net,
    en => logical_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_842711f6c7 
  port map (
    clr => '0',
    a => counter_op_net,
    b => max_chan_minus_three_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_7588c1aa0b 
  port map (
    clr => '0',
    a => counter32_op_net,
    b => max_count_minus_two_step_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  delay : entity xil_defaultlib.getaccumctrl_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 32
  )
  port map (
    en => '1',
    rst => '0',
    d => counter32_op_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  register2 : entity xil_defaultlib.getaccumctrl_xlregister 
  generic map (
    d_width => 1,
    init_value => b"1"
  )
  port map (
    d => constant4_op_net,
    rst => delay3_q_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  delay1 : entity xil_defaultlib.getaccumctrl_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  constant4 : entity xil_defaultlib.sysgen_constant_70a7981587 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant4_op_net
  );
  delay2 : entity xil_defaultlib.getaccumctrl_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  delay3 : entity xil_defaultlib.getaccumctrl_xldelay 
  generic map (
    latency => 5,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => logical_y_net_x0,
    clk => clk_net,
    ce => ce_net,
    q => delay3_q_net
  );
  mux : entity xil_defaultlib.sysgen_mux_33146ed9c2 
  port map (
    clr => '0',
    sel => register2_q_net,
    d0 => constant3_op_net,
    d1 => register1_q_net,
    clk => clk_net,
    ce => ce_net,
    y => mux_y_net
  );
  constant3 : entity xil_defaultlib.sysgen_constant_70a7981587 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant3_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity getaccumctrl_default_clock_driver is
  port (
    getaccumctrl_sysclk : in std_logic;
    getaccumctrl_sysce : in std_logic;
    getaccumctrl_sysclr : in std_logic;
    getaccumctrl_clk1 : out std_logic;
    getaccumctrl_ce1 : out std_logic
  );
end getaccumctrl_default_clock_driver;
architecture structural of getaccumctrl_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => getaccumctrl_sysclk,
    sysce => getaccumctrl_sysce,
    sysclr => getaccumctrl_sysclr,
    clk => getaccumctrl_clk1,
    ce => getaccumctrl_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity getaccumctrl is
  port (
    max_chan_minus_three : in std_logic_vector( 9-1 downto 0 );
    max_count_minus_two_step : in std_logic_vector( 32-1 downto 0 );
    rst : in std_logic_vector( 1-1 downto 0 );
    tvalid : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    addr : out std_logic_vector( 32-1 downto 0 );
    we : out std_logic_vector( 1-1 downto 0 )
  );
end getaccumctrl;
architecture structural of getaccumctrl is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "getaccumctrl,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=40960,constant=3,counter=2,delay=4,inv=2,logical=3,mux=1,register=2,relational=2,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  getaccumctrl_default_clock_driver : entity xil_defaultlib.getaccumctrl_default_clock_driver 
  port map (
    getaccumctrl_sysclk => clk,
    getaccumctrl_sysce => '1',
    getaccumctrl_sysclr => '0',
    getaccumctrl_clk1 => clk_1_net,
    getaccumctrl_ce1 => ce_1_net
  );
  getaccumctrl_struct : entity xil_defaultlib.getaccumctrl_struct 
  port map (
    max_chan_minus_three => max_chan_minus_three,
    max_count_minus_two_step => max_count_minus_two_step,
    rst => rst,
    tvalid => tvalid,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    addr => addr,
    we => we
  );
end structural;
