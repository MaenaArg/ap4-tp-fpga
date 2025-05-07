-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "05/07/2025 11:46:30"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[0]~31_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[7]~27_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \instance_shift_register_universal8|Equal0~0_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register~32_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[1]~5_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[0]~0_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[0]~30_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[1]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[1]~4_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register~33_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[2]~7_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[2]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[2]~6_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register~34_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[3]~9_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[3]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[3]~8_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register~35_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[4]~11_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[4]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[4]~10_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register~36_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[5]~13_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[5]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[5]~12_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register~37_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[6]~15_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[6]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[6]~14_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[7]~38_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[7]~17_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[7]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[7]~16_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[0]~28_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[0]~29_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[0]~3_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[0]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|shift_register[0]~2_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[1]~4_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[4]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[4]~10_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[6]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[0]~28_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[3]~8_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register~34_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[0]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register~35_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[7]~27_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[0]~2_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[1]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[2]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[2]~6_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[5]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[5]~12_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[6]~14_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[7]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[7]~16_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[0]~29_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[3]~_emulated_q\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[0]~0_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register~32_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register~33_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[7]~38_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register~37_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register~36_combout\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

BEGIN

LEDG <= ww_LEDG;
ww_SW <= SW;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\instance_shift_register_universal8|ALT_INV_shift_register[1]~4_combout\ <= NOT \instance_shift_register_universal8|shift_register[1]~4_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[4]~_emulated_q\ <= NOT \instance_shift_register_universal8|shift_register[4]~_emulated_q\;
\instance_shift_register_universal8|ALT_INV_shift_register[4]~10_combout\ <= NOT \instance_shift_register_universal8|shift_register[4]~10_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[6]~_emulated_q\ <= NOT \instance_shift_register_universal8|shift_register[6]~_emulated_q\;
\instance_shift_register_universal8|ALT_INV_shift_register[0]~28_combout\ <= NOT \instance_shift_register_universal8|shift_register[0]~28_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[3]~8_combout\ <= NOT \instance_shift_register_universal8|shift_register[3]~8_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register~34_combout\ <= NOT \instance_shift_register_universal8|shift_register~34_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[0]~_emulated_q\ <= NOT \instance_shift_register_universal8|shift_register[0]~_emulated_q\;
\instance_shift_register_universal8|ALT_INV_shift_register~35_combout\ <= NOT \instance_shift_register_universal8|shift_register~35_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[7]~27_combout\ <= NOT \instance_shift_register_universal8|shift_register[7]~27_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[0]~2_combout\ <= NOT \instance_shift_register_universal8|shift_register[0]~2_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[1]~_emulated_q\ <= NOT \instance_shift_register_universal8|shift_register[1]~_emulated_q\;
\instance_shift_register_universal8|ALT_INV_shift_register[2]~_emulated_q\ <= NOT \instance_shift_register_universal8|shift_register[2]~_emulated_q\;
\instance_shift_register_universal8|ALT_INV_shift_register[2]~6_combout\ <= NOT \instance_shift_register_universal8|shift_register[2]~6_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[5]~_emulated_q\ <= NOT \instance_shift_register_universal8|shift_register[5]~_emulated_q\;
\instance_shift_register_universal8|ALT_INV_shift_register[5]~12_combout\ <= NOT \instance_shift_register_universal8|shift_register[5]~12_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[6]~14_combout\ <= NOT \instance_shift_register_universal8|shift_register[6]~14_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[7]~_emulated_q\ <= NOT \instance_shift_register_universal8|shift_register[7]~_emulated_q\;
\instance_shift_register_universal8|ALT_INV_shift_register[7]~16_combout\ <= NOT \instance_shift_register_universal8|shift_register[7]~16_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[0]~29_combout\ <= NOT \instance_shift_register_universal8|shift_register[0]~29_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[3]~_emulated_q\ <= NOT \instance_shift_register_universal8|shift_register[3]~_emulated_q\;
\instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\ <= NOT \instance_shift_register_universal8|shift_register[0]~31_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[0]~0_combout\ <= NOT \instance_shift_register_universal8|shift_register[0]~0_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register~32_combout\ <= NOT \instance_shift_register_universal8|shift_register~32_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register~33_combout\ <= NOT \instance_shift_register_universal8|shift_register~33_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[7]~38_combout\ <= NOT \instance_shift_register_universal8|shift_register[7]~38_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register~37_combout\ <= NOT \instance_shift_register_universal8|shift_register~37_combout\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\instance_shift_register_universal8|ALT_INV_shift_register~36_combout\ <= NOT \instance_shift_register_universal8|shift_register~36_combout\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\instance_shift_register_universal8|ALT_INV_Equal0~0_combout\ <= NOT \instance_shift_register_universal8|Equal0~0_combout\;
\instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\ <= NOT \instance_shift_register_universal8|shift_register[0]~1_combout\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;

