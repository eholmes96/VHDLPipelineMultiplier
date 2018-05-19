LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.std_logic_signed.all;

ENTITY exh_reg_vhdl IS
	PORT(Input			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  Clock			:IN STD_LOGIC;
		  Output			:OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	 End exh_reg_vhdl;
	
ARCHITECTURE behavior OF exh_reg_vhdl IS
	
	SIGNAL Outsig		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
BEGIN
	
		PROCESS(Clock, Outsig)
			BEGIN
				IF Clock'Event AND Clock = '1' then
					Outsig <= Input;
				ELSE
					Outsig <= Outsig;
				END IF;
			END PROCESS;
		Output <= Outsig;
END Behavior;