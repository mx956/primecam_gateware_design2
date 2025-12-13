library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counterN is
generic( width: positive := 16);
port(
  enable : in std_logic;
  clk    : in std_logic;
  reset  : in std_logic; 
  count_out  : out std_logic_vector(width-1 downto 0)
  );
end entity;

architecture rtl of counterN is
  signal count : unsigned(width-1 downto 0);

begin
--  process (clk,reset) begin
--    if (reset='1' and rising_edge(clk)) then
--      count <= (others => '0');
--    elsif (rising_edge(clk) and reset ='0') then
--      if (enable = '1') then
--        count <= count + 1;
--      end if;
--    end if;
--  end process;
  
 --with else clk fix Ryan
    process (clk,reset) begin
    if (rising_edge(clk)) then
    if reset='1' then
        count <= (others => '0');
    else
      if (enable = '1') then
        count <= count + 1;
      end if;
    end if;
    end if;
  end process;

   -- convert data types
   count_out <= std_logic_vector(count);
end architecture; 
