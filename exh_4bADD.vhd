Library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY exh_4bADD IS
	PORT (x,y		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Cin		: IN STD_LOGIC;
			s			: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			Cout		: OUT STD_LOGIC);
	END exh_4bADD;
	
ARCHITECTURE Behavior OF exh_4bADD IS
		SIGNAL c	: STD_LOGIC_VECTOR(4 DOWNTO 0);
		SIGNAL g,p : STD_LOGIC_VECTOR(3 DOWNTO 0);
		
BEGIN 
	p(3 DOWNTO 0) <= x(3 DOWNTO 0) XOR (y(3 DOWNTO 0) XOR (Cin & Cin & Cin & Cin));
	g(3 DOWNTO 0) <= x(3 DOWNTO 0) AND (y(3 DOWNTO 0) XOR (Cin & Cin & Cin & Cin));
	
	c(0) <= Cin;
	c(1) <= g(0) OR (p(0) AND c(0));
	c(2) <= g(1) OR (p(1) AND g(0)) OR (p(1) AND p(0) AND c(0));
	c(3) <= g(2) OR (p(2) AND g(1)) OR (p(2) AND p(1) AND g(0)) OR (p(2) AND p(1) AND p(0) AND c(0));
	c(4) <= g(3) OR (p(3) AND g(2)) OR (p(3) AND p(2) AND g(1)) OR (p(3) AND p(2) AND p(1) AND g(0)) OR (p(3) AND p(2) AND p(1) AND p(0) AND c(0));
	Cout <= c(4);
	
	
	--s(0) <= p(0) XOR C(0);
	--s(1) <= p(1) XOR (g(0) OR (p(0) AND c(0)));
	--s(2) <= p(2) XOR (g(1) OR (p(1) AND g(0)) OR (p(1) AND p(0) AND c(0)));
	--s(3) <= p(3) XOR (g(2) OR (p(2) AND g(1)) OR (p(2) AND p(1) AND g(0)) OR (p(2) AND p(1) AND p(0) AND c(0)));
	
	
	s(0) <= p(0) XOR c(0);
	s(1) <= p(1) XOR c(1);
	s(2) <= p(2) XOR c(2);
	s(3) <= p(3) XOR c(3);
	
	
END Behavior;
