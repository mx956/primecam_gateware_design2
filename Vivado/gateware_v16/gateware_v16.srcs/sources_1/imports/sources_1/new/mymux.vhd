library ieee; use ieee.std_logic_1164.all;

entity mymux is
  generic (width : positive := 128);
  port ( 
         a_0   : in std_logic_vector(width-1 downto 0);
         b_1   : in std_logic_vector(width-1 downto 0);
         sel : in std_logic;
         clk : in std_logic;
         z   : out std_logic_vector(width-1 downto 0)
       );
end entity mymux;
  
architecture basic of mymux is
begin 
mux: process(clk) is
  begin
    if rising_edge(clk) then
        if (sel='0') then
            z <= a_0;
        elsif (sel='1') then
            z <= b_1;
        end if;
    end if;
  end process mux;
end architecture basic;