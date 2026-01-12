library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity accumN is
generic( width: positive := 16);
port(
  a          : in std_logic_vector(width-1 downto 0);
  enable     : in std_logic;
  clk        : in std_logic;
  reset      : in std_logic; 
  b          : out std_logic_vector(width-1 downto 0)
  );
end entity;

architecture rtl of accumN is
  signal sum : unsigned(width-1 downto 0);

begin
  process (clk, reset) begin
    if (reset='1') then
      sum <= (others => '0');
    elsif (rising_edge(clk)) then
      if (enable = '1') then
        sum <= sum + unsigned(a);
      end if;
    end if;
  end process;
  -- convert data types
  addconv_types : process (clk) is
  begin
    if (rising_edge(clk)) then
      b <= std_logic_vector(sum);
    end if;
  end process addconv_types;
end architecture; 
