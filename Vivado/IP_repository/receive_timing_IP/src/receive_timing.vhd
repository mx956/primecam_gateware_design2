-- Generated from Simulink block receive_timing_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive_timing_struct is
  port (
    delay_minus4_1 : in std_logic_vector( 32-1 downto 0 );
    delay_minus4_2 : in std_logic_vector( 32-1 downto 0 );
    delay_minus4_3 : in std_logic_vector( 32-1 downto 0 );
    start : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    chan2_start : out std_logic_vector( 1-1 downto 0 );
    chan3_start : out std_logic_vector( 1-1 downto 0 );
    chan4_start : out std_logic_vector( 1-1 downto 0 )
  );
end receive_timing_struct;
architecture structural of receive_timing_struct is 
  signal delay_minus4_2_net : std_logic_vector( 32-1 downto 0 );
  signal delay_minus4_3_net : std_logic_vector( 32-1 downto 0 );
  signal start_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal register2_q_net : std_logic_vector( 1-1 downto 0 );
  signal register1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay_minus4_1_net : std_logic_vector( 32-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal ce_net : std_logic;
  signal constant2_op_net : std_logic_vector( 1-1 downto 0 );
  signal counter_op_net : std_logic_vector( 32-1 downto 0 );
  signal constant1_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 32-1 downto 0 );
  signal counter2_op_net : std_logic_vector( 32-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational1_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational2_op_net : std_logic_vector( 1-1 downto 0 );
begin
  chan2_start <= register_q_net;
  chan3_start <= register1_q_net;
  chan4_start <= register2_q_net;
  delay_minus4_1_net <= delay_minus4_1;
  delay_minus4_2_net <= delay_minus4_2;
  delay_minus4_3_net <= delay_minus4_3;
  start_net <= start;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_78af7e57ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  constant1 : entity xil_defaultlib.sysgen_constant_78af7e57ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant1_op_net
  );
  constant2 : entity xil_defaultlib.sysgen_constant_78af7e57ba 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant2_op_net
  );
  counter : entity xil_defaultlib.receive_timing_xlcounter_free 
  generic map (
    core_name0 => "receive_timing_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 32
  )
  port map (
    clr => '0',
    rst => inverter_op_net,
    en => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter_op_net
  );
  counter1 : entity xil_defaultlib.receive_timing_xlcounter_free 
  generic map (
    core_name0 => "receive_timing_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 32
  )
  port map (
    clr => '0',
    rst => inverter_op_net,
    en => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  counter2 : entity xil_defaultlib.receive_timing_xlcounter_free 
  generic map (
    core_name0 => "receive_timing_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 32
  )
  port map (
    clr => '0',
    rst => inverter_op_net,
    en => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter2_op_net
  );
  delay : entity xil_defaultlib.receive_timing_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => start_net,
    clk => clk_net,
    ce => ce_net,
    q => delay_q_net
  );
  delay1 : entity xil_defaultlib.receive_timing_xldelay 
  generic map (
    latency => 2,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => register_q_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  delay2 : entity xil_defaultlib.receive_timing_xldelay 
  generic map (
    latency => 2,
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
    q => delay2_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_b25383429b 
  port map (
    clr => '0',
    ip => start_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  register_x0 : entity xil_defaultlib.receive_timing_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant_op_net,
    rst => inverter_op_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  register1 : entity xil_defaultlib.receive_timing_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant1_op_net,
    rst => inverter_op_net,
    en => relational1_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.receive_timing_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant2_op_net,
    rst => inverter_op_net,
    en => relational2_op_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_4768a9e4d1 
  port map (
    clr => '0',
    a => counter_op_net,
    b => delay_minus4_1_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  relational1 : entity xil_defaultlib.sysgen_relational_4768a9e4d1 
  port map (
    clr => '0',
    a => counter1_op_net,
    b => delay_minus4_2_net,
    clk => clk_net,
    ce => ce_net,
    op => relational1_op_net
  );
  relational2 : entity xil_defaultlib.sysgen_relational_4768a9e4d1 
  port map (
    clr => '0',
    a => counter2_op_net,
    b => delay_minus4_3_net,
    clk => clk_net,
    ce => ce_net,
    op => relational2_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive_timing_default_clock_driver is
  port (
    receive_timing_sysclk : in std_logic;
    receive_timing_sysce : in std_logic;
    receive_timing_sysclr : in std_logic;
    receive_timing_clk1 : out std_logic;
    receive_timing_ce1 : out std_logic
  );
end receive_timing_default_clock_driver;
architecture structural of receive_timing_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => receive_timing_sysclk,
    sysce => receive_timing_sysce,
    sysclr => receive_timing_sysclr,
    clk => receive_timing_clk1,
    ce => receive_timing_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity receive_timing is
  port (
    delay_minus4_1 : in std_logic_vector( 32-1 downto 0 );
    delay_minus4_2 : in std_logic_vector( 32-1 downto 0 );
    delay_minus4_3 : in std_logic_vector( 32-1 downto 0 );
    start : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    chan2_start : out std_logic_vector( 1-1 downto 0 );
    chan3_start : out std_logic_vector( 1-1 downto 0 );
    chan4_start : out std_logic_vector( 1-1 downto 0 )
  );
end receive_timing;
architecture structural of receive_timing is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "receive_timing,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=100,constant=3,counter=3,delay=3,inv=1,register=3,relational=3,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  receive_timing_default_clock_driver : entity xil_defaultlib.receive_timing_default_clock_driver 
  port map (
    receive_timing_sysclk => clk,
    receive_timing_sysce => '1',
    receive_timing_sysclr => '0',
    receive_timing_clk1 => clk_1_net,
    receive_timing_ce1 => ce_1_net
  );
  receive_timing_struct : entity xil_defaultlib.receive_timing_struct 
  port map (
    delay_minus4_1 => delay_minus4_1,
    delay_minus4_2 => delay_minus4_2,
    delay_minus4_3 => delay_minus4_3,
    start => start,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    chan2_start => chan2_start,
    chan3_start => chan3_start,
    chan4_start => chan4_start
  );
end structural;
