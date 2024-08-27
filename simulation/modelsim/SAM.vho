-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "08/26/2024 00:15:01"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sd IS
    PORT (
	Reset : IN std_logic;
	ck : IN std_logic;
	entA : IN IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	entB : IN IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	mult : OUT IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	pronto : OUT std_logic
	);
END sd;

-- Design Ports Information
-- mult[0]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mult[1]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mult[2]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mult[3]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ck	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[3]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[2]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[1]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entB[0]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[3]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[1]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entA[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_ck : std_logic;
SIGNAL ww_entA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_entB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mult : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \ck~input_o\ : std_logic;
SIGNAL \ck~inputCLKENA0_outclk\ : std_logic;
SIGNAL \entB[0]~input_o\ : std_logic;
SIGNAL \B[0]~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \entA[1]~input_o\ : std_logic;
SIGNAL \entA[2]~input_o\ : std_logic;
SIGNAL \entA[0]~input_o\ : std_logic;
SIGNAL \state.SUB~DUPLICATE_q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.SUB~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \entA[3]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \state.CHECK_B~q\ : std_logic;
SIGNAL \entB[1]~input_o\ : std_logic;
SIGNAL \B[1]~feeder_combout\ : std_logic;
SIGNAL \entB[2]~input_o\ : std_logic;
SIGNAL \B[2]~feeder_combout\ : std_logic;
SIGNAL \entB[3]~input_o\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.ADD~q\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \state.DONE~q\ : std_logic;
SIGNAL \state.IDLE~0_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \state.LOAD~0_combout\ : std_logic;
SIGNAL \state.LOAD~q\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \mult[0]~reg0feeder_combout\ : std_logic;
SIGNAL \mult[0]~reg0_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \mult[1]~reg0_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \mult[2]~reg0feeder_combout\ : std_logic;
SIGNAL \mult[2]~reg0_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \mult[3]~reg0_q\ : std_logic;
SIGNAL \state.IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \pronto~reg0_q\ : std_logic;
SIGNAL P : std_logic_vector(3 DOWNTO 0);
SIGNAL temp : std_logic_vector(3 DOWNTO 0);
SIGNAL B : std_logic_vector(3 DOWNTO 0);
SIGNAL A : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.SUB~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_entA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;
SIGNAL ALT_INV_temp : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.ADD~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL ALT_INV_A : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL ALT_INV_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.CHECK_B~q\ : std_logic;
SIGNAL \ALT_INV_state.LOAD~q\ : std_logic;
SIGNAL \ALT_INV_state.SUB~q\ : std_logic;
SIGNAL \ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL ALT_INV_P : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.DONE~q\ : std_logic;
SIGNAL \ALT_INV_pronto~reg0_q\ : std_logic;

BEGIN

ww_Reset <= Reset;
ww_ck <= ck;
ww_entA <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(entA);
ww_entB <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(entB);
mult <= IEEE.NUMERIC_STD.UNSIGNED(ww_mult);
pronto <= ww_pronto;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state.SUB~DUPLICATE_q\ <= NOT \state.SUB~DUPLICATE_q\;
\ALT_INV_state.IDLE~DUPLICATE_q\ <= NOT \state.IDLE~DUPLICATE_q\;
\ALT_INV_entA[0]~input_o\ <= NOT \entA[0]~input_o\;
\ALT_INV_entA[1]~input_o\ <= NOT \entA[1]~input_o\;
\ALT_INV_entA[2]~input_o\ <= NOT \entA[2]~input_o\;
\ALT_INV_entA[3]~input_o\ <= NOT \entA[3]~input_o\;
\ALT_INV_entB[0]~input_o\ <= NOT \entB[0]~input_o\;
\ALT_INV_entB[1]~input_o\ <= NOT \entB[1]~input_o\;
\ALT_INV_entB[2]~input_o\ <= NOT \entB[2]~input_o\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;
ALT_INV_temp(3) <= NOT temp(3);
ALT_INV_temp(2) <= NOT temp(2);
ALT_INV_temp(1) <= NOT temp(1);
\ALT_INV_state.ADD~q\ <= NOT \state.ADD~q\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
ALT_INV_A(0) <= NOT A(0);
ALT_INV_A(1) <= NOT A(1);
ALT_INV_A(2) <= NOT A(2);
ALT_INV_A(3) <= NOT A(3);
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
ALT_INV_B(0) <= NOT B(0);
ALT_INV_B(1) <= NOT B(1);
ALT_INV_B(2) <= NOT B(2);
ALT_INV_B(3) <= NOT B(3);
\ALT_INV_state.CHECK_B~q\ <= NOT \state.CHECK_B~q\;
\ALT_INV_state.LOAD~q\ <= NOT \state.LOAD~q\;
\ALT_INV_state.SUB~q\ <= NOT \state.SUB~q\;
ALT_INV_temp(0) <= NOT temp(0);
\ALT_INV_state.IDLE~q\ <= NOT \state.IDLE~q\;
ALT_INV_P(3) <= NOT P(3);
ALT_INV_P(2) <= NOT P(2);
ALT_INV_P(1) <= NOT P(1);
\ALT_INV_state.DONE~q\ <= NOT \state.DONE~q\;
ALT_INV_P(0) <= NOT P(0);
\ALT_INV_pronto~reg0_q\ <= NOT \pronto~reg0_q\;

-- Location: IOOBUF_X89_Y20_N79
\mult[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mult[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mult(0));

-- Location: IOOBUF_X89_Y16_N56
\mult[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mult[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mult(1));

-- Location: IOOBUF_X89_Y21_N22
\mult[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mult[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mult(2));

-- Location: IOOBUF_X89_Y21_N5
\mult[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mult[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_mult(3));

-- Location: IOOBUF_X89_Y20_N96
\pronto~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pronto~reg0_q\,
	devoe => ww_devoe,
	o => ww_pronto);

-- Location: IOIBUF_X89_Y25_N21
\ck~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ck,
	o => \ck~input_o\);

-- Location: CLKCTRL_G10
\ck~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \ck~input_o\,
	outclk => \ck~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y13_N21
\entB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(0),
	o => \entB[0]~input_o\);

-- Location: MLABCELL_X87_Y17_N39
\B[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[0]~feeder_combout\ = ( \entB[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_entB[0]~input_o\,
	combout => \B[0]~feeder_combout\);

-- Location: IOIBUF_X89_Y16_N38
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: IOIBUF_X89_Y15_N38
\entA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(1),
	o => \entA[1]~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\entA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(2),
	o => \entA[2]~input_o\);

-- Location: IOIBUF_X89_Y16_N4
\entA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(0),
	o => \entA[0]~input_o\);

-- Location: FF_X88_Y17_N40
\state.SUB~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SUB~DUPLICATE_q\);

-- Location: LABCELL_X88_Y17_N12
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \state.SUB~DUPLICATE_q\ & ( !A(0) ) ) # ( !\state.SUB~DUPLICATE_q\ & ( \entA[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entA[0]~input_o\,
	datad => ALT_INV_A(0),
	dataf => \ALT_INV_state.SUB~DUPLICATE_q\,
	combout => \Selector9~0_combout\);

