-- ethernet buffer with single trigger
-- interfaces with dual clock bram
-- Originally Adrian Sinclair
-- Matt update: modified for bram_width = 256
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity eth_buffer is
  generic (
            bram_depth : positive := 10;
            bram_width : positive := 256;
            read_count_width : positive := 15
          );
  port (
         start         : in std_logic;
         clk_fab       : in std_logic;
         clk_eth       : in std_logic;
         r_data        : in std_logic_vector(bram_width - 1 downto 0); 
         
         w_max_count   : in std_logic_vector(bram_depth - 1 downto 0); -- := "111111110"; -- 511
         r_max_count   : in std_logic_vector(read_count_width-1 downto 0);--  := "111111111,11111"; -- 16383 

         w_data_addr   : out std_logic_vector(bram_depth - 1 downto 0);
         w_data_en     : out std_logic; 
         r_data_en     : out std_logic; 
         eth_start_trig: out std_logic; 
         r_data_addr   : out std_logic_vector(bram_depth - 1 downto 0);
         data_byte     : out std_logic_vector(8 - 1 downto 0)
       );
end entity eth_buffer;

architecture struct of eth_buffer is
  signal w_count      : std_logic_vector(bram_depth -1 downto 0);
  signal w_counting   : std_logic_vector(0 downto 0);
  signal r_count      : std_logic_vector(read_count_width-1 downto 0);
  signal r_counting   : std_logic_vector(0 downto 0);
  --signal w_max_count  : std_logic_vector(bram_depth-1 downto 0) := "111111110"; -- 511
  --signal r_max_count  : std_logic_vector(read_count_width-1 downto 0) := "111111111,1110"; -- 8191
  signal cdc1_s       : std_logic_vector(0 downto 0);
  signal cdc2_s       : std_logic_vector(0 downto 0);
  signal r_start      : std_logic;
  signal delayed_count_int   : std_logic_vector(5-1 downto 0);
  signal delayed_count       : std_logic_vector(5-1 downto 0);
  signal mux_sel_s           : std_logic_vector(5-1 downto 0);
begin
  
  -- write counter 
  counter1 : entity work.counterN(rtl)
    generic map (width=>bram_depth)
    port map (w_counting(0), clk_fab, start, w_count(bram_depth -1 downto 0)); 
 
  -- assign write addr and data out to ports
  w_data_addr <= w_count;
  w_data_en   <= w_counting(0);
  r_data_en   <= r_counting(0);
 
  -- write counter valid if less than max count
  comp1 : process(clk_fab) is
  begin
    if (falling_edge(clk_fab)) then
      if (w_count = w_max_count) then
        w_counting(0) <= '0';
      else
        w_counting(0) <= '1';
      end if;
    end if;
  end process comp1;

  -- clock domain crossing registers
  reg1 : entity work.regN(struct)
    generic map (width=>1)
    port map (w_counting, '1', clk_eth, '0', cdc1_s);

  reg2 : entity work.regN(struct)
    generic map (width=>1)
    port map (cdc1_s, '1', clk_eth, '0', cdc2_s);
    --port map (accum_s(width-1 downto 0), en, clk, rst, accum_s_z1);
  
  -- falling edge trigger for reading data 
  edg1 : entity work.falling_edge_detect(struct)
    port map (cdc2_s(0), clk_eth, '0', r_start);

  -- read counter 
  counter2 : entity work.counterN(rtl)
    generic map (width=>read_count_width)
    port map (r_counting(0), clk_eth, r_start, r_count(read_count_width-1 downto 0)); 

  -- assign read addr and data out to ports
  r_data_addr <= r_count(read_count_width-1 downto 5); -- top bits for address 
  -- mux select slice of count
  rega: entity work.regN(struct)
    generic map (width=>5)
    port map (r_count(4 downto 0), '1', clk_eth, '0', delayed_count_int);
    
  regb: entity work.regN(struct)
    generic map (width=>5)
    port map (delayed_count_int, '1', clk_eth, '0', delayed_count);
    
  mux_sel_s <= delayed_count;
  
  -- read counter valid if less than max count
  comp2 : process(clk_eth) is
  begin
    if (falling_edge(clk_eth)) then
      if (r_count = r_max_count) then
        r_counting(0) <= '0';
      else
        r_counting(0) <= '1';
      end if;
    end if;
  end process comp2;
  
  -- rising edge trigger for reading data to send to eth start 
  edg2 : entity work.edge_detect(struct)
    port map (r_counting(0), clk_eth, '0', eth_start_trig);

  -- mux for data slice
  mux1 : process(clk_eth,mux_sel_s) is
  begin
    if (rising_edge(clk_eth)) then
        case mux_sel_s is
            when "00000" => data_byte <= r_data(8-1 downto 8-8);
            when "00001" => data_byte <= r_data(16-1 downto 16-8);
            when "00010" => data_byte <= r_data(24-1 downto 24-8);
            when "00011" => data_byte <= r_data(32-1 downto 32-8);
            when "00100" => data_byte <= r_data(40-1 downto 40-8);
            when "00101" => data_byte <= r_data(48-1 downto 48-8);
            when "00110" => data_byte <= r_data(56-1 downto 56-8);
            when "00111" => data_byte <= r_data(64-1 downto 64-8);
            when "01000" => data_byte <= r_data(72-1 downto 72-8);
            when "01001" => data_byte <= r_data(80-1 downto 80-8);
            when "01010" => data_byte <= r_data(88-1 downto 88-8);
            when "01011" => data_byte <= r_data(96-1 downto 96-8);
            when "01100" => data_byte <= r_data(104-1 downto 104-8);
            when "01101" => data_byte <= r_data(112-1 downto 112-8);
            when "01110" => data_byte <= r_data(120-1 downto 120-8);
            when "01111" => data_byte <= r_data(128-1 downto 128-8);
            when "10000" => data_byte <= r_data(136-1 downto 136-8);
            when "10001" => data_byte <= r_data(144-1 downto 144-8);
            when "10010" => data_byte <= r_data(152-1 downto 152-8);
            when "10011" => data_byte <= r_data(160-1 downto 160-8);
            when "10100" => data_byte <= r_data(168-1 downto 168-8);
            when "10101" => data_byte <= r_data(176-1 downto 176-8);
            when "10110" => data_byte <= r_data(184-1 downto 184-8);
            when "10111" => data_byte <= r_data(192-1 downto 192-8);
            when "11000" => data_byte <= r_data(200-1 downto 200-8);
            when "11001" => data_byte <= r_data(208-1 downto 208-8);
            when "11010" => data_byte <= r_data(216-1 downto 216-8);
            when "11011" => data_byte <= r_data(224-1 downto 224-8);
            when "11100" => data_byte <= r_data(232-1 downto 232-8);
            when "11101" => data_byte <= r_data(240-1 downto 240-8);
            when "11110" => data_byte <= r_data(248-1 downto 248-8);
            when "11111" => data_byte <= r_data(256-1 downto 256-8);
            when others  => data_byte <= x"FF";
      end case;
    end if;
  end process mux1;  
end architecture struct;