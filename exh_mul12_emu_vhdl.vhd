LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.std_logic_signed.all;

ENTITY exh_mul12_emu_vhdl IS
	PORT(Multiplier		:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  CLOCK_50			:IN STD_LOGIC;
		  output 			:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END exh_mul12_emu_vhdl;

Architecture Structure OF exh_mul12_emu_vhdl IS

	COMPONENT exh_inpipe_vhdl 
		  PORT(Mcand			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				 mPlier0			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				 Clock			:IN STD_LOGIC;
				 Output			:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END Component;
BEGIN 

	Stage0: exh_inpipe_vhdl PORT MAP( Multiplier, Multiplier, CLOCK_50, output);
	
END structure;