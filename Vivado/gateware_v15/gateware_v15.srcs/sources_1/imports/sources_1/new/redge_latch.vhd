library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity redge_latch is
    generic (
        N : integer := 32
    );
    Port (  clk, aclr, start : in STD_LOGIC;
            Q : out STD_LOGIC
          );
end redge_latch;

architecture behv of redge_latch is
    signal enb_i : std_logic;
begin
    process (clk,aclr,start)
    begin
        if (aclr='1') then
            enb_i <= '0';
        elsif (rising_edge(clk)) then
            if (enb_i='1' or start='1') then
                    enb_i <= '1';
                else
                    enb_i<='0';
            end if;
        end if;
    end process;
    Q <= enb_i;
end architecture;
	
