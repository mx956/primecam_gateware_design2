library ieee; use ieee.std_logic_1164.all;

entity regN is
  generic ( width : positive := 16);
  port ( data_in : in std_logic_vector(width - 1 downto 0);
     en, clk, rst : in std_logic;
     data_out : out std_logic_vector(width - 1 downto 0) );
end entity regN;

architecture struct of regN is 
  signal int_clk : std_logic;
begin
  reg_array : for bit_index in 0 to width - 1 generate
  begin 
    reg : entity work.d_ff(basic)
      port map (data_in(bit_index), int_clk, rst, data_out(bit_index));
  end generate reg_array;
  gate : entity work.and2(basic)
    port map (en, clk, int_clk);
end architecture struct;
