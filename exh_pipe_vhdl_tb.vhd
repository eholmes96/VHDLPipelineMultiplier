LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.std_logic_signed.all;

ENTITY exh_pipe_vhdl_tb IS
	END exh_pipe_vhdl_tb;
	
ARCHITECTURE Behavior OF exh_pipe_vhdl_tb IS

	COMPONENT exh_pipe_vhdl
		PORT(Mcand			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		   mPlier0		 	:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			Clock				:IN STD_LOGIC;
			Output			:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	 End Component;
	 
	SIGNAL Mcand_tb 		:STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mPlier0_tb 	:STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL Clock_tb		:STD_LOGIC;
	SIGNAL Output_tb		:STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

uut: exh_pipe_vhdl PORT MAP(Mcand => Mcand_tb,
					mPlier0 => mPlier0_tb, Clock => Clock_tb,
					Output => Output_tb);
							
tb : PROCESS
				
				CONSTANT period : time := 20ns;
				BEGIN 
				--0x0
						Mcand_tb <= "0000";
						mPlier0_tb <= "0000";
						
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						
						
		
				
				WAIT FOR period;
				--FxF
						Mcand_tb <= "1111";
						mPlier0_tb <= "1111";
					
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						
				
				WAIT FOR period;
				--5x5
						Mcand_tb <= "0101";
						mPlier0_tb <= "0101";
				
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						
						
				WAIT FOR period;
				--AxA
						Mcand_tb <= "1010";
						mPlier0_tb <= "1010";
						
							Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
				
				WAIT FOR period;
				--5xA
						Mcand_tb <= "0101";
						mPlier0_tb <= "1010";
						
							Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
						Clock_tb <= '0';
						WAIT FOR period;
						Clock_tb <= '1';
						WAIT FOR period;
				
				WAIT FOR period;
				
				WAIT;
			END PROCESS;
			
END Behavior;
				
				
	
	