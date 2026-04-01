library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity m13 is
Port (e,f,g,h : in std_logic;
k7,k6,k5,k4,k3,k2,k1,k0 : out std_logic);
end m13;
architecture Behavioral of m13 is
begin
process (e,f,g,h)
begin
k7 <= (not e and not f and h) or (f and not h) or (e and not h);
k6 <= ’0’;
k5 <= (not e and not f and not h) or (f and h) or (e and h);
k4 <= (not f and not h) or (not e and f and h) or (e and not h);
k3 <= (not e and not f and not g and h) or (not f and g and not h) or
(not e and f and not g and not h) or (f and g and h) or (e and g);
k2 <= (g) or (f);
k1 <= (not e and h) or (g) or (f) or (e and not h);
k0 <= (not e and not g and not h) or (f) or (e and not g and h);
end process;
end behavioral;