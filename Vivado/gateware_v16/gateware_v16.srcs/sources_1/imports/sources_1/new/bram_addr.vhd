library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bram_addr is
    generic (N : integer := 32);
    Port (  clk, aclr, enb : in STD_LOGIC; 
            Q : out STD_LOGIC_VECTOR(N-1 downto 0)
          );
end bram_addr;

architecture behv of bram_addr is
    signal val : unsigned(19 downto 0);
begin

    Q <= "000000000000" & std_logic_vector(val);

    counter : process (clk,aclr,enb) 
    begin 
        if (aclr='1') then 
            val <= (others => '0');
        elsif (rising_edge(clk)) then
            if (enb='1') then    
                val <= val + 4; --count while bellow threshold n
            else 
                val <= (others => '0');
            end if;
        end if;  
    end process;
    
end architecture;