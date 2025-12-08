library ieee; use ieee.std_logic_1164.all;
entity d_ff is
  port ( d, clk, rst : in std_logic; q: out std_logic);
end d_ff;

architecture basic of d_ff is
begin
  ff_behaviour : process(clk,rst) is
  begin
    if (rst='1') then
      q <= '0';
    elsif (rising_edge(clk)) then
      q <= d;
    end if;
  end process ff_behaviour;
end architecture basic;
