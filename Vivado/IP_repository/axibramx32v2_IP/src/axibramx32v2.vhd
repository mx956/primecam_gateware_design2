-- Generated from Simulink block axiBRAMx32v2_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axibramx32v2_struct is
  port (
    rising_edge_start : in std_logic_vector( 1-1 downto 0 );
    max_count_minus_two_steps : in std_logic_vector( 32-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    addr : out std_logic_vector( 32-1 downto 0 );
    we : out std_logic_vector( 1-1 downto 0 )
  );
end axibramx32v2_struct;
architecture structural of axibramx32v2_struct is 
  signal ce_net : std_logic;
  signal constant5_op_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal rising_edge_start_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 32-1 downto 0 );
  signal max_count_minus_two_steps_net : std_logic_vector( 32-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal delay2_q_net : std_logic_vector( 1-1 downto 0 );
  signal inverter2_op_net : std_logic_vector( 1-1 downto 0 );
begin
  addr <= counter1_op_net;
  rising_edge_start_net <= rising_edge_start;
  max_count_minus_two_steps_net <= max_count_minus_two_steps;
  we <= register_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant5 : entity xil_defaultlib.sysgen_constant_95bbeba419 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  counter1 : entity xil_defaultlib.axibramx32v2_xlcounter_free 
  generic map (
    core_name0 => "axibramx32v2_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 32
  )
  port map (
    clr => '0',
    rst => relational_op_net,
    en => register_q_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  register_x0 : entity xil_defaultlib.axibramx32v2_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant5_op_net,
    rst => relational_op_net,
    en => logical2_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  relational : entity xil_defaultlib.sysgen_relational_f76431fa58 
  port map (
    clr => '0',
    a => counter1_op_net,
    b => max_count_minus_two_steps_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
  delay2 : entity xil_defaultlib.axibramx32v2_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => rising_edge_start_net,
    clk => clk_net,
    ce => ce_net,
    q => delay2_q_net
  );
  inverter2 : entity xil_defaultlib.sysgen_inverter_41baf3abbd 
  port map (
    clr => '0',
    ip => delay2_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter2_op_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_7d65e3b2b6 
  port map (
    clr => '0',
    d0 => rising_edge_start_net,
    d1 => inverter2_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical2_y_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axibramx32v2_default_clock_driver is
  port (
    axibramx32v2_sysclk : in std_logic;
    axibramx32v2_sysce : in std_logic;
    axibramx32v2_sysclr : in std_logic;
    axibramx32v2_clk1 : out std_logic;
    axibramx32v2_ce1 : out std_logic
  );
end axibramx32v2_default_clock_driver;
architecture structural of axibramx32v2_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => axibramx32v2_sysclk,
    sysce => axibramx32v2_sysce,
    sysclr => axibramx32v2_sysclr,
    clk => axibramx32v2_clk1,
    ce => axibramx32v2_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axibramx32v2 is
  port (
    rising_edge_start : in std_logic_vector( 1-1 downto 0 );
    max_count_minus_two_steps : in std_logic_vector( 32-1 downto 0 );
    clk : in std_logic;
    addr : out std_logic_vector( 32-1 downto 0 );
    we : out std_logic_vector( 1-1 downto 0 )
  );
end axibramx32v2;
architecture structural of axibramx32v2 is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "axibramx32v2,sysgen_core_2021_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=1,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=100,constant=1,counter=1,delay=1,inv=1,logical=1,register=1,relational=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  axibramx32v2_default_clock_driver : entity xil_defaultlib.axibramx32v2_default_clock_driver 
  port map (
    axibramx32v2_sysclk => clk,
    axibramx32v2_sysce => '1',
    axibramx32v2_sysclr => '0',
    axibramx32v2_clk1 => clk_1_net,
    axibramx32v2_ce1 => ce_1_net
  );
  axibramx32v2_struct : entity xil_defaultlib.axibramx32v2_struct 
  port map (
    rising_edge_start => rising_edge_start,
    max_count_minus_two_steps => max_count_minus_two_steps,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    addr => addr,
    we => we
  );
end structural;
