library ieee; use ieee.std_logic_1164.all;
entity or2 is
  port ( a, b : in std_logic; y: out std_logic);
end or2;

architecture basic of or2 is
begin
  y <= a or b;
end architecture basic;
