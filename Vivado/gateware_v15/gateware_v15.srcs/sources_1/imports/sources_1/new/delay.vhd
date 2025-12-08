----------------------------------------------------------------------------------
-- Company: University of British Columbia 
-- Engineer: Adrian Sinclair
-- 
-- Create Date: 06/09/2022 09:26:37 AM
-- Design Name: 
-- Module Name: delay - Behavioral
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

entity delay is
    generic (width : positive := 32);
    Port ( d : in STD_LOGIC_VECTOR (width-1 downto 0);
           q : out STD_LOGIC_VECTOR (width-1 downto 0);
           clk : in STD_LOGIC);
end delay;

architecture Behavioral of delay is

begin
delay: process(clk) is
begin
    if rising_edge(clk) then
        q <= d;
    end if;
end process delay;
end Behavioral;
