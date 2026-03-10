-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "03/10/2026 09:30:33"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Fadd4 IS
    PORT (
	IN_A : IN std_logic_vector(3 DOWNTO 0);
	IN_B : IN std_logic_vector(3 DOWNTO 0);
	SUM : OUT std_logic_vector(3 DOWNTO 0);
	Cout : OUT std_logic
	);
END Fadd4;

-- Design Ports Information
-- SUM[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[1]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUM[3]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_A[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_B[0]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_A[1]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_B[1]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_A[2]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_B[2]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_A[3]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN_B[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Fadd4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IN_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IN_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SUM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \IN_A[0]~input_o\ : std_logic;
SIGNAL \IN_B[0]~input_o\ : std_logic;
SIGNAL \FA0|SUM~0_combout\ : std_logic;
SIGNAL \IN_B[1]~input_o\ : std_logic;
SIGNAL \IN_A[1]~input_o\ : std_logic;
SIGNAL \FA1|SUM~combout\ : std_logic;
SIGNAL \IN_A[2]~input_o\ : std_logic;
SIGNAL \IN_B[2]~input_o\ : std_logic;
SIGNAL \FA2|SUM~combout\ : std_logic;
SIGNAL \FA1|CARRY~combout\ : std_logic;
SIGNAL \IN_B[3]~input_o\ : std_logic;
SIGNAL \IN_A[3]~input_o\ : std_logic;
SIGNAL \FA3|SUM~combout\ : std_logic;
SIGNAL \FA3|CARRY~combout\ : std_logic;
SIGNAL \ALT_INV_IN_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_IN_A[0]~input_o\ : std_logic;
SIGNAL \FA1|ALT_INV_CARRY~combout\ : std_logic;

BEGIN

ww_IN_A <= IN_A;
ww_IN_B <= IN_B;
SUM <= ww_SUM;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_IN_B[3]~input_o\ <= NOT \IN_B[3]~input_o\;
\ALT_INV_IN_A[3]~input_o\ <= NOT \IN_A[3]~input_o\;
\ALT_INV_IN_B[2]~input_o\ <= NOT \IN_B[2]~input_o\;
\ALT_INV_IN_A[2]~input_o\ <= NOT \IN_A[2]~input_o\;
\ALT_INV_IN_B[1]~input_o\ <= NOT \IN_B[1]~input_o\;
\ALT_INV_IN_A[1]~input_o\ <= NOT \IN_A[1]~input_o\;
\ALT_INV_IN_B[0]~input_o\ <= NOT \IN_B[0]~input_o\;
\ALT_INV_IN_A[0]~input_o\ <= NOT \IN_A[0]~input_o\;
\FA1|ALT_INV_CARRY~combout\ <= NOT \FA1|CARRY~combout\;

-- Location: IOOBUF_X89_Y20_N79
\SUM[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA0|SUM~0_combout\,
	devoe => ww_devoe,
	o => ww_SUM(0));

-- Location: IOOBUF_X89_Y23_N56
\SUM[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA1|SUM~combout\,
	devoe => ww_devoe,
	o => ww_SUM(1));

-- Location: IOOBUF_X89_Y20_N45
\SUM[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA2|SUM~combout\,
	devoe => ww_devoe,
	o => ww_SUM(2));

-- Location: IOOBUF_X89_Y20_N96
\SUM[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|SUM~combout\,
	devoe => ww_devoe,
	o => ww_SUM(3));

-- Location: IOOBUF_X89_Y21_N39
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|CARRY~combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOIBUF_X89_Y21_N55
\IN_A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_A(0),
	o => \IN_A[0]~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\IN_B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_B(0),
	o => \IN_B[0]~input_o\);

-- Location: LABCELL_X88_Y21_N0
\FA0|SUM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA0|SUM~0_combout\ = ( \IN_B[0]~input_o\ & ( !\IN_A[0]~input_o\ ) ) # ( !\IN_B[0]~input_o\ & ( \IN_A[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IN_A[0]~input_o\,
	dataf => \ALT_INV_IN_B[0]~input_o\,
	combout => \FA0|SUM~0_combout\);

-- Location: IOIBUF_X89_Y21_N21
\IN_B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_B(1),
	o => \IN_B[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\IN_A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_A(1),
	o => \IN_A[1]~input_o\);

-- Location: LABCELL_X88_Y21_N39
\FA1|SUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA1|SUM~combout\ = ( \IN_A[1]~input_o\ & ( !\IN_B[1]~input_o\ $ (((\IN_A[0]~input_o\ & \IN_B[0]~input_o\))) ) ) # ( !\IN_A[1]~input_o\ & ( !\IN_B[1]~input_o\ $ (((!\IN_A[0]~input_o\) # (!\IN_B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111011100001111000011110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN_A[0]~input_o\,
	datab => \ALT_INV_IN_B[0]~input_o\,
	datac => \ALT_INV_IN_B[1]~input_o\,
	dataf => \ALT_INV_IN_A[1]~input_o\,
	combout => \FA1|SUM~combout\);

