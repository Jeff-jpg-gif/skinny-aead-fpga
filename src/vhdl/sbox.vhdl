library ieee;
use ieee.std_logic_1164.all;
entity sbox is
port (
STATE : in std_logic_vector(7 downto 0);
SUB_OUT : inout std_logic_vector(7 downto 0)
);
end sbox;
architecture behavioral of sbox is
signal in_mod, selx: std_logic_vector(3 downto 0);
signal in_mux1,in_mux2,in_mux3,in_mux4,in_mux5,in_mux6,in_mux7,in_mux8,
in_mux9,in_mux10 ,in_mux11,in_mux12,in_mux13,in_mux14,in_mux15,in_mux16 :
std_logic_vector(7 downto 0);
component m1 is
	Port ( e,f,g,h : in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0 : out STD_LOGIC);
end component m1;
component m2 is
	Port ( e,f,g,h : in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0 : out STD_LOGIC);
end component m2;
component m3 is
	Port ( e,f,g,h : in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0 : out STD_LOGIC);
end component m3;
component m4 is
	Port ( e,f,g,h : in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0 : out STD_LOGIC);
end component m4;
component m5 is
	Port ( e,f,g,h: in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0: out STD_LOGIC);
end component m5;
component m6 is
	Port ( e,f,g,h: in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0: out STD_LOGIC);
end component m6;
component m7 is
	Port ( e,f,g,h : in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0 : STD_LOGIC);
end component m7;
component m8 is
	Port ( e,f,g,h : in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0 : out STD_LOGIC);
end component m8;
component m9 is
	Port ( e,f,g,h : in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0: out STD_LOGIC);
end component m9;
component m10 is
	Port ( e,f,g,h: in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0 : out STD_LOGIC);
end component m10;
component m11 is
	Port ( e,f,g,h: in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0: out STD_LOGIC);
end component m11;
component m12 is
	Port ( e,f,g,h: in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0: out STD_LOGIC);
end component m12;
component m13 is
	Port ( e,f,g,h: in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0: out STD_LOGIC);
end component m13;
component m14 is
	Port ( e,f,g,h: in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0 : out STD_LOGIC);
end component m14;
component m15 is
	Port ( e,f,g,h: in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0 : out STD_LOGIC);
end component m15;
component m16 is
	Port ( e,f,g,h : in STD_LOGIC;
k7,k6,k5,k4,k3,k2,k1,k0 : out STD_LOGIC);
end component m16;
component mux is
	Port (Sel : in std_logic_vector(3 downto 0);
      m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16 : in
STD_LOGIC_VECTOR (7 downto 0);
T: out std_logic_vector (7 downto 0));
end component mux;
begin
in_mod <= STATE(3) & STATE(2) & STATE(1) & STATE(0);
selx <= STATE(7) & STATE(6) & STATE(5) & STATE(4);
mod1: m1 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux1(7),in_mux1(6),
in_mux1(5),in_mux1(4),in_mux1(3),in_mux1(2),in_mux1(1),in_mux1(0));
mod2: m2 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux2(7),in_mux2(6),
in_mux2(5),in_mux2(4),in_mux2(3),in_mux2(2),in_mux2(1),in_mux2(0));
mod3: m3 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux3(7),in_mux3(6),
in_mux3(5),in_mux3(4),in_mux3(3),in_mux3(2),in_mux3(1),in_mux3(0));
mod4: m4 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux4(7),in_mux4(6),
in_mux4(5),in_mux4(4),in_mux4(3),in_mux4(2),in_mux4(1),in_mux4(0));
mod5: m5 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux5(7),in_mux5(6),
in_mux5(5),in_mux5(4),in_mux5(3),in_mux5(2),in_mux5(1),in_mux5(0));
mod6: m6 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux6(7),in_mux6(6),
in_mux6(5),in_mux6(4),in_mux6(3),in_mux6(2),in_mux6(1),in_mux6(0));
mod7: m7 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux7(7),in_mux7(6),
in_mux7(5),in_mux7(4),in_mux7(3),in_mux7(2),in_mux7(1),in_mux7(0));
mod8: m8 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux8(7),in_mux8(6),
in_mux8(5),in_mux8(4),in_mux8(3),in_mux8(2),in_mux8(1),in_mux8(0));
mod9: m9 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux9(7),in_mux9(6),
in_mux9(5),in_mux9(4),in_mux9(3),in_mux9(2),in_mux9(1),in_mux9(0));
mod10: m10 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux10(7),
in_mux10(6),in_mux10(5),in_mux10(4),in_mux10(3),in_mux10(2),in_mux10(1),
in_mux10(0));
mod11: m11 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux11(7),
in_mux11(6),in_mux11(5),in_mux11(4),in_mux11(3),in_mux11(2),in_mux11(1),
in_mux11(0));
mod12: m12 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux12(7),
in_mux12(6),in_mux12(5),in_mux12(4),in_mux12(3),in_mux12(2),in_mux12(1),
                    in_mux12(0));
mod13: m13 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux13(7),
in_mux13(6),in_mux13(5),in_mux13(4),in_mux13(3),in_mux13(2),in_mux13(1),
in_mux13(0));
mod14: m14 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux14(7),
in_mux14(6),in_mux14(5),in_mux14(4),in_mux14(3),in_mux14(2),in_mux14(1),
in_mux14(0));
mod15: m15 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux15(7),
in_mux15(6),in_mux15(5),in_mux15(4),in_mux15(3),in_mux15(2),in_mux15(1),
in_mux15(0));
mod16: m16 Port map(in_mod(3),in_mod(2),in_mod(1),in_mod(0),in_mux16(7),
in_mux16(6),in_mux16(5),in_mux16(4),in_mux16(3),in_mux16(2),in_mux16(1),
in_mux16(0));
mux16: mux Port map(selx,in_mux1,in_mux2,in_mux3,in_mux4,in_mux5,in_mux6,
in_mux7,in_mux8,in_mux9,in_mux10,in_mux11,in_mux12,in_mux13,in_mux14,in_mux15,
in_mux16,SUB_OUT);
end architecture behavioral;