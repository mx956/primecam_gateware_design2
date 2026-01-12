library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity byte_slice is 
    generic( slots : integer := 4;
			 data_width : integer := 16);
    port(
		clk : in std_logic;
		--sel : in std_logic; --NormalOP/~Transparent
		sel : in std_logic_vector(3 downto 0);
		Q : out std_logic_vector(data_width-1 downto 0);
		D : in std_logic_vector((data_width*slots)-1 downto 0)
	);
end byte_slice;


architecture behv of byte_slice is 
    alias D0 : std_logic_vector(data_width-1 downto 0) is D((data_width*1)-1 downto data_width*0);
    alias D1 : std_logic_vector(data_width-1 downto 0) is D((data_width*2)-1 downto data_width*1);
    alias D2 : std_logic_vector(data_width-1 downto 0) is D((data_width*3)-1 downto data_width*2);
    alias D3 : std_logic_vector(data_width-1 downto 0) is D((data_width*4)-1 downto data_width*3);
    alias D4 : std_logic_vector(data_width-1 downto 0) is D((data_width*5)-1 downto data_width*4);
    alias D5 : std_logic_vector(data_width-1 downto 0) is D((data_width*6)-1 downto data_width*5);
    alias D6 : std_logic_vector(data_width-1 downto 0) is D((data_width*7)-1 downto data_width*6);
    alias D7 : std_logic_vector(data_width-1 downto 0) is D((data_width*8)-1 downto data_width*7);
    alias D8 : std_logic_vector(data_width-1 downto 0) is D((data_width*9)-1 downto data_width*8);
    alias D9 : std_logic_vector(data_width-1 downto 0) is D((data_width*10)-1 downto data_width*9);
    alias DA : std_logic_vector(data_width-1 downto 0) is D((data_width*11)-1 downto data_width*10);
    alias DB : std_logic_vector(data_width-1 downto 0) is D((data_width*12)-1 downto data_width*11);
    alias DC : std_logic_vector(data_width-1 downto 0) is D((data_width*13)-1 downto data_width*12);
    alias DD : std_logic_vector(data_width-1 downto 0) is D((data_width*14)-1 downto data_width*13);
    alias DE : std_logic_vector(data_width-1 downto 0) is D((data_width*15)-1 downto data_width*14);
    alias DF : std_logic_vector(data_width-1 downto 0) is D((data_width*16)-1 downto data_width*15);
begin 
    process (clk,D,sel)
    begin
        if (clk'event and clk='1') then
        case SEL is 
            when X"F" =>    Q <= D0;
            when X"E" =>    Q <= D1;
            when X"D" =>    Q <= D2;
            when X"C" =>    Q <= D3;
            when X"B" =>    Q <= D4;
            when X"A" =>    Q <= D5;
            when X"9" =>    Q <= D6;
            when X"8" =>    Q <= D7;
            when X"7" =>    Q <= D8;
            when X"6" =>    Q <= D9;
            when X"5" =>    Q <= DA;
            when X"4" =>    Q <= DB;
            when X"3" =>    Q <= DC;
            when X"2" =>    Q <= DD;
            when X"1" =>    Q <= DE;
            when X"0" =>    Q <= DF;
            when others =>  Q <= X"21";
        end case;
        end if;
    end process;
end behv;
