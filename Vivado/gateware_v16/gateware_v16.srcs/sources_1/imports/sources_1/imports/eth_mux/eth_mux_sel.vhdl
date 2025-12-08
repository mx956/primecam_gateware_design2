-- etherent mux select - 4 channel design
-- Adrian Sinclair 2024
library ieee; use ieee.std_logic_1164.all; use ieee.numeric_std.all;

entity eth_mux_sel is
  port ( a      : in std_logic;
         b      : in std_logic;
         c      : in std_logic;
         d      : in std_logic;
         clk    : in std_logic;
         sel    : out std_logic_vector(1 downto 0);
         e      : out std_logic
       );
end entity eth_mux_sel;

architecture struct of eth_mux_sel is
signal sel_word : std_logic_vector(3 downto 0) := b"0000";

begin

  sel_word <= a & b & c & d;
  
  -- Combinational logic for e: e = '1' if two or more of a, b, c, d are '1', else '0'
  e <= '1' when (a and b) = '1' or
                (a and c) = '1' or
                (a and d) = '1' or
                (b and c) = '1' or
                (b and d) = '1' or
                (c and d) = '1' else
       '0';

  gen_sel: process(clk,a,b,c,d) is
  begin
    if (rising_edge(clk)) then
      if (sel_word = b"1000") then
        sel <= b"00";
      elsif (sel_word = b"0100") then
        sel <= b"01";
      elsif (sel_word = b"0010") then
        sel <= b"10";
      elsif (sel_word = b"0001") then
        sel <= b"11";
      end if;
    end if;
  end process gen_sel;

end architecture struct;

