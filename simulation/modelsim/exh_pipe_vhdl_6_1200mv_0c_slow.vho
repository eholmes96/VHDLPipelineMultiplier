-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 Patches 0.01we SJ Web Edition"

-- DATE "05/17/2016 20:11:37"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exh_mul12_emu_vhdl IS
    PORT (
	Multiplier : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	output : OUT std_logic_vector(7 DOWNTO 0)
	);
END exh_mul12_emu_vhdl;

-- Design Ports Information
-- output[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplier[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplier[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplier[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Multiplier[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exh_mul12_emu_vhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Multiplier : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Multiplier[0]~input_o\ : std_logic;
SIGNAL \Stage0|Mcreg0|Outsig[0]~feeder_combout\ : std_logic;
SIGNAL \Stage0|mpreg3|Outsig[1]~feeder_combout\ : std_logic;
SIGNAL \Multiplier[1]~input_o\ : std_logic;
SIGNAL \Stage0|Mcreg0|Outsig[1]~feeder_combout\ : std_logic;
SIGNAL \Stage0|mpreg4|Outsig[1]~feeder_combout\ : std_logic;
SIGNAL \Multiplier[2]~input_o\ : std_logic;
SIGNAL \Stage0|Mcreg0|Outsig[2]~feeder_combout\ : std_logic;
SIGNAL \Stage0|mpreg4|Outsig[2]~feeder_combout\ : std_logic;
SIGNAL \Multiplier[3]~input_o\ : std_logic;
SIGNAL \Stage0|Mcreg3|Outsig[3]~feeder_combout\ : std_logic;
SIGNAL \Stage0|ADD1|c~0_combout\ : std_logic;
SIGNAL \Stage0|ADD2|c~0_combout\ : std_logic;
SIGNAL \Stage0|ADD1|s[3]~0_combout\ : std_logic;
SIGNAL \Stage0|ADD1|s[3]~1_combout\ : std_logic;
SIGNAL \Stage0|ADD1|s[3]~2_combout\ : std_logic;
SIGNAL \Stage0|ADD3|c~0_combout\ : std_logic;
SIGNAL \Stage0|ADD1|c~1_combout\ : std_logic;
SIGNAL \Stage0|ADD1|c~2_combout\ : std_logic;
SIGNAL \Stage0|ADD2|c~1_combout\ : std_logic;
SIGNAL \Stage0|ADD2|c~2_combout\ : std_logic;
SIGNAL \Stage0|Mcreg3|Outsig[2]~feeder_combout\ : std_logic;
SIGNAL \Stage0|ADD3|c~2_combout\ : std_logic;
SIGNAL \Stage0|ADD2|c~4_combout\ : std_logic;
SIGNAL \Stage0|ADD2|c~3_combout\ : std_logic;
SIGNAL \Stage0|ADD2|c~5_combout\ : std_logic;
SIGNAL \Stage0|ADD3|c~1_combout\ : std_logic;
SIGNAL \Stage0|ADD3|c~4_combout\ : std_logic;
SIGNAL \Stage0|ADD3|c~3_combout\ : std_logic;
SIGNAL \Stage0|ADD3|c~5_combout\ : std_logic;
SIGNAL \Stage0|mpreg2|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|Mcreg3|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|mpreg4|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|PH1|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|PH4|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|ADD3|s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|mpreg3|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|AND3|out4b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|PH3|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|ADD3|p\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|PH2|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|Mcreg2|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|ADD2|p\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|AND2|out4b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|ADD2|s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|mpreg1|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|Mcreg1|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|ADD1|p\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|ADD1|s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|Mcreg0|Outsig\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Stage0|AND0|out4b\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_Multiplier <= Multiplier;
ww_CLOCK_50 <= CLOCK_50;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

-- Location: IOOBUF_X38_Y34_N16
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Stage0|mpreg4|Outsig\(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Stage0|mpreg4|Outsig\(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Stage0|mpreg4|Outsig\(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Stage0|mpreg4|Outsig\(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Stage0|PH4|Outsig\(0),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Stage0|PH4|Outsig\(1),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Stage0|PH4|Outsig\(2),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Stage0|PH4|Outsig\(3),
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N22
\Multiplier[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplier(0),
	o => \Multiplier[0]~input_o\);

-- Location: LCCOMB_X17_Y16_N20
\Stage0|Mcreg0|Outsig[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|Mcreg0|Outsig[0]~feeder_combout\ = \Multiplier[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Multiplier[0]~input_o\,
	combout => \Stage0|Mcreg0|Outsig[0]~feeder_combout\);

-- Location: FF_X17_Y16_N21
\Stage0|Mcreg0|Outsig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|Mcreg0|Outsig[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg0|Outsig\(0));

-- Location: FF_X17_Y16_N31
\Stage0|mpreg1|Outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Stage0|Mcreg0|Outsig\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|mpreg1|Outsig\(3));

-- Location: FF_X17_Y16_N29
\Stage0|mpreg2|Outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Stage0|mpreg1|Outsig\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|mpreg2|Outsig\(2));

-- Location: LCCOMB_X17_Y16_N18
\Stage0|mpreg3|Outsig[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|mpreg3|Outsig[1]~feeder_combout\ = \Stage0|mpreg2|Outsig\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Stage0|mpreg2|Outsig\(2),
	combout => \Stage0|mpreg3|Outsig[1]~feeder_combout\);

-- Location: FF_X17_Y16_N19
\Stage0|mpreg3|Outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|mpreg3|Outsig[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|mpreg3|Outsig\(1));

-- Location: FF_X17_Y16_N11
\Stage0|mpreg4|Outsig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Stage0|mpreg3|Outsig\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|mpreg4|Outsig\(0));

-- Location: IOIBUF_X27_Y0_N15
\Multiplier[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplier(1),
	o => \Multiplier[1]~input_o\);

-- Location: LCCOMB_X20_Y7_N8
\Stage0|Mcreg0|Outsig[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|Mcreg0|Outsig[1]~feeder_combout\ = \Multiplier[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Multiplier[1]~input_o\,
	combout => \Stage0|Mcreg0|Outsig[1]~feeder_combout\);

-- Location: FF_X20_Y7_N9
\Stage0|Mcreg0|Outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|Mcreg0|Outsig[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg0|Outsig\(1));

-- Location: LCCOMB_X18_Y15_N24
\Stage0|AND0|out4b[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|AND0|out4b\(1) = (\Stage0|Mcreg0|Outsig\(1) & \Stage0|Mcreg0|Outsig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Stage0|Mcreg0|Outsig\(1),
	datad => \Stage0|Mcreg0|Outsig\(0),
	combout => \Stage0|AND0|out4b\(1));

-- Location: FF_X18_Y15_N25
\Stage0|PH1|Outsig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|AND0|out4b\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH1|Outsig\(0));

-- Location: FF_X18_Y15_N27
\Stage0|Mcreg1|Outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Stage0|Mcreg0|Outsig\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg1|Outsig\(1));

-- Location: LCCOMB_X18_Y15_N16
\Stage0|ADD1|p[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD1|p\(0) = \Stage0|PH1|Outsig\(0) $ (((\Stage0|mpreg1|Outsig\(3) & \Stage0|Mcreg1|Outsig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|mpreg1|Outsig\(3),
	datab => \Stage0|PH1|Outsig\(0),
	datad => \Stage0|Mcreg1|Outsig\(1),
	combout => \Stage0|ADD1|p\(0));

-- Location: FF_X18_Y15_N17
\Stage0|mpreg2|Outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD1|p\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|mpreg2|Outsig\(3));

-- Location: FF_X46_Y32_N11
\Stage0|mpreg3|Outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Stage0|mpreg2|Outsig\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|mpreg3|Outsig\(2));

-- Location: LCCOMB_X46_Y32_N0
\Stage0|mpreg4|Outsig[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|mpreg4|Outsig[1]~feeder_combout\ = \Stage0|mpreg3|Outsig\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Stage0|mpreg3|Outsig\(2),
	combout => \Stage0|mpreg4|Outsig[1]~feeder_combout\);

-- Location: FF_X46_Y32_N1
\Stage0|mpreg4|Outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|mpreg4|Outsig[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|mpreg4|Outsig\(1));

-- Location: IOIBUF_X25_Y34_N8
\Multiplier[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplier(2),
	o => \Multiplier[2]~input_o\);

-- Location: LCCOMB_X18_Y15_N22
\Stage0|Mcreg0|Outsig[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|Mcreg0|Outsig[2]~feeder_combout\ = \Multiplier[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Multiplier[2]~input_o\,
	combout => \Stage0|Mcreg0|Outsig[2]~feeder_combout\);

-- Location: FF_X18_Y15_N23
\Stage0|Mcreg0|Outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|Mcreg0|Outsig[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg0|Outsig\(2));

-- Location: LCCOMB_X18_Y15_N12
\Stage0|AND0|out4b[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|AND0|out4b\(2) = (\Stage0|Mcreg0|Outsig\(2) & \Stage0|Mcreg0|Outsig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Stage0|Mcreg0|Outsig\(2),
	datad => \Stage0|Mcreg0|Outsig\(0),
	combout => \Stage0|AND0|out4b\(2));

-- Location: FF_X18_Y15_N13
\Stage0|PH1|Outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|AND0|out4b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH1|Outsig\(1));

-- Location: LCCOMB_X18_Y15_N14
\Stage0|ADD1|s[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD1|s\(1) = \Stage0|PH1|Outsig\(1) $ (((\Stage0|Mcreg1|Outsig\(1) & ((!\Stage0|mpreg1|Outsig\(3)) # (!\Stage0|PH1|Outsig\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH1|Outsig\(1),
	datab => \Stage0|Mcreg1|Outsig\(1),
	datac => \Stage0|PH1|Outsig\(0),
	datad => \Stage0|mpreg1|Outsig\(3),
	combout => \Stage0|ADD1|s\(1));

-- Location: FF_X18_Y15_N15
\Stage0|PH2|Outsig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD1|s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH2|Outsig\(0));

-- Location: FF_X18_Y15_N31
\Stage0|Mcreg1|Outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Stage0|Mcreg0|Outsig\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg1|Outsig\(2));

-- Location: FF_X18_Y15_N21
\Stage0|Mcreg2|Outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Stage0|Mcreg1|Outsig\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg2|Outsig\(2));

-- Location: LCCOMB_X17_Y16_N24
\Stage0|ADD2|p[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|p\(0) = \Stage0|PH2|Outsig\(0) $ (((\Stage0|mpreg2|Outsig\(2) & \Stage0|Mcreg2|Outsig\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH2|Outsig\(0),
	datab => \Stage0|mpreg2|Outsig\(2),
	datad => \Stage0|Mcreg2|Outsig\(2),
	combout => \Stage0|ADD2|p\(0));

-- Location: FF_X17_Y16_N25
\Stage0|mpreg3|Outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD2|p\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|mpreg3|Outsig\(3));

-- Location: LCCOMB_X21_Y17_N0
\Stage0|mpreg4|Outsig[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|mpreg4|Outsig[2]~feeder_combout\ = \Stage0|mpreg3|Outsig\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Stage0|mpreg3|Outsig\(3),
	combout => \Stage0|mpreg4|Outsig[2]~feeder_combout\);

-- Location: FF_X21_Y17_N1
\Stage0|mpreg4|Outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|mpreg4|Outsig[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|mpreg4|Outsig\(2));

-- Location: IOIBUF_X53_Y17_N15
\Multiplier[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Multiplier(3),
	o => \Multiplier[3]~input_o\);

-- Location: FF_X25_Y15_N9
\Stage0|Mcreg0|Outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Multiplier[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg0|Outsig\(3));

-- Location: FF_X18_Y15_N9
\Stage0|Mcreg1|Outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Stage0|Mcreg0|Outsig\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg1|Outsig\(3));

-- Location: FF_X18_Y15_N29
\Stage0|Mcreg2|Outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Stage0|Mcreg1|Outsig\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg2|Outsig\(3));

-- Location: LCCOMB_X17_Y15_N0
\Stage0|Mcreg3|Outsig[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|Mcreg3|Outsig[3]~feeder_combout\ = \Stage0|Mcreg2|Outsig\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Stage0|Mcreg2|Outsig\(3),
	combout => \Stage0|Mcreg3|Outsig[3]~feeder_combout\);

-- Location: FF_X17_Y15_N1
\Stage0|Mcreg3|Outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|Mcreg3|Outsig[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg3|Outsig\(3));

-- Location: FF_X17_Y16_N7
\Stage0|Mcreg2|Outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Stage0|Mcreg1|Outsig\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg2|Outsig\(1));

-- Location: LCCOMB_X17_Y16_N30
\Stage0|AND2|out4b[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|AND2|out4b\(1) = (\Stage0|Mcreg2|Outsig\(1) & \Stage0|Mcreg2|Outsig\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Stage0|Mcreg2|Outsig\(1),
	datad => \Stage0|Mcreg2|Outsig\(2),
	combout => \Stage0|AND2|out4b\(1));

-- Location: LCCOMB_X17_Y16_N28
\Stage0|AND2|out4b[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|AND2|out4b\(0) = (\Stage0|mpreg2|Outsig\(2) & \Stage0|Mcreg2|Outsig\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Stage0|mpreg2|Outsig\(2),
	datad => \Stage0|Mcreg2|Outsig\(2),
	combout => \Stage0|AND2|out4b\(0));

-- Location: LCCOMB_X18_Y15_N26
\Stage0|ADD1|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD1|c~0_combout\ = (\Stage0|Mcreg1|Outsig\(1) & ((\Stage0|PH1|Outsig\(1)) # ((\Stage0|mpreg1|Outsig\(3) & \Stage0|PH1|Outsig\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|mpreg1|Outsig\(3),
	datab => \Stage0|PH1|Outsig\(0),
	datac => \Stage0|Mcreg1|Outsig\(1),
	datad => \Stage0|PH1|Outsig\(1),
	combout => \Stage0|ADD1|c~0_combout\);

-- Location: LCCOMB_X18_Y15_N18
\Stage0|AND0|out4b[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|AND0|out4b\(3) = (\Stage0|Mcreg0|Outsig\(3) & \Stage0|Mcreg0|Outsig\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Stage0|Mcreg0|Outsig\(3),
	datad => \Stage0|Mcreg0|Outsig\(0),
	combout => \Stage0|AND0|out4b\(3));

-- Location: FF_X18_Y15_N19
\Stage0|PH1|Outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|AND0|out4b\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH1|Outsig\(2));

-- Location: LCCOMB_X18_Y15_N0
\Stage0|ADD1|s[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD1|s\(2) = \Stage0|ADD1|c~0_combout\ $ (\Stage0|PH1|Outsig\(2) $ (((\Stage0|Mcreg1|Outsig\(2) & \Stage0|Mcreg1|Outsig\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|ADD1|c~0_combout\,
	datab => \Stage0|PH1|Outsig\(2),
	datac => \Stage0|Mcreg1|Outsig\(2),
	datad => \Stage0|Mcreg1|Outsig\(1),
	combout => \Stage0|ADD1|s\(2));

-- Location: FF_X18_Y15_N1
\Stage0|PH2|Outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD1|s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH2|Outsig\(1));

-- Location: LCCOMB_X17_Y16_N22
\Stage0|ADD2|s[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|s\(1) = \Stage0|AND2|out4b\(1) $ (\Stage0|PH2|Outsig\(1) $ (((\Stage0|PH2|Outsig\(0) & \Stage0|AND2|out4b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH2|Outsig\(0),
	datab => \Stage0|AND2|out4b\(1),
	datac => \Stage0|AND2|out4b\(0),
	datad => \Stage0|PH2|Outsig\(1),
	combout => \Stage0|ADD2|s\(1));

-- Location: FF_X17_Y16_N23
\Stage0|PH3|Outsig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD2|s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH3|Outsig\(0));

-- Location: LCCOMB_X16_Y17_N24
\Stage0|ADD3|p[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|p\(0) = \Stage0|PH3|Outsig\(0) $ (((\Stage0|Mcreg3|Outsig\(3) & \Stage0|mpreg3|Outsig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|Mcreg3|Outsig\(3),
	datab => \Stage0|mpreg3|Outsig\(1),
	datac => \Stage0|PH3|Outsig\(0),
	combout => \Stage0|ADD3|p\(0));

-- Location: FF_X16_Y17_N25
\Stage0|mpreg4|Outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD3|p\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|mpreg4|Outsig\(3));

-- Location: LCCOMB_X17_Y16_N14
\Stage0|ADD2|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|c~0_combout\ = (\Stage0|AND2|out4b\(1) & ((\Stage0|PH2|Outsig\(1)) # ((\Stage0|PH2|Outsig\(0) & \Stage0|AND2|out4b\(0))))) # (!\Stage0|AND2|out4b\(1) & (\Stage0|PH2|Outsig\(0) & (\Stage0|AND2|out4b\(0) & \Stage0|PH2|Outsig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH2|Outsig\(0),
	datab => \Stage0|AND2|out4b\(1),
	datac => \Stage0|AND2|out4b\(0),
	datad => \Stage0|PH2|Outsig\(1),
	combout => \Stage0|ADD2|c~0_combout\);

-- Location: LCCOMB_X18_Y15_N8
\Stage0|ADD1|s[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD1|s[3]~0_combout\ = (\Stage0|PH1|Outsig\(1)) # ((\Stage0|mpreg1|Outsig\(3) & \Stage0|PH1|Outsig\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|mpreg1|Outsig\(3),
	datab => \Stage0|PH1|Outsig\(0),
	datad => \Stage0|PH1|Outsig\(1),
	combout => \Stage0|ADD1|s[3]~0_combout\);

-- Location: LCCOMB_X18_Y15_N10
\Stage0|ADD1|s[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD1|s[3]~1_combout\ = (\Stage0|ADD1|s[3]~0_combout\ & ((\Stage0|Mcreg1|Outsig\(2)) # (\Stage0|PH1|Outsig\(2)))) # (!\Stage0|ADD1|s[3]~0_combout\ & (\Stage0|Mcreg1|Outsig\(2) & \Stage0|PH1|Outsig\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|ADD1|s[3]~0_combout\,
	datac => \Stage0|Mcreg1|Outsig\(2),
	datad => \Stage0|PH1|Outsig\(2),
	combout => \Stage0|ADD1|s[3]~1_combout\);

-- Location: LCCOMB_X18_Y15_N6
\Stage0|ADD1|s[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD1|s[3]~2_combout\ = (\Stage0|Mcreg1|Outsig\(1) & (\Stage0|ADD1|s[3]~1_combout\ $ (\Stage0|Mcreg1|Outsig\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|ADD1|s[3]~1_combout\,
	datac => \Stage0|Mcreg1|Outsig\(3),
	datad => \Stage0|Mcreg1|Outsig\(1),
	combout => \Stage0|ADD1|s[3]~2_combout\);

-- Location: FF_X18_Y15_N7
\Stage0|PH2|Outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD1|s[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH2|Outsig\(2));

-- Location: LCCOMB_X17_Y16_N16
\Stage0|ADD2|s[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|s\(2) = \Stage0|ADD2|c~0_combout\ $ (\Stage0|PH2|Outsig\(2) $ (\Stage0|Mcreg2|Outsig\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|ADD2|c~0_combout\,
	datac => \Stage0|PH2|Outsig\(2),
	datad => \Stage0|Mcreg2|Outsig\(2),
	combout => \Stage0|ADD2|s\(2));

-- Location: FF_X17_Y16_N17
\Stage0|PH3|Outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD2|s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH3|Outsig\(1));

-- Location: FF_X16_Y17_N5
\Stage0|Mcreg3|Outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Stage0|Mcreg2|Outsig\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg3|Outsig\(1));

-- Location: LCCOMB_X16_Y17_N4
\Stage0|AND3|out4b[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|AND3|out4b\(1) = (\Stage0|Mcreg3|Outsig\(1) & \Stage0|Mcreg3|Outsig\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Stage0|Mcreg3|Outsig\(1),
	datad => \Stage0|Mcreg3|Outsig\(3),
	combout => \Stage0|AND3|out4b\(1));

-- Location: LCCOMB_X16_Y17_N18
\Stage0|AND3|out4b[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|AND3|out4b\(0) = (\Stage0|Mcreg3|Outsig\(3) & \Stage0|mpreg3|Outsig\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|Mcreg3|Outsig\(3),
	datac => \Stage0|mpreg3|Outsig\(1),
	combout => \Stage0|AND3|out4b\(0));

-- Location: LCCOMB_X16_Y17_N26
\Stage0|ADD3|s[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|s\(1) = \Stage0|PH3|Outsig\(1) $ (\Stage0|AND3|out4b\(1) $ (((\Stage0|PH3|Outsig\(0) & \Stage0|AND3|out4b\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH3|Outsig\(1),
	datab => \Stage0|AND3|out4b\(1),
	datac => \Stage0|PH3|Outsig\(0),
	datad => \Stage0|AND3|out4b\(0),
	combout => \Stage0|ADD3|s\(1));

-- Location: FF_X16_Y17_N27
\Stage0|PH4|Outsig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD3|s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH4|Outsig\(0));

-- Location: LCCOMB_X16_Y17_N16
\Stage0|ADD3|c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|c~0_combout\ = (\Stage0|PH3|Outsig\(1) & ((\Stage0|AND3|out4b\(1)) # ((\Stage0|PH3|Outsig\(0) & \Stage0|AND3|out4b\(0))))) # (!\Stage0|PH3|Outsig\(1) & (\Stage0|AND3|out4b\(1) & (\Stage0|PH3|Outsig\(0) & \Stage0|AND3|out4b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH3|Outsig\(1),
	datab => \Stage0|AND3|out4b\(1),
	datac => \Stage0|PH3|Outsig\(0),
	datad => \Stage0|AND3|out4b\(0),
	combout => \Stage0|ADD3|c~0_combout\);

-- Location: LCCOMB_X17_Y16_N10
\Stage0|ADD2|p[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|p\(2) = \Stage0|PH2|Outsig\(2) $ (\Stage0|Mcreg2|Outsig\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Stage0|PH2|Outsig\(2),
	datad => \Stage0|Mcreg2|Outsig\(2),
	combout => \Stage0|ADD2|p\(2));

-- Location: LCCOMB_X18_Y15_N30
\Stage0|ADD1|c~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD1|c~1_combout\ = (\Stage0|ADD1|s[3]~0_combout\ & ((\Stage0|PH1|Outsig\(2)) # ((\Stage0|Mcreg1|Outsig\(2) & \Stage0|Mcreg1|Outsig\(1))))) # (!\Stage0|ADD1|s[3]~0_combout\ & (\Stage0|PH1|Outsig\(2) & (\Stage0|Mcreg1|Outsig\(2) & 
-- \Stage0|Mcreg1|Outsig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|ADD1|s[3]~0_combout\,
	datab => \Stage0|PH1|Outsig\(2),
	datac => \Stage0|Mcreg1|Outsig\(2),
	datad => \Stage0|Mcreg1|Outsig\(1),
	combout => \Stage0|ADD1|c~1_combout\);

-- Location: LCCOMB_X18_Y15_N4
\Stage0|ADD1|c~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD1|c~2_combout\ = (\Stage0|ADD1|c~1_combout\ & (\Stage0|Mcreg1|Outsig\(3) & \Stage0|Mcreg1|Outsig\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Stage0|ADD1|c~1_combout\,
	datac => \Stage0|Mcreg1|Outsig\(3),
	datad => \Stage0|Mcreg1|Outsig\(1),
	combout => \Stage0|ADD1|c~2_combout\);

-- Location: FF_X18_Y15_N5
\Stage0|PH2|Outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD1|c~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH2|Outsig\(3));

-- Location: LCCOMB_X18_Y15_N20
\Stage0|ADD2|p[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|p\(3) = \Stage0|PH2|Outsig\(3) $ (((\Stage0|Mcreg2|Outsig\(2) & \Stage0|Mcreg2|Outsig\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Stage0|PH2|Outsig\(3),
	datac => \Stage0|Mcreg2|Outsig\(2),
	datad => \Stage0|Mcreg2|Outsig\(3),
	combout => \Stage0|ADD2|p\(3));

-- Location: LCCOMB_X17_Y16_N4
\Stage0|ADD2|c~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|c~1_combout\ = (\Stage0|PH2|Outsig\(0) & (\Stage0|AND2|out4b\(0) & (\Stage0|AND2|out4b\(1) $ (\Stage0|PH2|Outsig\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH2|Outsig\(0),
	datab => \Stage0|AND2|out4b\(1),
	datac => \Stage0|AND2|out4b\(0),
	datad => \Stage0|PH2|Outsig\(1),
	combout => \Stage0|ADD2|c~1_combout\);

-- Location: LCCOMB_X17_Y16_N6
\Stage0|ADD2|c~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|c~2_combout\ = (\Stage0|Mcreg2|Outsig\(2) & ((\Stage0|PH2|Outsig\(2)) # ((\Stage0|Mcreg2|Outsig\(1) & \Stage0|PH2|Outsig\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|Mcreg2|Outsig\(2),
	datab => \Stage0|PH2|Outsig\(2),
	datac => \Stage0|Mcreg2|Outsig\(1),
	datad => \Stage0|PH2|Outsig\(1),
	combout => \Stage0|ADD2|c~2_combout\);

-- Location: LCCOMB_X17_Y16_N8
\Stage0|ADD2|s[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|s\(3) = \Stage0|ADD2|p\(3) $ (((\Stage0|ADD2|c~2_combout\) # ((\Stage0|ADD2|p\(2) & \Stage0|ADD2|c~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|ADD2|p\(2),
	datab => \Stage0|ADD2|p\(3),
	datac => \Stage0|ADD2|c~1_combout\,
	datad => \Stage0|ADD2|c~2_combout\,
	combout => \Stage0|ADD2|s\(3));

-- Location: FF_X17_Y16_N9
\Stage0|PH3|Outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD2|s\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH3|Outsig\(2));

-- Location: LCCOMB_X17_Y17_N24
\Stage0|Mcreg3|Outsig[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|Mcreg3|Outsig[2]~feeder_combout\ = \Stage0|Mcreg2|Outsig\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Stage0|Mcreg2|Outsig\(2),
	combout => \Stage0|Mcreg3|Outsig[2]~feeder_combout\);

-- Location: FF_X17_Y17_N25
\Stage0|Mcreg3|Outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|Mcreg3|Outsig[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|Mcreg3|Outsig\(2));

-- Location: LCCOMB_X16_Y17_N12
\Stage0|ADD3|s[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|s\(2) = \Stage0|ADD3|c~0_combout\ $ (\Stage0|PH3|Outsig\(2) $ (((\Stage0|Mcreg3|Outsig\(3) & \Stage0|Mcreg3|Outsig\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|Mcreg3|Outsig\(3),
	datab => \Stage0|ADD3|c~0_combout\,
	datac => \Stage0|PH3|Outsig\(2),
	datad => \Stage0|Mcreg3|Outsig\(2),
	combout => \Stage0|ADD3|s\(2));

-- Location: FF_X16_Y17_N13
\Stage0|PH4|Outsig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD3|s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH4|Outsig\(1));

-- Location: LCCOMB_X16_Y17_N20
\Stage0|AND3|out4b[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|AND3|out4b\(2) = (\Stage0|Mcreg3|Outsig\(3) & \Stage0|Mcreg3|Outsig\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|Mcreg3|Outsig\(3),
	datad => \Stage0|Mcreg3|Outsig\(2),
	combout => \Stage0|AND3|out4b\(2));

-- Location: LCCOMB_X16_Y17_N30
\Stage0|ADD3|c~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|c~2_combout\ = (\Stage0|PH3|Outsig\(2) & ((\Stage0|AND3|out4b\(2)) # ((\Stage0|PH3|Outsig\(1) & \Stage0|AND3|out4b\(1))))) # (!\Stage0|PH3|Outsig\(2) & (\Stage0|PH3|Outsig\(1) & (\Stage0|AND3|out4b\(1) & \Stage0|AND3|out4b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH3|Outsig\(1),
	datab => \Stage0|AND3|out4b\(1),
	datac => \Stage0|PH3|Outsig\(2),
	datad => \Stage0|AND3|out4b\(2),
	combout => \Stage0|ADD3|c~2_combout\);

-- Location: LCCOMB_X17_Y16_N26
\Stage0|ADD2|c~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|c~4_combout\ = (\Stage0|AND2|out4b\(1) & ((\Stage0|PH2|Outsig\(1)) # ((\Stage0|PH2|Outsig\(0) & \Stage0|AND2|out4b\(0))))) # (!\Stage0|AND2|out4b\(1) & (\Stage0|PH2|Outsig\(0) & (\Stage0|AND2|out4b\(0) & \Stage0|PH2|Outsig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH2|Outsig\(0),
	datab => \Stage0|AND2|out4b\(1),
	datac => \Stage0|AND2|out4b\(0),
	datad => \Stage0|PH2|Outsig\(1),
	combout => \Stage0|ADD2|c~4_combout\);

-- Location: LCCOMB_X18_Y15_N28
\Stage0|ADD2|c~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|c~3_combout\ = (\Stage0|Mcreg2|Outsig\(2) & ((\Stage0|PH2|Outsig\(2) & ((\Stage0|PH2|Outsig\(3)) # (\Stage0|Mcreg2|Outsig\(3)))) # (!\Stage0|PH2|Outsig\(2) & (\Stage0|PH2|Outsig\(3) & \Stage0|Mcreg2|Outsig\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH2|Outsig\(2),
	datab => \Stage0|PH2|Outsig\(3),
	datac => \Stage0|Mcreg2|Outsig\(3),
	datad => \Stage0|Mcreg2|Outsig\(2),
	combout => \Stage0|ADD2|c~3_combout\);

-- Location: LCCOMB_X17_Y16_N12
\Stage0|ADD2|c~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD2|c~5_combout\ = (\Stage0|ADD2|c~3_combout\) # ((\Stage0|ADD2|p\(2) & (\Stage0|ADD2|p\(3) & \Stage0|ADD2|c~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|ADD2|p\(2),
	datab => \Stage0|ADD2|p\(3),
	datac => \Stage0|ADD2|c~4_combout\,
	datad => \Stage0|ADD2|c~3_combout\,
	combout => \Stage0|ADD2|c~5_combout\);

-- Location: FF_X17_Y16_N13
\Stage0|PH3|Outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD2|c~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH3|Outsig\(3));

-- Location: LCCOMB_X16_Y17_N0
\Stage0|ADD3|p[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|p\(3) = \Stage0|Mcreg3|Outsig\(3) $ (\Stage0|PH3|Outsig\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|Mcreg3|Outsig\(3),
	datad => \Stage0|PH3|Outsig\(3),
	combout => \Stage0|ADD3|p\(3));

-- Location: LCCOMB_X16_Y17_N22
\Stage0|ADD3|p[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|p\(2) = \Stage0|PH3|Outsig\(2) $ (((\Stage0|Mcreg3|Outsig\(3) & \Stage0|Mcreg3|Outsig\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|Mcreg3|Outsig\(3),
	datac => \Stage0|PH3|Outsig\(2),
	datad => \Stage0|Mcreg3|Outsig\(2),
	combout => \Stage0|ADD3|p\(2));

-- Location: LCCOMB_X16_Y17_N10
\Stage0|ADD3|c~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|c~1_combout\ = (\Stage0|PH3|Outsig\(0) & (\Stage0|AND3|out4b\(0) & (\Stage0|PH3|Outsig\(1) $ (\Stage0|AND3|out4b\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH3|Outsig\(1),
	datab => \Stage0|AND3|out4b\(1),
	datac => \Stage0|PH3|Outsig\(0),
	datad => \Stage0|AND3|out4b\(0),
	combout => \Stage0|ADD3|c~1_combout\);

-- Location: LCCOMB_X16_Y17_N6
\Stage0|ADD3|s[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|s\(3) = \Stage0|ADD3|p\(3) $ (((\Stage0|ADD3|c~2_combout\) # ((\Stage0|ADD3|p\(2) & \Stage0|ADD3|c~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|ADD3|c~2_combout\,
	datab => \Stage0|ADD3|p\(3),
	datac => \Stage0|ADD3|p\(2),
	datad => \Stage0|ADD3|c~1_combout\,
	combout => \Stage0|ADD3|s\(3));

-- Location: FF_X16_Y17_N7
\Stage0|PH4|Outsig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD3|s\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH4|Outsig\(2));

-- Location: LCCOMB_X16_Y17_N28
\Stage0|ADD3|c~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|c~4_combout\ = (\Stage0|PH3|Outsig\(1) & ((\Stage0|AND3|out4b\(1)) # ((\Stage0|PH3|Outsig\(0) & \Stage0|AND3|out4b\(0))))) # (!\Stage0|PH3|Outsig\(1) & (\Stage0|AND3|out4b\(1) & (\Stage0|PH3|Outsig\(0) & \Stage0|AND3|out4b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|PH3|Outsig\(1),
	datab => \Stage0|AND3|out4b\(1),
	datac => \Stage0|PH3|Outsig\(0),
	datad => \Stage0|AND3|out4b\(0),
	combout => \Stage0|ADD3|c~4_combout\);

-- Location: LCCOMB_X16_Y17_N2
\Stage0|ADD3|c~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|c~3_combout\ = (\Stage0|Mcreg3|Outsig\(3) & ((\Stage0|PH3|Outsig\(3)) # ((\Stage0|Mcreg3|Outsig\(2) & \Stage0|PH3|Outsig\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|Mcreg3|Outsig\(3),
	datab => \Stage0|Mcreg3|Outsig\(2),
	datac => \Stage0|PH3|Outsig\(2),
	datad => \Stage0|PH3|Outsig\(3),
	combout => \Stage0|ADD3|c~3_combout\);

-- Location: LCCOMB_X16_Y17_N8
\Stage0|ADD3|c~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Stage0|ADD3|c~5_combout\ = (\Stage0|ADD3|c~3_combout\) # ((\Stage0|ADD3|c~4_combout\ & (\Stage0|ADD3|p\(2) & \Stage0|ADD3|p\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Stage0|ADD3|c~4_combout\,
	datab => \Stage0|ADD3|c~3_combout\,
	datac => \Stage0|ADD3|p\(2),
	datad => \Stage0|ADD3|p\(3),
	combout => \Stage0|ADD3|c~5_combout\);

-- Location: FF_X16_Y17_N9
\Stage0|PH4|Outsig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Stage0|ADD3|c~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Stage0|PH4|Outsig\(3));

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;
END structure;


