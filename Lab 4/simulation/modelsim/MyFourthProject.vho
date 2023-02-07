-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/03/2021 10:39:50"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ADDER_8Bits_ADDSUB IS
    PORT (
	Z : OUT std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	ADD_SUB : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0)
	);
END ADDER_8Bits_ADDSUB;

-- Design Ports Information
-- Z	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADD_SUB	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ADDER_8Bits_ADDSUB IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ADD_SUB : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst3|inst5~0_combout\ : std_logic;
SIGNAL \inst4|inst4~0_combout\ : std_logic;
SIGNAL \inst6|inst5~0_combout\ : std_logic;
SIGNAL \ADD_SUB~combout\ : std_logic;
SIGNAL \inst7|inst4~0_combout\ : std_logic;
SIGNAL \inst4|inst5~0_combout\ : std_logic;
SIGNAL \inst5|inst5~0_combout\ : std_logic;
SIGNAL \inst6|inst4~0_combout\ : std_logic;
SIGNAL \inst16~2_combout\ : std_logic;
SIGNAL \inst|inst4~0_combout\ : std_logic;
SIGNAL \inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst3|inst4~0_combout\ : std_logic;
SIGNAL \inst16~1_combout\ : std_logic;
SIGNAL \inst5|inst4~0_combout\ : std_logic;
SIGNAL \inst|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst4~combout\ : std_logic;
SIGNAL \inst16~0_combout\ : std_logic;
SIGNAL \inst16~3_combout\ : std_logic;
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_inst16~3_combout\ : std_logic;

BEGIN

Z <= ww_Z;
ww_A <= A;
ww_ADD_SUB <= ADD_SUB;
ww_B <= B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst16~3_combout\ <= NOT \inst16~3_combout\;

