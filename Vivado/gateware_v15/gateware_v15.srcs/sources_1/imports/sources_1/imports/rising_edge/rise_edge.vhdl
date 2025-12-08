-- rising edge pulse
-- Adrian Sinclair 2022
library ieee; use ieee.std_logic_1164.all; use ieee.numeric_std.all;

entity rise_edge is
  port ( a  : in std_logic;
         clk    : in std_logic;
         q : out std_logic
       );
end entity rise_edge;

architecture struct of rise_edge is
  signal delay_out     : std_logic;
  signal inv_delay_out : std_logic;
  signal inv_delay_out_2 : std_logic;

begin
  
  inv_delay_out <= not(delay_out);

  -- output and gate
  inv_delay_out_2 <= a and inv_delay_out; 

  delay_one : process(clk) is
  begin
    if (rising_edge(clk)) then
      delay_out <= a;
    end if;
  end process delay_one; 
  
  delay_two : process(clk) is
  begin
    if (rising_edge(clk)) then
      q <= inv_delay_out_2;
    end if;
  end process delay_two; 
end architecture struct;
