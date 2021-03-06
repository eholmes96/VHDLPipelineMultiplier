LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.std_logic_signed.all;

ENTITY exh_4bAND IS
	PORT( in4b 			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		   in1b			:IN STD_LOGIC;
			out4b			:OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END exh_4bAND;
	
ARCHITECTURE Structure OF exh_4bAND IS

Begin
	
		out4b <= in4b(3 DOWNTO 0) AND (in1b & in1b & in1b & in1b);
		
END Structure;
	