----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/06/2019 11:21:06 AM
-- Design Name: 
-- Module Name: cmp - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity last_count is
generic (
        N : integer := 13;
        LOAD : STD_LOGIC := '1'
   );
    Port ( 
            count_val : in STD_LOGIC_VECTOR (N-1 downto 0);
            Q, Q_bar : out STD_LOGIC
          );
end last_count;

architecture Behavioral of last_count is
--signal max : unsigned(8 downto 0) := ;
signal pulse : STD_LOGIC;
begin
process(count_val) begin
      if ((2**N-1=unsigned(count_val)) and (LOAD='1')) then --STOP WHEN MAX  and (LOAD='1')
        pulse <= '1'; --stop count, ready to load bram to PYNQ
      else
        pulse <= '0'; --writing adc to bram
      end if;
end process;

Q <= pulse;
Q_bar <= not pulse;

end architecture;