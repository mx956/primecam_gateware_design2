----------------------------------------------------------------------------------
-- Company:
-- Engineer:
-- 
-- Create Date: 02/03/2021 03:30:10 PM
-- Design Name:
-- Module Name: eth_done_pulse - Behavioral
-- Project Name:
-- Target Devices:
-- Tool Versions:
-- Description:
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity redge_pulse is
    Port ( clk : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC);
end redge_pulse;

architecture Behavioral of redge_pulse is
    signal Dprev : std_logic;
begin

process(clk)
begin
if rising_edge(clk) then
    Dprev <= D;
end if;
end process;

Q <= not Dprev and D;

end Behavioral;