LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.std_logic_signed.all;

ENTITY exh_inpipe_vhdl IS
	PORT(Mcand			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  mPlier0		:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  Clock			:IN STD_LOGIC;
		  Output			:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	 End exh_inpipe_vhdl;
	 
ARCHITECTURE structure OF exh_inpipe_vhdl IS

	SIGNAL mcout0		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL and2add0	: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL ph2add0		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mp2mp0		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL addout0		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL addCout0	: STD_LOGIC;
	
	SIGNAL PH1in		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mp1in		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mcout1		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL and2add1	: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL ph2add1		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mp2mp1		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL addout1		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL addCout1	: STD_LOGIC;
	
	SIGNAL PH2in		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mp2in		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mcout2		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL and2add2	: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL ph2add2		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mp2mp2		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL addout2		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL addCout2	: STD_LOGIC;
	
	SIGNAL PH3in		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mp3in		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mcout3		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL and2add3	: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL ph2add3		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mp2mp3		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL addout3		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL addCout3	: STD_LOGIC;
	
	SIGNAL PH4in	   : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mp4in		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL PHOut		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mcout4		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL mp4out		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	COMPONENT exh_4bAND IS
		PORT (in4b 			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				in1b			:IN STD_LOGIC;
				out4b			:OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
	END COMPONENT;	  
		  
			
	COMPONENT exh_4bADD IS
		PORT (x,y		: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				Cin		: IN STD_LOGIC;
				s			: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
				Cout		: OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT exh_reg_vhdl IS
		PORT(Input			:IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			  Clock			:IN STD_LOGIC;
			  Output			:OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
		END COMPONENT;
		

BEGIN
		
--stage 0
	Mcreg0 : exh_reg_vhdl PORT MAP(Mcand, Clock, mcout0);
	PH0	 : exh_reg_vhdl PORT MAP("0000", Clock, ph2add0);
	mpreg0 : exh_reg_vhdl PORT MAP(mPlier0, Clock, mp2mp0);
	AND0   : exh_4bAND 	 PORT MAP(mcout0, mp2mp0(0), and2add0);
	ADD0	 : exh_4bADD	 PORT MAP(and2add0, ph2add0, '0', addout0, addCout0);
	
--stage 1
	Mcreg1 : exh_reg_vhdl PORT MAP(mcout0, Clock, mcout1);
		PH1in(3) <= addCout0;
		PH1in(2 DOWNTO 0) <= addout0 (3 DOWNTO 1);	
		mp1in(3) <= addout0(0);
		mp1in(2 DOWNTO 0) <= mp2mp0(3 DOWNTO 1);
	PH1	 : exh_reg_vhdl PORT MAP(PH1in, Clock, ph2add1);
	mpreg1 : exh_reg_vhdl PORT MAP(mp1in, Clock, mp2mp1);
	AND1   : exh_4bAND PORT MAP(mcout1, mp2mp1(0), and2add1);
	ADD1   : exh_4bADD PORT MAP(and2add1, ph2add1, '0', addout1, addCout1);
	
--stage 2
	Mcreg2 : exh_reg_vhdl PORT MAP(mcout1, Clock, mcout2);
		PH2in(3) <= addCout1;
		PH2in(2 DOWNTO 0) <= addout1 (3 DOWNTO 1);	
		mp2in(3) <= addout1(0);
		mp2in(2 DOWNTO 0) <= mp2mp1(3 DOWNTO 1);
	PH2	 : exh_reg_vhdl PORT MAP(PH2in, Clock, ph2add2);
	mpreg2 : exh_reg_vhdl PORT MAP(mp2in, Clock, mp2mp2);
	AND2   : exh_4bAND PORT MAP(mcout2, mp2mp2(0), and2add2);
	ADD2   : exh_4bADD PORT MAP(and2add2, ph2add2, '0', addout2, addCout2);
	
--stage 3
   Mcreg3 : exh_reg_vhdl PORT MAP(mcout2, Clock, mcout3);
		PH3in(3) <= addCout2;
		PH3in(2 DOWNTO 0) <= addout2 (3 DOWNTO 1);	
		mp3in(3) <= addout2(0);
		mp3in(2 DOWNTO 0) <= mp2mp2(3 DOWNTO 1);
	PH3	 : exh_reg_vhdl PORT MAP(PH3in, Clock, ph2add3);
	mpreg3 : exh_reg_vhdl PORT MAP(mp3in, Clock, mp2mp3);
	AND3   : exh_4bAND PORT MAP(mcout3, mp2mp3(0), and2add3);
	ADD3   : exh_4bADD PORT MAP(and2add3, ph2add3, '0', addout3, addCout3);

--stage 4	
	 Mcreg4 : exh_reg_vhdl PORT MAP(mcout3, Clock, mcout4);
		PH4in(3) <= addCout3;
		PH4in(2 DOWNTO 0) <= addout3(3 DOWNTO 1);
		mp4in(3) <= addout3(0);
		mp4in(2 DOWNTO 0) <= mp2mp3(3 DOWNTO 1);
	PH4 	  : exh_reg_vhdl PORT MAP(PH4in, Clock, PHout);
	mpreg4  : exh_reg_vhdl PORT MAP(mp4in, Clock, mp4out);
	
	Output(7 DOWNTO 4) <= PHout;
	Output(3 DOWNTO 0) <= mp4out;
	

END;