-- Location: LABCELL_X88_Y17_N57
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \state.SUB~q\ ) # ( !\state.SUB~q\ & ( \state.LOAD~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state.LOAD~q\,
	dataf => \ALT_INV_state.SUB~q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X88_Y17_N14
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: LABCELL_X88_Y17_N54
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \state.SUB~DUPLICATE_q\ & ( !A(2) $ (((A(1)) # (A(0)))) ) ) # ( !\state.SUB~DUPLICATE_q\ & ( \entA[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111000000001111111100000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entA[2]~input_o\,
	datab => ALT_INV_A(0),
	datac => ALT_INV_A(1),
	datad => ALT_INV_A(2),
	dataf => \ALT_INV_state.SUB~DUPLICATE_q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X88_Y17_N56
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: LABCELL_X88_Y17_N39
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( A(2) & ( A(0) & ( \state.ADD~q\ ) ) ) # ( !A(2) & ( A(0) & ( \state.ADD~q\ ) ) ) # ( A(2) & ( !A(0) & ( \state.ADD~q\ ) ) ) # ( !A(2) & ( !A(0) & ( (\state.ADD~q\ & ((A(3)) # (A(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(1),
	datac => \ALT_INV_state.ADD~q\,
	datad => ALT_INV_A(3),
	datae => ALT_INV_A(2),
	dataf => ALT_INV_A(0),
	combout => \Selector4~0_combout\);

-- Location: FF_X88_Y17_N41
\state.SUB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SUB~q\);

-- Location: LABCELL_X88_Y17_N33
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( A(0) & ( (!\state.SUB~q\ & (\entA[1]~input_o\)) # (\state.SUB~q\ & ((A(1)))) ) ) # ( !A(0) & ( (!\state.SUB~q\ & (\entA[1]~input_o\)) # (\state.SUB~q\ & ((!A(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000001111110011000000110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entA[1]~input_o\,
	datac => \ALT_INV_state.SUB~q\,
	datad => ALT_INV_A(1),
	dataf => ALT_INV_A(0),
	combout => \Selector8~0_combout\);

-- Location: FF_X88_Y17_N35
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: IOIBUF_X89_Y15_N55
\entA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entA(3),
	o => \entA[3]~input_o\);

-- Location: LABCELL_X88_Y17_N48
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( A(3) & ( \state.SUB~DUPLICATE_q\ & ( ((A(2)) # (A(0))) # (A(1)) ) ) ) # ( !A(3) & ( \state.SUB~DUPLICATE_q\ & ( (!A(1) & (!A(0) & !A(2))) ) ) ) # ( A(3) & ( !\state.SUB~DUPLICATE_q\ & ( \entA[3]~input_o\ ) ) ) # ( !A(3) & ( 
-- !\state.SUB~DUPLICATE_q\ & ( \entA[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111110000000100000000111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(1),
	datab => ALT_INV_A(0),
	datac => ALT_INV_A(2),
	datad => \ALT_INV_entA[3]~input_o\,
	datae => ALT_INV_A(3),
	dataf => \ALT_INV_state.SUB~DUPLICATE_q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X88_Y17_N50
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: LABCELL_X88_Y17_N42
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !A(0) & ( (!A(3) & (!A(1) & !A(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_A(3),
	datac => ALT_INV_A(1),
	datad => ALT_INV_A(2),
	dataf => ALT_INV_A(0),
	combout => \Equal1~0_combout\);

-- Location: FF_X88_Y17_N38
\state.CHECK_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	asdata => \state.LOAD~q\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.CHECK_B~q\);

-- Location: IOIBUF_X89_Y15_N21
\entB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(1),
	o => \entB[1]~input_o\);

-- Location: MLABCELL_X87_Y17_N24
\B[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[1]~feeder_combout\ = ( \entB[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_entB[1]~input_o\,
	combout => \B[1]~feeder_combout\);

-- Location: FF_X87_Y17_N26
\B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \B[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \state.LOAD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(1));

-- Location: IOIBUF_X89_Y15_N4
\entB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(2),
	o => \entB[2]~input_o\);

-- Location: MLABCELL_X87_Y17_N54
\B[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \B[2]~feeder_combout\ = ( \entB[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_entB[2]~input_o\,
	combout => \B[2]~feeder_combout\);

-- Location: FF_X87_Y17_N56
\B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \B[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \state.LOAD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(2));

-- Location: IOIBUF_X89_Y21_N55
\entB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entB(3),
	o => \entB[3]~input_o\);

-- Location: FF_X87_Y17_N53
\B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	asdata => \entB[3]~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	ena => \state.LOAD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(3));

-- Location: MLABCELL_X87_Y17_N30
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( !B(2) & ( !B(3) & ( (!B(1) & !B(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_B(1),
	datad => ALT_INV_B(0),
	datae => ALT_INV_B(2),
	dataf => ALT_INV_B(3),
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X88_Y17_N45
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \Selector5~0_combout\ & ( (!\Equal1~0_combout\ & \state.SUB~q\) ) ) # ( !\Selector5~0_combout\ & ( ((!\Equal1~0_combout\ & \state.SUB~q\)) # (\state.CHECK_B~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \ALT_INV_state.SUB~q\,
	datad => \ALT_INV_state.CHECK_B~q\,
	dataf => \ALT_INV_Selector5~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X88_Y17_N47
\state.ADD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ADD~q\);

-- Location: LABCELL_X88_Y17_N18
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( \Equal1~0_combout\ & ( (((\Selector5~0_combout\ & \state.CHECK_B~q\)) # (\state.SUB~q\)) # (\state.ADD~q\) ) ) # ( !\Equal1~0_combout\ & ( (\Selector5~0_combout\ & \state.CHECK_B~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ADD~q\,
	datab => \ALT_INV_state.SUB~q\,
	datac => \ALT_INV_Selector5~0_combout\,
	datad => \ALT_INV_state.CHECK_B~q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X88_Y17_N20
\state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DONE~q\);

-- Location: MLABCELL_X87_Y17_N3
\state.IDLE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.IDLE~0_combout\ = ( !\state.DONE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.DONE~q\,
	combout => \state.IDLE~0_combout\);

-- Location: FF_X87_Y17_N4
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \state.IDLE~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LABCELL_X88_Y17_N21
\state.LOAD~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.LOAD~0_combout\ = ( !\state.IDLE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.IDLE~q\,
	combout => \state.LOAD~0_combout\);

-- Location: FF_X88_Y17_N23
\state.LOAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \state.LOAD~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.LOAD~q\);

-- Location: FF_X87_Y17_N41
\B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \B[0]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \state.LOAD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(0));

-- Location: LABCELL_X88_Y17_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( B(0) ) + ( P(0) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( B(0) ) + ( P(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P(0),
	datad => ALT_INV_B(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X88_Y17_N1
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \state.ADD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: LABCELL_X88_Y17_N24
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \state.SUB~DUPLICATE_q\ & ( temp(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_temp(0),
	dataf => \ALT_INV_state.SUB~DUPLICATE_q\,
	combout => \Selector13~0_combout\);

-- Location: FF_X88_Y17_N26
\P[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector13~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P(0));

-- Location: MLABCELL_X87_Y17_N42
\mult[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult[0]~reg0feeder_combout\ = ( P(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_P(0),
	combout => \mult[0]~reg0feeder_combout\);

-- Location: FF_X87_Y17_N43
\mult[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \mult[0]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult[0]~reg0_q\);

-- Location: LABCELL_X88_Y17_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( B(1) ) + ( P(1) ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( B(1) ) + ( P(1) ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P(1),
	datad => ALT_INV_B(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X88_Y17_N5
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \state.ADD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LABCELL_X88_Y17_N15
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \state.SUB~DUPLICATE_q\ & ( temp(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_temp(1),
	dataf => \ALT_INV_state.SUB~DUPLICATE_q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X88_Y17_N17
\P[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P(1));

-- Location: FF_X87_Y17_N35
\mult[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	asdata => P(1),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult[1]~reg0_q\);

-- Location: LABCELL_X88_Y17_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( B(2) ) + ( P(2) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( B(2) ) + ( P(2) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P(2),
	datad => ALT_INV_B(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X88_Y17_N7
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \state.ADD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: LABCELL_X88_Y17_N30
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( temp(2) & ( \state.SUB~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_state.SUB~DUPLICATE_q\,
	dataf => ALT_INV_temp(2),
	combout => \Selector11~0_combout\);

-- Location: FF_X88_Y17_N31
\P[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P(2));

-- Location: MLABCELL_X87_Y17_N12
\mult[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mult[2]~reg0feeder_combout\ = ( P(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_P(2),
	combout => \mult[2]~reg0feeder_combout\);

-- Location: FF_X87_Y17_N13
\mult[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \mult[2]~reg0feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult[2]~reg0_q\);

-- Location: LABCELL_X88_Y17_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( B(3) ) + ( P(3) ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_P(3),
	datad => ALT_INV_B(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\);

-- Location: FF_X88_Y17_N11
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \state.ADD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LABCELL_X88_Y17_N27
\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( temp(3) & ( \state.SUB~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.SUB~q\,
	dataf => ALT_INV_temp(3),
	combout => \Selector10~1_combout\);

-- Location: FF_X88_Y17_N28
\P[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector10~1_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => P(3));

-- Location: FF_X87_Y17_N10
\mult[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	asdata => P(3),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	ena => \state.DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mult[3]~reg0_q\);

-- Location: FF_X87_Y17_N5
\state.IDLE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \state.IDLE~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y17_N0
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.DONE~q\ ) # ( !\state.DONE~q\ & ( (\state.IDLE~DUPLICATE_q\ & \pronto~reg0_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.IDLE~DUPLICATE_q\,
	datad => \ALT_INV_pronto~reg0_q\,
	dataf => \ALT_INV_state.DONE~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X87_Y17_N1
\pronto~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ck~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pronto~reg0_q\);

-- Location: MLABCELL_X52_Y24_N3
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


