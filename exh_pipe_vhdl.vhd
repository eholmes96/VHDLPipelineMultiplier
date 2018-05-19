LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.std_logic_signed.all;

ENTITY exh_pipe_vhdl IS
	PORT(Mcand			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  mPlier0		:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  Clock			:IN STD_LOGIC;
		  Output			:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	 End exh_pipe_vhdl;
		  

ARCHITECTURE Structure OF exh_pipe_vhdl IS
	
	SIGNAL mPlier     : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL toPostProc	: STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	COMPONENT exh_inpipe_vhdl
	PORT(Mcand			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  mPlier0		:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  Clock			:IN STD_LOGIC;
		  Output			:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END Component;
	
BEGIN	
	
	mPlier <= mPlier0 OR "1101";
	
	doit : exh_inpipe_vhdl PORT MAP(Mcand, mPlier, Clock, toPostProc);
	
	output <= toPostProc + "11110110";
				
END Structure;