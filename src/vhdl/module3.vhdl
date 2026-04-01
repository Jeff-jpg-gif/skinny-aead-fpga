library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity m3 is
Port (e,f,g,h : in std_logic;
k7,k6,k5,k4,k3,k2,k1,k0 : out std_logic);
end m3;
architecture Behavioral of m3 is
begin
process (e,f,g,h)
begin
k7 <= ’1’;
k6 <= ’1’;
k5 <= (not e and not f and not h) or (f and h) or (e and h);
k4 <= (e);
k3 <= (not e and not f and not g and h) or (not f and g and not h) or
(not e and f and not g and not h) or (f and g and h) or (e and g);
k2 <= (not f and not g);
k1 <= ’0’;
k0 <= (not e and g and h) or (not e and not g and not h) or
(e and not f and not g) or (e and f and g);
end process;
end behavioral;