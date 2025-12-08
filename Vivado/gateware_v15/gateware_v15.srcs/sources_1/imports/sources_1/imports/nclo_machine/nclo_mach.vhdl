-- Setting NCLO values with real-time interface state machine
-- Based on pages 189-191 of Xilinx PG269(v2.4)
-- On rising edge of dac0_nco_update_req enter state waiting for 
--   all falling edges from adc/dacX_busy then pulse int_reenable
--   and reset falling edge and waiting state flip-flops
-- Adrian Sinclair 2023
library ieee; use ieee.std_logic_1164.all; use ieee.numeric_std.all;

entity nclo_mach is
  port ( req  : in std_logic;
  	 busy0: in std_logic;
  	 busy1: in std_logic;
  	 busy2: in std_logic;
  	 busy3: in std_logic;
         clk  : in std_logic;
         rst  : in std_logic;
         reenable : out std_logic
       );
end entity nclo_mach;

architecture struct of nclo_mach is
  signal d_req     : std_logic:= '0';
  signal q_req     : std_logic:= '0';
  signal d_busy0   : std_logic:= '0';
  signal d_busy1   : std_logic:= '0';
  signal d_busy2   : std_logic:= '0';
  signal d_busy3   : std_logic:= '0';
  signal q_busy0   : std_logic:= '0';
  signal q_busy1   : std_logic:= '0';
  signal q_busy2   : std_logic:= '0';
  signal q_busy3   : std_logic:= '0';
  signal reenable_s: std_logic:= '0';
  signal d_req_m1  : std_logic:= '0';
  signal d_busy0_m1  : std_logic:= '0';
  signal d_busy1_m1  : std_logic:= '0';
  signal d_busy2_m1  : std_logic:= '0';
  signal d_busy3_m1  : std_logic:= '0';
  signal busy0_pulse  : std_logic:= '0';
  signal busy1_pulse  : std_logic:= '0';
  signal busy2_pulse  : std_logic:= '0';
  signal busy3_pulse  : std_logic:= '0';
  signal req_pulse : std_logic:= '0';
  signal reenable_pulse : std_logic:= '0';
  signal reenable_andm : std_logic:= '0';
  signal reenable_and : std_logic:= '0';

begin


  -- sample all signals into registers
  regs_in : process(clk) is
  begin
	  if (rising_edge(clk)) then
		  d_busy0 <= busy0;
		  d_busy1 <= busy1;
		  d_busy2 <= busy2;
		  d_busy3 <= busy3;
		  d_req   <= req;
	  end if;
  end process regs_in;

  -- rising_edge for req
  rise_req : process(clk) is
  begin
	  if (rising_edge(clk)) then
		  d_req_m1 <= d_req;
		  req_pulse <= d_req and not(d_req_m1);
	  end if;
  end process rise_req;

  -- falling edge for busy0-3
  fall_busy : process(clk) is
  begin
	  if (rising_edge(clk)) then
		  d_busy0_m1 <= d_busy0;
		  d_busy1_m1 <= d_busy1;
		  d_busy2_m1 <= d_busy2;
		  d_busy3_m1 <= d_busy3;
		  busy0_pulse <= not(d_busy0) and d_busy0_m1;
		  busy1_pulse <= not(d_busy1) and d_busy1_m1;
		  busy2_pulse <= not(d_busy2) and d_busy2_m1;
		  busy3_pulse <= not(d_busy3) and d_busy3_m1;
	  end if;
  end process fall_busy;

  -- waiting state latches
  wait_latch: process(clk) is
  begin
	  if (rising_edge(clk)) then
		  if (reenable_pulse='1' or rst='1') then
			  q_req <= '0';
		  else
			  if (q_req = '0') then
			  	q_req <= req_pulse;
			  end if;
		  end if;
	  end if;
  end process wait_latch;
  
  latch_0: process(clk) is
  begin
	  if (rising_edge(clk)) then
		  if (reenable_pulse='1' or rst='1') then
			  q_busy0 <= '0';
		  else
			  if (q_busy0 = '0') then
			  	q_busy0 <= busy0_pulse;
			  end if;
		  end if;
	   end if;
  end process latch_0;
  
  latch_1: process(clk) is
  begin
	  if (rising_edge(clk)) then
		  if (reenable_pulse='1' or rst='1') then
			  q_busy1 <= '0';
		  else
			  if (q_busy1 = '0') then
			  	q_busy1 <= busy1_pulse;
			  end if;
		  end if;
	   end if;
  end process latch_1;
  
  latch_2: process(clk) is
  begin
	  if (rising_edge(clk)) then
		  if (reenable_pulse='1' or rst='1') then
			  q_busy2 <= '0';
		  else
			  if (q_busy2 = '0') then
			  	q_busy2 <= busy2_pulse;
			  end if;
		  end if;
	   end if;
  end process latch_2;
  
  latch_3: process(clk) is
  begin
	  if (rising_edge(clk)) then
		  if (reenable_pulse='1' or rst='1') then
			  q_busy3 <= '0';
		  else
			  if (q_busy3 = '0') then
			  	q_busy3 <= busy3_pulse;
			  end if;
		  end if;
	   end if;
  end process latch_3;

  -- five input and gate
  reenable_and <= q_req and q_busy0 and q_busy1 and q_busy2 and q_busy3;

  -- rising edge pulse for reenable
  rise_reenable: process(clk) is
  begin
	  if (rising_edge(clk)) then
		  reenable_andm <= reenable_and;
		  reenable_pulse <= reenable_and and not(reenable_andm);
	  end if;
  end process rise_reenable;

  reenable <= reenable_pulse;

end architecture struct;