-- Location: IOOBUF_X10_Y61_N42
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_shift_register_universal8|shift_register[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X10_Y61_N59
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_shift_register_universal8|shift_register[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X10_Y61_N76
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_shift_register_universal8|shift_register[2]~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X10_Y61_N93
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_shift_register_universal8|shift_register[3]~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X21_Y61_N36
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_shift_register_universal8|shift_register[4]~10_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X21_Y61_N53
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_shift_register_universal8|shift_register[5]~12_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X19_Y61_N2
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_shift_register_universal8|shift_register[6]~14_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X19_Y61_N19
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_shift_register_universal8|shift_register[7]~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOIBUF_X46_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X15_Y6_N21
\instance_shift_register_universal8|shift_register[0]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[0]~31_combout\ = ( \KEY[3]~input_o\ & ( !\KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \instance_shift_register_universal8|shift_register[0]~31_combout\);

-- Location: LABCELL_X15_Y6_N24
\instance_shift_register_universal8|shift_register[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[0]~1_combout\ = ( \instance_shift_register_universal8|shift_register[0]~31_combout\ & ( \instance_shift_register_universal8|shift_register[0]~1_combout\ & ( \KEY[3]~input_o\ ) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register[0]~31_combout\ & ( \instance_shift_register_universal8|shift_register[0]~1_combout\ & ( \KEY[3]~input_o\ ) ) ) # ( \instance_shift_register_universal8|shift_register[0]~31_combout\ & ( 
-- !\instance_shift_register_universal8|shift_register[0]~1_combout\ & ( \KEY[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	datae => \instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	combout => \instance_shift_register_universal8|shift_register[0]~1_combout\);

-- Location: IOIBUF_X21_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G4
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N52
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X15_Y6_N33
\instance_shift_register_universal8|shift_register[7]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[7]~27_combout\ = (\SW[1]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	combout => \instance_shift_register_universal8|shift_register[7]~27_combout\);

-- Location: IOIBUF_X10_Y0_N58
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X15_Y6_N54
\instance_shift_register_universal8|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|Equal0~0_combout\ = ( !\SW[2]~input_o\ & ( (\SW[0]~input_o\ & !\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \instance_shift_register_universal8|Equal0~0_combout\);

-- Location: MLABCELL_X14_Y6_N12
\instance_shift_register_universal8|shift_register~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register~32_combout\ = ( \instance_shift_register_universal8|shift_register[2]~6_combout\ & ( ((!\SW[1]~input_o\ & \SW[0]~input_o\)) # (\instance_shift_register_universal8|shift_register[0]~2_combout\) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register[2]~6_combout\ & ( (\instance_shift_register_universal8|shift_register[0]~2_combout\ & ((!\SW[0]~input_o\) # (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \instance_shift_register_universal8|ALT_INV_shift_register[0]~2_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[2]~6_combout\,
	combout => \instance_shift_register_universal8|shift_register~32_combout\);

-- Location: MLABCELL_X14_Y6_N21
\instance_shift_register_universal8|shift_register[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[1]~5_combout\ = ( \instance_shift_register_universal8|shift_register~32_combout\ & ( !\instance_shift_register_universal8|shift_register[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register~32_combout\ & ( \instance_shift_register_universal8|shift_register[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111100001111000011110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register~32_combout\,
	combout => \instance_shift_register_universal8|shift_register[1]~5_combout\);

-- Location: LABCELL_X15_Y6_N15
\instance_shift_register_universal8|shift_register[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[0]~0_combout\ = (!\KEY[3]~input_o\) # (\instance_shift_register_universal8|shift_register[0]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\,
	combout => \instance_shift_register_universal8|shift_register[0]~0_combout\);

-- Location: LABCELL_X15_Y6_N6
\instance_shift_register_universal8|shift_register[0]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[0]~30_combout\ = ( \SW[1]~input_o\ ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	combout => \instance_shift_register_universal8|shift_register[0]~30_combout\);

-- Location: FF_X14_Y6_N22
\instance_shift_register_universal8|shift_register[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \instance_shift_register_universal8|shift_register[1]~5_combout\,
	clrn => \instance_shift_register_universal8|ALT_INV_shift_register[0]~0_combout\,
	ena => \instance_shift_register_universal8|shift_register[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_shift_register_universal8|shift_register[1]~_emulated_q\);

-- Location: MLABCELL_X14_Y6_N6
\instance_shift_register_universal8|shift_register[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[1]~4_combout\ = ( \instance_shift_register_universal8|shift_register[1]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\instance_shift_register_universal8|shift_register[0]~1_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~31_combout\))) ) ) # ( !\instance_shift_register_universal8|shift_register[1]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\instance_shift_register_universal8|shift_register[0]~31_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[1]~_emulated_q\,
	combout => \instance_shift_register_universal8|shift_register[1]~4_combout\);

-- Location: MLABCELL_X14_Y6_N33
\instance_shift_register_universal8|shift_register~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register~33_combout\ = ( \instance_shift_register_universal8|shift_register[1]~4_combout\ & ( ((!\SW[0]~input_o\) # (\instance_shift_register_universal8|shift_register[3]~8_combout\)) # (\SW[1]~input_o\) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register[1]~4_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \instance_shift_register_universal8|shift_register[3]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[3]~8_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[1]~4_combout\,
	combout => \instance_shift_register_universal8|shift_register~33_combout\);

-- Location: MLABCELL_X14_Y6_N30
\instance_shift_register_universal8|shift_register[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[2]~7_combout\ = ( \instance_shift_register_universal8|shift_register~33_combout\ & ( !\instance_shift_register_universal8|shift_register[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register~33_combout\ & ( \instance_shift_register_universal8|shift_register[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111100001111000011110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register~33_combout\,
	combout => \instance_shift_register_universal8|shift_register[2]~7_combout\);

-- Location: FF_X14_Y6_N32
\instance_shift_register_universal8|shift_register[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \instance_shift_register_universal8|shift_register[2]~7_combout\,
	clrn => \instance_shift_register_universal8|ALT_INV_shift_register[0]~0_combout\,
	ena => \instance_shift_register_universal8|shift_register[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_shift_register_universal8|shift_register[2]~_emulated_q\);

-- Location: MLABCELL_X14_Y6_N9
\instance_shift_register_universal8|shift_register[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[2]~6_combout\ = ( \instance_shift_register_universal8|shift_register[2]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\instance_shift_register_universal8|shift_register[0]~1_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~31_combout\))) ) ) # ( !\instance_shift_register_universal8|shift_register[2]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\instance_shift_register_universal8|shift_register[0]~31_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[2]~_emulated_q\,
	combout => \instance_shift_register_universal8|shift_register[2]~6_combout\);

-- Location: MLABCELL_X14_Y6_N42
\instance_shift_register_universal8|shift_register~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register~34_combout\ = ( \instance_shift_register_universal8|shift_register[4]~10_combout\ & ( ((!\SW[1]~input_o\ & \SW[0]~input_o\)) # (\instance_shift_register_universal8|shift_register[2]~6_combout\) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register[4]~10_combout\ & ( (\instance_shift_register_universal8|shift_register[2]~6_combout\ & ((!\SW[0]~input_o\) # (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000011001100110000001100110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_shift_register_universal8|ALT_INV_shift_register[2]~6_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[4]~10_combout\,
	combout => \instance_shift_register_universal8|shift_register~34_combout\);

-- Location: MLABCELL_X14_Y6_N39
\instance_shift_register_universal8|shift_register[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[3]~9_combout\ = ( \instance_shift_register_universal8|shift_register~34_combout\ & ( !\instance_shift_register_universal8|shift_register[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register~34_combout\ & ( \instance_shift_register_universal8|shift_register[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001001110010011100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register~34_combout\,
	combout => \instance_shift_register_universal8|shift_register[3]~9_combout\);

-- Location: FF_X14_Y6_N41
\instance_shift_register_universal8|shift_register[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \instance_shift_register_universal8|shift_register[3]~9_combout\,
	clrn => \instance_shift_register_universal8|ALT_INV_shift_register[0]~0_combout\,
	ena => \instance_shift_register_universal8|shift_register[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_shift_register_universal8|shift_register[3]~_emulated_q\);

-- Location: MLABCELL_X14_Y6_N36
\instance_shift_register_universal8|shift_register[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[3]~8_combout\ = ( \instance_shift_register_universal8|shift_register[3]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\instance_shift_register_universal8|shift_register[0]~1_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~31_combout\))) ) ) # ( !\instance_shift_register_universal8|shift_register[3]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\instance_shift_register_universal8|shift_register[0]~31_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[3]~_emulated_q\,
	combout => \instance_shift_register_universal8|shift_register[3]~8_combout\);

-- Location: LABCELL_X15_Y6_N39
\instance_shift_register_universal8|shift_register~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register~35_combout\ = ( \SW[1]~input_o\ & ( \instance_shift_register_universal8|shift_register[5]~12_combout\ & ( \instance_shift_register_universal8|shift_register[3]~8_combout\ ) ) ) # ( !\SW[1]~input_o\ & ( 
-- \instance_shift_register_universal8|shift_register[5]~12_combout\ & ( (\instance_shift_register_universal8|shift_register[3]~8_combout\) # (\SW[0]~input_o\) ) ) ) # ( \SW[1]~input_o\ & ( !\instance_shift_register_universal8|shift_register[5]~12_combout\ & 
-- ( \instance_shift_register_universal8|shift_register[3]~8_combout\ ) ) ) # ( !\SW[1]~input_o\ & ( !\instance_shift_register_universal8|shift_register[5]~12_combout\ & ( (!\SW[0]~input_o\ & \instance_shift_register_universal8|shift_register[3]~8_combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001111111101010101111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[3]~8_combout\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[5]~12_combout\,
	combout => \instance_shift_register_universal8|shift_register~35_combout\);

-- Location: LABCELL_X15_Y6_N30
\instance_shift_register_universal8|shift_register[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[4]~11_combout\ = ( \instance_shift_register_universal8|shift_register~35_combout\ & ( !\instance_shift_register_universal8|shift_register[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register~35_combout\ & ( \instance_shift_register_universal8|shift_register[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000101001011111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register~35_combout\,
	combout => \instance_shift_register_universal8|shift_register[4]~11_combout\);

-- Location: FF_X15_Y6_N32
\instance_shift_register_universal8|shift_register[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \instance_shift_register_universal8|shift_register[4]~11_combout\,
	clrn => \instance_shift_register_universal8|ALT_INV_shift_register[0]~0_combout\,
	ena => \instance_shift_register_universal8|shift_register[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_shift_register_universal8|shift_register[4]~_emulated_q\);

-- Location: LABCELL_X15_Y6_N45
\instance_shift_register_universal8|shift_register[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[4]~10_combout\ = ( \instance_shift_register_universal8|shift_register[0]~31_combout\ & ( \instance_shift_register_universal8|shift_register[4]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register[0]~31_combout\ & ( \instance_shift_register_universal8|shift_register[4]~_emulated_q\ & ( (\KEY[3]~input_o\ & !\instance_shift_register_universal8|shift_register[0]~1_combout\) ) ) ) # ( 
-- \instance_shift_register_universal8|shift_register[0]~31_combout\ & ( !\instance_shift_register_universal8|shift_register[4]~_emulated_q\ & ( \KEY[3]~input_o\ ) ) ) # ( !\instance_shift_register_universal8|shift_register[0]~31_combout\ & ( 
-- !\instance_shift_register_universal8|shift_register[4]~_emulated_q\ & ( (\KEY[3]~input_o\ & \instance_shift_register_universal8|shift_register[0]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101010101010101010101000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datae => \instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[4]~_emulated_q\,
	combout => \instance_shift_register_universal8|shift_register[4]~10_combout\);

-- Location: LABCELL_X15_Y6_N18
\instance_shift_register_universal8|shift_register~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register~36_combout\ = ( \instance_shift_register_universal8|shift_register[6]~14_combout\ & ( ((\SW[0]~input_o\ & !\SW[1]~input_o\)) # (\instance_shift_register_universal8|shift_register[4]~10_combout\) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register[6]~14_combout\ & ( (\instance_shift_register_universal8|shift_register[4]~10_combout\ & ((!\SW[0]~input_o\) # (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[4]~10_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[6]~14_combout\,
	combout => \instance_shift_register_universal8|shift_register~36_combout\);

-- Location: LABCELL_X15_Y6_N51
\instance_shift_register_universal8|shift_register[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[5]~13_combout\ = ( \SW[1]~input_o\ & ( \instance_shift_register_universal8|shift_register~36_combout\ & ( !\instance_shift_register_universal8|shift_register[0]~1_combout\ $ (\SW[0]~input_o\) ) ) ) # ( 
-- !\SW[1]~input_o\ & ( \instance_shift_register_universal8|shift_register~36_combout\ & ( !\instance_shift_register_universal8|shift_register[0]~1_combout\ ) ) ) # ( \SW[1]~input_o\ & ( !\instance_shift_register_universal8|shift_register~36_combout\ & ( 
-- \instance_shift_register_universal8|shift_register[0]~1_combout\ ) ) ) # ( !\SW[1]~input_o\ & ( !\instance_shift_register_universal8|shift_register~36_combout\ & ( \instance_shift_register_universal8|shift_register[0]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register~36_combout\,
	combout => \instance_shift_register_universal8|shift_register[5]~13_combout\);

-- Location: FF_X15_Y6_N53
\instance_shift_register_universal8|shift_register[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \instance_shift_register_universal8|shift_register[5]~13_combout\,
	clrn => \instance_shift_register_universal8|ALT_INV_shift_register[0]~0_combout\,
	ena => \instance_shift_register_universal8|shift_register[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_shift_register_universal8|shift_register[5]~_emulated_q\);

-- Location: LABCELL_X15_Y6_N12
\instance_shift_register_universal8|shift_register[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[5]~12_combout\ = ( \instance_shift_register_universal8|shift_register[5]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\instance_shift_register_universal8|shift_register[0]~1_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~31_combout\))) ) ) # ( !\instance_shift_register_universal8|shift_register[5]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\instance_shift_register_universal8|shift_register[0]~31_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[5]~_emulated_q\,
	combout => \instance_shift_register_universal8|shift_register[5]~12_combout\);

-- Location: MLABCELL_X14_Y6_N27
\instance_shift_register_universal8|shift_register~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register~37_combout\ = ( \instance_shift_register_universal8|shift_register[5]~12_combout\ & ( ((!\SW[0]~input_o\) # (\instance_shift_register_universal8|shift_register[7]~16_combout\)) # (\SW[1]~input_o\) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register[5]~12_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \instance_shift_register_universal8|shift_register[7]~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[7]~16_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[5]~12_combout\,
	combout => \instance_shift_register_universal8|shift_register~37_combout\);

-- Location: MLABCELL_X14_Y6_N24
\instance_shift_register_universal8|shift_register[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[6]~15_combout\ = ( \instance_shift_register_universal8|shift_register~37_combout\ & ( !\instance_shift_register_universal8|shift_register[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register~37_combout\ & ( \instance_shift_register_universal8|shift_register[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111100001111000011110000111100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register~37_combout\,
	combout => \instance_shift_register_universal8|shift_register[6]~15_combout\);

-- Location: FF_X14_Y6_N26
\instance_shift_register_universal8|shift_register[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \instance_shift_register_universal8|shift_register[6]~15_combout\,
	clrn => \instance_shift_register_universal8|ALT_INV_shift_register[0]~0_combout\,
	ena => \instance_shift_register_universal8|shift_register[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_shift_register_universal8|shift_register[6]~_emulated_q\);

-- Location: MLABCELL_X14_Y6_N45
\instance_shift_register_universal8|shift_register[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[6]~14_combout\ = ( \instance_shift_register_universal8|shift_register[6]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\instance_shift_register_universal8|shift_register[0]~1_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~31_combout\))) ) ) # ( !\instance_shift_register_universal8|shift_register[6]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\instance_shift_register_universal8|shift_register[0]~31_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[6]~_emulated_q\,
	combout => \instance_shift_register_universal8|shift_register[6]~14_combout\);

-- Location: MLABCELL_X14_Y6_N15
\instance_shift_register_universal8|shift_register[7]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[7]~38_combout\ = ( \instance_shift_register_universal8|shift_register[0]~2_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & (\SW[2]~input_o\))) # (\SW[1]~input_o\ & (!\SW[0]~input_o\ & 
-- ((\instance_shift_register_universal8|shift_register[6]~14_combout\)))) ) ) # ( !\instance_shift_register_universal8|shift_register[0]~2_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & 
-- \instance_shift_register_universal8|shift_register[6]~14_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000010010001100000001001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[6]~14_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[0]~2_combout\,
	combout => \instance_shift_register_universal8|shift_register[7]~38_combout\);

-- Location: MLABCELL_X14_Y6_N51
\instance_shift_register_universal8|shift_register[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[7]~17_combout\ = ( \instance_shift_register_universal8|shift_register[7]~38_combout\ & ( !\instance_shift_register_universal8|shift_register[0]~1_combout\ $ (((!\SW[9]~input_o\ & 
-- \instance_shift_register_universal8|Equal0~0_combout\))) ) ) # ( !\instance_shift_register_universal8|shift_register[7]~38_combout\ & ( !\instance_shift_register_universal8|shift_register[0]~1_combout\ $ (((!\SW[9]~input_o\) # 
-- (!\instance_shift_register_universal8|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110011001100001111001100110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_Equal0~0_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[7]~38_combout\,
	combout => \instance_shift_register_universal8|shift_register[7]~17_combout\);

-- Location: FF_X14_Y6_N53
\instance_shift_register_universal8|shift_register[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \instance_shift_register_universal8|shift_register[7]~17_combout\,
	clrn => \instance_shift_register_universal8|ALT_INV_shift_register[0]~0_combout\,
	ena => \instance_shift_register_universal8|shift_register[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_shift_register_universal8|shift_register[7]~_emulated_q\);

-- Location: MLABCELL_X14_Y6_N54
\instance_shift_register_universal8|shift_register[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[7]~16_combout\ = ( \instance_shift_register_universal8|shift_register[7]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\instance_shift_register_universal8|shift_register[0]~1_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~31_combout\))) ) ) # ( !\instance_shift_register_universal8|shift_register[7]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\instance_shift_register_universal8|shift_register[0]~31_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[7]~_emulated_q\,
	combout => \instance_shift_register_universal8|shift_register[7]~16_combout\);

-- Location: MLABCELL_X14_Y6_N0
\instance_shift_register_universal8|shift_register[0]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[0]~28_combout\ = ( \instance_shift_register_universal8|shift_register[7]~16_combout\ & ( \instance_shift_register_universal8|shift_register[1]~4_combout\ & ( (!\SW[1]~input_o\ & (((!\SW[2]~input_o\ & 
-- \SW[0]~input_o\)))) # (\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\SW[2]~input_o\) # (\SW[8]~input_o\)))) ) ) ) # ( !\instance_shift_register_universal8|shift_register[7]~16_combout\ & ( \instance_shift_register_universal8|shift_register[1]~4_combout\ & ( 
-- (!\SW[2]~input_o\ & ((!\SW[1]~input_o\ & ((\SW[0]~input_o\))) # (\SW[1]~input_o\ & (\SW[8]~input_o\ & !\SW[0]~input_o\)))) ) ) ) # ( \instance_shift_register_universal8|shift_register[7]~16_combout\ & ( 
-- !\instance_shift_register_universal8|shift_register[1]~4_combout\ & ( (\SW[8]~input_o\ & (!\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\))) ) ) ) # ( !\instance_shift_register_universal8|shift_register[7]~16_combout\ & ( 
-- !\instance_shift_register_universal8|shift_register[1]~4_combout\ & ( (\SW[8]~input_o\ & (!\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100110000000000011111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \instance_shift_register_universal8|ALT_INV_shift_register[7]~16_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[1]~4_combout\,
	combout => \instance_shift_register_universal8|shift_register[0]~28_combout\);

-- Location: MLABCELL_X14_Y6_N18
\instance_shift_register_universal8|shift_register[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[0]~29_combout\ = ( \instance_shift_register_universal8|shift_register[1]~4_combout\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[2]~input_o\)) ) ) # ( 
-- !\instance_shift_register_universal8|shift_register[1]~4_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\SW[2]~input_o\ & \instance_shift_register_universal8|shift_register[7]~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[7]~16_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[1]~4_combout\,
	combout => \instance_shift_register_universal8|shift_register[0]~29_combout\);

-- Location: MLABCELL_X14_Y6_N57
\instance_shift_register_universal8|shift_register[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[0]~3_combout\ = ( \instance_shift_register_universal8|shift_register[0]~29_combout\ & ( !\instance_shift_register_universal8|shift_register[0]~1_combout\ ) ) # ( 
-- !\instance_shift_register_universal8|shift_register[0]~29_combout\ & ( !\instance_shift_register_universal8|shift_register[0]~1_combout\ $ (((!\instance_shift_register_universal8|shift_register[0]~28_combout\) # 
-- (\instance_shift_register_universal8|shift_register[7]~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110011001001100111001100111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instance_shift_register_universal8|ALT_INV_shift_register[7]~27_combout\,
	datab => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[0]~28_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[0]~29_combout\,
	combout => \instance_shift_register_universal8|shift_register[0]~3_combout\);

-- Location: FF_X14_Y6_N58
\instance_shift_register_universal8|shift_register[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \instance_shift_register_universal8|shift_register[0]~3_combout\,
	clrn => \instance_shift_register_universal8|ALT_INV_shift_register[0]~0_combout\,
	ena => \instance_shift_register_universal8|shift_register[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_shift_register_universal8|shift_register[0]~_emulated_q\);

-- Location: MLABCELL_X14_Y6_N48
\instance_shift_register_universal8|shift_register[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_shift_register_universal8|shift_register[0]~2_combout\ = ( \instance_shift_register_universal8|shift_register[0]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((!\instance_shift_register_universal8|shift_register[0]~1_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~31_combout\))) ) ) # ( !\instance_shift_register_universal8|shift_register[0]~_emulated_q\ & ( (\KEY[3]~input_o\ & ((\instance_shift_register_universal8|shift_register[0]~31_combout\) # 
-- (\instance_shift_register_universal8|shift_register[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001100000011110000110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_shift_register_universal8|ALT_INV_shift_register[0]~1_combout\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \instance_shift_register_universal8|ALT_INV_shift_register[0]~31_combout\,
	dataf => \instance_shift_register_universal8|ALT_INV_shift_register[0]~_emulated_q\,
	combout => \instance_shift_register_universal8|shift_register[0]~2_combout\);

-- Location: IOIBUF_X14_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X63_Y27_N3
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