-- Location: IOIBUF_X89_Y21_N4
\IN_A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_A(2),
	o => \IN_A[2]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\IN_B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_B(2),
	o => \IN_B[2]~input_o\);

-- Location: LABCELL_X88_Y21_N42
\FA2|SUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA2|SUM~combout\ = ( \IN_A[0]~input_o\ & ( \IN_A[1]~input_o\ & ( !\IN_A[2]~input_o\ $ (!\IN_B[2]~input_o\ $ (((\IN_B[0]~input_o\) # (\IN_B[1]~input_o\)))) ) ) ) # ( !\IN_A[0]~input_o\ & ( \IN_A[1]~input_o\ & ( !\IN_A[2]~input_o\ $ (!\IN_B[1]~input_o\ $ 
-- (\IN_B[2]~input_o\)) ) ) ) # ( \IN_A[0]~input_o\ & ( !\IN_A[1]~input_o\ & ( !\IN_A[2]~input_o\ $ (!\IN_B[2]~input_o\ $ (((\IN_B[1]~input_o\ & \IN_B[0]~input_o\)))) ) ) ) # ( !\IN_A[0]~input_o\ & ( !\IN_A[1]~input_o\ & ( !\IN_A[2]~input_o\ $ 
-- (!\IN_B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100110100101101001011010010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN_A[2]~input_o\,
	datab => \ALT_INV_IN_B[1]~input_o\,
	datac => \ALT_INV_IN_B[2]~input_o\,
	datad => \ALT_INV_IN_B[0]~input_o\,
	datae => \ALT_INV_IN_A[0]~input_o\,
	dataf => \ALT_INV_IN_A[1]~input_o\,
	combout => \FA2|SUM~combout\);

-- Location: LABCELL_X88_Y21_N18
\FA1|CARRY\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA1|CARRY~combout\ = ( \IN_A[1]~input_o\ & ( ((\IN_A[0]~input_o\ & \IN_B[0]~input_o\)) # (\IN_B[1]~input_o\) ) ) # ( !\IN_A[1]~input_o\ & ( (\IN_B[1]~input_o\ & (\IN_A[0]~input_o\ & \IN_B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_IN_B[1]~input_o\,
	datac => \ALT_INV_IN_A[0]~input_o\,
	datad => \ALT_INV_IN_B[0]~input_o\,
	dataf => \ALT_INV_IN_A[1]~input_o\,
	combout => \FA1|CARRY~combout\);

-- Location: IOIBUF_X89_Y25_N4
\IN_B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_B(3),
	o => \IN_B[3]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\IN_A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN_A(3),
	o => \IN_A[3]~input_o\);

-- Location: LABCELL_X88_Y21_N24
\FA3|SUM\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA3|SUM~combout\ = ( \IN_A[3]~input_o\ & ( !\IN_B[3]~input_o\ $ (((!\IN_A[2]~input_o\ & (\FA1|CARRY~combout\ & \IN_B[2]~input_o\)) # (\IN_A[2]~input_o\ & ((\IN_B[2]~input_o\) # (\FA1|CARRY~combout\))))) ) ) # ( !\IN_A[3]~input_o\ & ( !\IN_B[3]~input_o\ $ 
-- (((!\IN_A[2]~input_o\ & ((!\FA1|CARRY~combout\) # (!\IN_B[2]~input_o\))) # (\IN_A[2]~input_o\ & (!\FA1|CARRY~combout\ & !\IN_B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN_A[2]~input_o\,
	datab => \FA1|ALT_INV_CARRY~combout\,
	datac => \ALT_INV_IN_B[2]~input_o\,
	datad => \ALT_INV_IN_B[3]~input_o\,
	dataf => \ALT_INV_IN_A[3]~input_o\,
	combout => \FA3|SUM~combout\);

-- Location: LABCELL_X88_Y21_N27
\FA3|CARRY\ : cyclonev_lcell_comb
-- Equation(s):
-- \FA3|CARRY~combout\ = ( \IN_B[2]~input_o\ & ( (!\IN_A[3]~input_o\ & (\IN_B[3]~input_o\ & ((\FA1|CARRY~combout\) # (\IN_A[2]~input_o\)))) # (\IN_A[3]~input_o\ & (((\IN_B[3]~input_o\) # (\FA1|CARRY~combout\)) # (\IN_A[2]~input_o\))) ) ) # ( 
-- !\IN_B[2]~input_o\ & ( (!\IN_A[3]~input_o\ & (\IN_A[2]~input_o\ & (\FA1|CARRY~combout\ & \IN_B[3]~input_o\))) # (\IN_A[3]~input_o\ & (((\IN_A[2]~input_o\ & \FA1|CARRY~combout\)) # (\IN_B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000111011111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN_A[2]~input_o\,
	datab => \FA1|ALT_INV_CARRY~combout\,
	datac => \ALT_INV_IN_A[3]~input_o\,
	datad => \ALT_INV_IN_B[3]~input_o\,
	dataf => \ALT_INV_IN_B[2]~input_o\,
	combout => \FA3|CARRY~combout\);

-- Location: LABCELL_X36_Y27_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


