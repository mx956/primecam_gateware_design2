-- D flip-flop
-- Adrian Sinclair 2022
library ieee; use ieee.std_logic_1164.all;

entity d_flip is
  	generic ( width : positive := 4);
 	port ( data_in : in std_logic_vector(width - 1 downto 0);
     	en, clk, rst : in std_logic;
     	data_out : out std_logic_vector(width - 1 downto 0) );
end entity d_flip;

architecture struct of d_flip is 
  	signal int_clk : std_logic;

begin 
	d_flip_behav: process( int_clk, rst) is
	begin
		if (rst='1') then
			data_out <= (others => '0');
		elsif (rising_edge(int_clk)) then
			data_out <= data_in;
		end if;
	end process d_flip_behav;

	int_clk <= en and clk;	

end architecture struct;