-- Location: LCCOMB_X1_Y28_N12
\inst1|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst5~0_combout\ = (\A~combout\(1) & ((\inst|inst5~0_combout\) # (\B~combout\(1) $ (\ADD_SUB~combout\)))) # (!\A~combout\(1) & (\inst|inst5~0_combout\ & (\B~combout\(1) $ (\ADD_SUB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \inst|inst5~0_combout\,
	datad => \ADD_SUB~combout\,
	combout => \inst1|inst5~0_combout\);

-- Location: LCCOMB_X1_Y28_N24
\inst3|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst5~0_combout\ = (\A~combout\(3) & ((\inst2|inst5~0_combout\) # (\B~combout\(3) $ (\ADD_SUB~combout\)))) # (!\A~combout\(3) & (\inst2|inst5~0_combout\ & (\B~combout\(3) $ (\ADD_SUB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \A~combout\(3),
	datac => \inst2|inst5~0_combout\,
	datad => \ADD_SUB~combout\,
	combout => \inst3|inst5~0_combout\);

-- Location: LCCOMB_X1_Y28_N6
\inst4|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst4~0_combout\ = \inst3|inst5~0_combout\ $ (\A~combout\(4) $ (\B~combout\(4) $ (\ADD_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5~0_combout\,
	datab => \A~combout\(4),
	datac => \B~combout\(4),
	datad => \ADD_SUB~combout\,
	combout => \inst4|inst4~0_combout\);

-- Location: LCCOMB_X4_Y29_N12
\inst6|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst5~0_combout\ = (\A~combout\(6) & ((\inst5|inst5~0_combout\) # (\B~combout\(6) $ (\ADD_SUB~combout\)))) # (!\A~combout\(6) & (\inst5|inst5~0_combout\ & (\B~combout\(6) $ (\ADD_SUB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datac => \ADD_SUB~combout\,
	datad => \inst5|inst5~0_combout\,
	combout => \inst6|inst5~0_combout\);

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ADD_SUB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ADD_SUB,
	combout => \ADD_SUB~combout\);

-- Location: LCCOMB_X4_Y29_N2
\inst7|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst4~0_combout\ = \A~combout\(7) $ (\ADD_SUB~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datac => \ADD_SUB~combout\,
	combout => \inst7|inst4~0_combout\);

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X1_Y28_N18
\inst4|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst5~0_combout\ = (\inst3|inst5~0_combout\ & ((\A~combout\(4)) # (\B~combout\(4) $ (\ADD_SUB~combout\)))) # (!\inst3|inst5~0_combout\ & (\A~combout\(4) & (\B~combout\(4) $ (\ADD_SUB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5~0_combout\,
	datab => \A~combout\(4),
	datac => \B~combout\(4),
	datad => \ADD_SUB~combout\,
	combout => \inst4|inst5~0_combout\);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCCOMB_X1_Y28_N2
\inst5|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst5~0_combout\ = (\inst4|inst5~0_combout\ & ((\A~combout\(5)) # (\B~combout\(5) $ (\ADD_SUB~combout\)))) # (!\inst4|inst5~0_combout\ & (\A~combout\(5) & (\B~combout\(5) $ (\ADD_SUB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \inst4|inst5~0_combout\,
	datac => \A~combout\(5),
	datad => \ADD_SUB~combout\,
	combout => \inst5|inst5~0_combout\);

-- Location: LCCOMB_X4_Y29_N0
\inst6|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst4~0_combout\ = \A~combout\(6) $ (\B~combout\(6) $ (\ADD_SUB~combout\ $ (\inst5|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datac => \ADD_SUB~combout\,
	datad => \inst5|inst5~0_combout\,
	combout => \inst6|inst4~0_combout\);

-- Location: LCCOMB_X4_Y29_N6
\inst16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16~2_combout\ = (\inst6|inst4~0_combout\ & (\inst6|inst5~0_combout\ $ (\inst7|inst4~0_combout\ $ (\B~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst5~0_combout\,
	datab => \inst7|inst4~0_combout\,
	datac => \B~combout\(7),
	datad => \inst6|inst4~0_combout\,
	combout => \inst16~2_combout\);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X1_Y28_N26
\inst|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst4~0_combout\ = \A~combout\(0) $ (\B~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datad => \B~combout\(0),
	combout => \inst|inst4~0_combout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X1_Y28_N28
\inst2|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst4~0_combout\ = \inst1|inst5~0_combout\ $ (\A~combout\(2) $ (\B~combout\(2) $ (\ADD_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5~0_combout\,
	datab => \A~combout\(2),
	datac => \B~combout\(2),
	datad => \ADD_SUB~combout\,
	combout => \inst2|inst4~0_combout\);

-- Location: LCCOMB_X1_Y28_N14
\inst2|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|inst5~0_combout\ = (\inst1|inst5~0_combout\ & ((\A~combout\(2)) # (\B~combout\(2) $ (\ADD_SUB~combout\)))) # (!\inst1|inst5~0_combout\ & (\A~combout\(2) & (\B~combout\(2) $ (\ADD_SUB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst5~0_combout\,
	datab => \A~combout\(2),
	datac => \B~combout\(2),
	datad => \ADD_SUB~combout\,
	combout => \inst2|inst5~0_combout\);

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X1_Y28_N22
\inst3|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst4~0_combout\ = \A~combout\(3) $ (\ADD_SUB~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(3),
	datad => \ADD_SUB~combout\,
	combout => \inst3|inst4~0_combout\);

-- Location: LCCOMB_X1_Y28_N16
\inst16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16~1_combout\ = (\inst2|inst4~0_combout\ & (\B~combout\(3) $ (\inst2|inst5~0_combout\ $ (\inst3|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \inst2|inst4~0_combout\,
	datac => \inst2|inst5~0_combout\,
	datad => \inst3|inst4~0_combout\,
	combout => \inst16~1_combout\);

-- Location: LCCOMB_X1_Y28_N4
\inst5|inst4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst4~0_combout\ = \B~combout\(5) $ (\inst4|inst5~0_combout\ $ (\A~combout\(5) $ (\ADD_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \inst4|inst5~0_combout\,
	datac => \A~combout\(5),
	datad => \ADD_SUB~combout\,
	combout => \inst5|inst4~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X1_Y28_N8
\inst|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|inst5~0_combout\ = (\B~combout\(0) & (\A~combout\(0))) # (!\B~combout\(0) & ((\ADD_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => \ADD_SUB~combout\,
	combout => \inst|inst5~0_combout\);

-- Location: LCCOMB_X1_Y28_N10
\inst1|inst4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|inst4~combout\ = \B~combout\(1) $ (\A~combout\(1) $ (\inst|inst5~0_combout\ $ (\ADD_SUB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \inst|inst5~0_combout\,
	datad => \ADD_SUB~combout\,
	combout => \inst1|inst4~combout\);

-- Location: LCCOMB_X1_Y28_N0
\inst16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16~0_combout\ = (\inst4|inst4~0_combout\ & (\inst5|inst4~0_combout\ & \inst1|inst4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst4~0_combout\,
	datac => \inst5|inst4~0_combout\,
	datad => \inst1|inst4~combout\,
	combout => \inst16~0_combout\);

-- Location: LCCOMB_X1_Y28_N20
\inst16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst16~3_combout\ = (\inst16~2_combout\ & (\inst|inst4~0_combout\ & (\inst16~1_combout\ & \inst16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~2_combout\,
	datab => \inst|inst4~0_combout\,
	datac => \inst16~1_combout\,
	datad => \inst16~0_combout\,
	combout => \inst16~3_combout\);

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z);
END structure;


