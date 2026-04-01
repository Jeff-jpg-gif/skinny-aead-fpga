library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity m16 is
Port (e,f,g,h : in std_logic;
k7,k6,k5,k4,k3,k2,k1,k0 : out std_logic);
end m16;
architecture Behavioral of m16 is
begin
process (e,f,g,h)
begin
k7 <= ’1’;
k6 <= ’1’;
k5 <= (not e and not f and not h) or (f and h) or (e and h);
k4 <= (e);
k3 <= (not e and not f and not g and h) or (not f and g and not h) or
(not e and f and not g and not h) or (f and g and h) or (e and g);
k2 <= (g) or (f);
k1 <= ’1’;
k0 <= (f);
end process;
end behavioral;