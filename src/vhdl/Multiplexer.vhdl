library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity mux is
Port (Sel : in std_logic_vector(3 downto 0);
m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16 : in
STD_LOGIC_VECTOR (7 downto 0);
T : out std_logic_vector (7 downto 0));
end mux;
architecture Behavioral of mux is
begin
process (Sel, m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16)
begin
if (Sel = "0000") then T<= m1;
elsif (Sel = "0001") then T<= m2;
elsif (Sel = "0010") then T<= m3;
elsif (Sel = "0011") then T<= m4;
elsif (Sel = "0100") then T<= m5;
elsif (Sel = "0101") then T<= m6;
elsif (Sel = "0110") then T<= m7;
elsif (Sel = "0111") then T<= m8;
elsif (Sel = "1000") then T<= m9;
elsif (Sel = "1001") then T<= m10;
elsif (Sel = "1010") then T<= m11;
elsif (Sel = "1011") then T<= m12;
elsif (Sel = "1100") then T<= m13;
elsif (Sel = "1101") then T<= m14;
elsif (Sel = "1110") then T<= m15;
else T<= m16;
end if ;
end process ;
end Behavioral;