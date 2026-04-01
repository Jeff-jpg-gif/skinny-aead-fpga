library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC _STD.ALL;
entity m6 is
Port (e,f,g,h : in std_logic;
k7,k6,k5,k4,k3,k2,k1,k0 : out std_logic);
end m6;
architecture Behavioral of m6 is
begin
process (e,f,g,h)
begin
k7 <= ’0’;
k6 <= (e) or (not f and not g) or (g and not h) or (f and h);
k5 <= (e and h) or (not e and not f and not h) or (g and h) or (not e
and f and not g);
k4 <= (e);
k3 <= (not e and not f and not g and h) or (not f and g and not h) or
(not e and f and not g and not h) or (f and g and h) or (e and g);
k2 <= (g) or (f);
k1 <= (not f and not g);
k0 <= (not e and g and h) or (not e and f and not g and not h) or
(e and f and g);
end process;
end behavioral;