library ieee; use ieee.std_logic_1164.all;

entity mux is
  generic (width : positive := 16);
  port ( 
         a_0   : in std_logic_vector(width-1 downto 0);
         b_1   : in std_logic_vector(width-1 downto 0);
         sel : in std_logic;
         z   : out std_logic_vector(width-1 downto 0)
       );
end entity mux;
  
architecture basic of mux is
begin 

  muxer: process(sel) is
  begin
    if (sel='0') then
       z <= a_0;
    elsif (sel='1') then
       z <= b_1;
    end if;
  end process muxer;

end architecture basic;
