-- Generated from Simulink block axi_bram_mealy_x16_w_arm_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axi_bram_mealy_x16_w_arm_struct is
  port (
    rising_edge_arm : in std_logic_vector( 1-1 downto 0 );
    max_count_minus_one_step : in std_logic_vector( 32-1 downto 0 );
    rising_edge_start : in std_logic_vector( 1-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    address : out std_logic_vector( 32-1 downto 0 );
    we : out std_logic_vector( 1-1 downto 0 )
  );
end axi_bram_mealy_x16_w_arm_struct;
architecture structural of axi_bram_mealy_x16_w_arm_struct is 
  signal delay_q_net : std_logic_vector( 1-1 downto 0 );
  signal logical2_y_net : std_logic_vector( 1-1 downto 0 );
  signal logical_y_net : std_logic_vector( 1-1 downto 0 );
  signal rising_edge_arm_net : std_logic_vector( 1-1 downto 0 );
  signal logical1_y_net : std_logic_vector( 1-1 downto 0 );
  signal register_q_net : std_logic_vector( 1-1 downto 0 );
  signal constant5_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter1_op_net : std_logic_vector( 1-1 downto 0 );
  signal clk_net : std_logic;
  signal ce_net : std_logic;
  signal rising_edge_start_net : std_logic_vector( 1-1 downto 0 );
  signal relational_op_net : std_logic_vector( 1-1 downto 0 );
  signal inverter_op_net : std_logic_vector( 1-1 downto 0 );
  signal delay1_q_net : std_logic_vector( 1-1 downto 0 );
  signal counter1_op_net : std_logic_vector( 32-1 downto 0 );
  signal max_count_minus_one_step_net : std_logic_vector( 32-1 downto 0 );
begin
  rising_edge_arm_net <= rising_edge_arm;
  address <= counter1_op_net;
  max_count_minus_one_step_net <= max_count_minus_one_step;
  rising_edge_start_net <= rising_edge_start;
  we <= relational_op_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  delay1 : entity xil_defaultlib.axi_bram_mealy_x16_w_arm_xldelay 
  generic map (
    latency => 1,
    reg_retiming => 0,
    reset => 0,
    width => 1
  )
  port map (
    en => '1',
    rst => '0',
    d => rising_edge_arm_net,
    clk => clk_net,
    ce => ce_net,
    q => delay1_q_net
  );
  inverter1 : entity xil_defaultlib.sysgen_inverter_d1d9207aa4 
  port map (
    clr => '0',
    ip => delay1_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter1_op_net
  );
  logical1 : entity xil_defaultlib.sysgen_logical_5d7cdeded4 
  port map (
    clr => '0',
    d0 => rising_edge_arm_net,
    d1 => inverter1_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical1_y_net
  );
  register_x0 : entity xil_defaultlib.axi_bram_mealy_x16_w_arm_xlregister 
  generic map (
    d_width => 1,
    init_value => b"0"
  )
  port map (
    d => constant5_op_net,
    rst => relational_op_net,
    en => logical1_y_net,
    clk => clk_net,
    ce => ce_net,
    q => register_q_net
  );
  logical2 : entity xil_defaultlib.sysgen_logical_f4774dfd04 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    d0 => register_q_net,
    d1 => logical_y_net,
    y => logical2_y_net
  );
  constant5 : entity xil_defaultlib.sysgen_constant_8ec7216579 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant5_op_net
  );
  counter1 : entity xil_defaultlib.axi_bram_mealy_x16_w_arm_xlcounter_free 
  generic map (
    core_name0 => "axi_bram_mealy_x16_w_arm_c_counter_binary_v12_0_i0",
    op_arith => xlUnsigned,
    op_width => 32
  )
  port map (
    clr => '0',
    rst => logical2_y_net,
    en => relational_op_net,
    clk => clk_net,
    ce => ce_net,
    op => counter1_op_net
  );
  delay : entity xil_defaultlib.axi_bram_mealy_x16_w_arm_xldelay 
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
    q => delay_q_net
  );
  inverter : entity xil_defaultlib.sysgen_inverter_d1d9207aa4 
  port map (
    clr => '0',
    ip => delay_q_net,
    clk => clk_net,
    ce => ce_net,
    op => inverter_op_net
  );
  logical : entity xil_defaultlib.sysgen_logical_5d7cdeded4 
  port map (
    clr => '0',
    d0 => rising_edge_start_net,
    d1 => inverter_op_net,
    clk => clk_net,
    ce => ce_net,
    y => logical_y_net
  );
  relational : entity xil_defaultlib.sysgen_relational_e83ad15ce0 
  port map (
    clr => '0',
    a => counter1_op_net,
    b => max_count_minus_one_step_net,
    clk => clk_net,
    ce => ce_net,
    op => relational_op_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axi_bram_mealy_x16_w_arm_default_clock_driver is
  port (
    axi_bram_mealy_x16_w_arm_sysclk : in std_logic;
    axi_bram_mealy_x16_w_arm_sysce : in std_logic;
    axi_bram_mealy_x16_w_arm_sysclr : in std_logic;
    axi_bram_mealy_x16_w_arm_clk1 : out std_logic;
    axi_bram_mealy_x16_w_arm_ce1 : out std_logic
  );
end axi_bram_mealy_x16_w_arm_default_clock_driver;
architecture structural of axi_bram_mealy_x16_w_arm_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => axi_bram_mealy_x16_w_arm_sysclk,
    sysce => axi_bram_mealy_x16_w_arm_sysce,
    sysclr => axi_bram_mealy_x16_w_arm_sysclr,
    clk => axi_bram_mealy_x16_w_arm_clk1,
    ce => axi_bram_mealy_x16_w_arm_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity axi_bram_mealy_x16_w_arm is
  port (
    rising_edge_arm : in std_logic_vector( 1-1 downto 0 );
    max_count_minus_one_step : in std_logic_vector( 32-1 downto 0 );
    rising_edge_start : in std_logic_vector( 1-1 downto 0 );
    clk : in std_logic;
    address : out std_logic_vector( 32-1 downto 0 );
    we : out std_logic_vector( 1-1 downto 0 )
  );
end axi_bram_mealy_x16_w_arm;
architecture structural of axi_bram_mealy_x16_w_arm is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "axi_bram_mealy_x16_w_arm,sysgen_core_2020_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1024,constant=1,counter=1,delay=2,inv=2,logical=3,register=1,relational=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  axi_bram_mealy_x16_w_arm_default_clock_driver : entity xil_defaultlib.axi_bram_mealy_x16_w_arm_default_clock_driver 
  port map (
    axi_bram_mealy_x16_w_arm_sysclk => clk,
    axi_bram_mealy_x16_w_arm_sysce => '1',
    axi_bram_mealy_x16_w_arm_sysclr => '0',
    axi_bram_mealy_x16_w_arm_clk1 => clk_1_net,
    axi_bram_mealy_x16_w_arm_ce1 => ce_1_net
  );
  axi_bram_mealy_x16_w_arm_struct : entity xil_defaultlib.axi_bram_mealy_x16_w_arm_struct 
  port map (
    rising_edge_arm => rising_edge_arm,
    max_count_minus_one_step => max_count_minus_one_step,
    rising_edge_start => rising_edge_start,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    address => address,
    we => we
  );
end structural;
