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

-- DATE "05/14/2021 17:30:51"

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

ENTITY 	Sorter_V2_255 IS
    PORT (
	clk : IN std_logic;
	launch : IN std_logic;
	reset : IN std_logic;
	Address_A : IN std_logic_vector(7 DOWNTO 0);
	Address_B : IN std_logic_vector(7 DOWNTO 0);
	EXT_Address : IN std_logic_vector(7 DOWNTO 0);
	Complete : OUT std_logic;
	Data : OUT std_logic_vector(7 DOWNTO 0)
	);
END Sorter_V2_255;

-- Design Ports Information
-- Complete	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[0]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[1]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[2]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[3]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[4]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[5]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[6]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[7]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Address_B[0]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_B[1]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_B[2]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_B[3]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_B[4]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_B[5]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_B[6]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_B[7]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- launch	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_Address[0]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_Address[1]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_Address[2]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_Address[3]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_Address[4]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_Address[5]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_Address[6]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_Address[7]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_A[1]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_A[0]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_A[3]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_A[2]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_A[5]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_A[4]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_A[7]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Address_A[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Sorter_V2_255 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_launch : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_Address_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Address_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EXT_Address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Complete : std_logic;
SIGNAL ww_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|count[6]~21_combout\ : std_logic;
SIGNAL \b2v_inst|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~6_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~8_combout\ : std_logic;
SIGNAL \b2v_inst|WR~combout\ : std_logic;
SIGNAL \b2v_inst|Selector6~0_combout\ : std_logic;
SIGNAL \launch~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|count[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst|delay~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|delay~regout\ : std_logic;
SIGNAL \b2v_inst|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst|state.SendAddrA_r~regout\ : std_logic;
SIGNAL \b2v_inst|Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst|state.GetA~regout\ : std_logic;
SIGNAL \b2v_inst|Selector5~9_combout\ : std_logic;
SIGNAL \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \b2v_inst|Cnt~0_combout\ : std_logic;
SIGNAL \b2v_inst|count[4]~18\ : std_logic;
SIGNAL \b2v_inst|count[5]~20\ : std_logic;
SIGNAL \b2v_inst|count[6]~22\ : std_logic;
SIGNAL \b2v_inst|count[7]~23_combout\ : std_logic;
SIGNAL \b2v_inst|count[7]~12_combout\ : std_logic;
SIGNAL \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \b2v_inst|dataB[7]~0_combout\ : std_logic;
SIGNAL \b2v_inst|DataOut[7]~7_combout\ : std_logic;
SIGNAL \b2v_inst|DataOut[6]~6_combout\ : std_logic;
SIGNAL \b2v_inst|dataA[7]~0_combout\ : std_logic;
SIGNAL \b2v_inst|DataOut[5]~5_combout\ : std_logic;
SIGNAL \b2v_inst|DataOut[4]~4_combout\ : std_logic;
SIGNAL \b2v_inst|DataOut[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst|DataOut[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst|DataOut[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|DataOut[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~1_cout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~3_cout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~5_cout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~7_cout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~9_cout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~11_cout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~13_cout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~14_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~10_combout\ : std_logic;
SIGNAL \b2v_inst|state~21_combout\ : std_logic;
SIGNAL \b2v_inst|state.SendAddrB_w~regout\ : std_logic;
SIGNAL \b2v_inst|state.WriteB~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|state.WriteB~regout\ : std_logic;
SIGNAL \b2v_inst|state.SendAddrA_w~regout\ : std_logic;
SIGNAL \b2v_inst|state.WriteA~regout\ : std_logic;
SIGNAL \b2v_inst|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst|state.CheckLoop~regout\ : std_logic;
SIGNAL \b2v_inst|state~20_combout\ : std_logic;
SIGNAL \b2v_inst|state.SendAddrB_r~regout\ : std_logic;
SIGNAL \b2v_inst|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst|state.GetB~regout\ : std_logic;
SIGNAL \b2v_inst|state~19_combout\ : std_logic;
SIGNAL \b2v_inst|state.Compare~regout\ : std_logic;
SIGNAL \b2v_inst|Selector6~1_combout\ : std_logic;
SIGNAL \b2v_inst|Flag~regout\ : std_logic;
SIGNAL \b2v_inst|state~18_combout\ : std_logic;
SIGNAL \b2v_inst|state.CheckFlag~regout\ : std_logic;
SIGNAL \b2v_inst|Cnt~1_combout\ : std_logic;
SIGNAL \b2v_inst|count[0]~9\ : std_logic;
SIGNAL \b2v_inst|count[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst|count[1]~11\ : std_logic;
SIGNAL \b2v_inst|count[2]~13_combout\ : std_logic;
SIGNAL \b2v_inst|count[2]~14\ : std_logic;
SIGNAL \b2v_inst|count[3]~15_combout\ : std_logic;
SIGNAL \b2v_inst|count[3]~16\ : std_logic;
SIGNAL \b2v_inst|count[4]~17_combout\ : std_logic;
SIGNAL \b2v_inst|count[5]~19_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~5_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~4_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~3_combout\ : std_logic;
SIGNAL \b2v_inst|Selector5~7_combout\ : std_logic;
SIGNAL \b2v_inst|Selector0~1_combout\ : std_logic;
SIGNAL \b2v_inst|state.Waiting~regout\ : std_logic;
SIGNAL \EXT_Address~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Address_B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Address_A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|dataA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|dataB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|ALT_INV_state.Waiting~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_launch <= launch;
ww_reset <= reset;
ww_Address_A <= Address_A;
ww_Address_B <= Address_B;
ww_EXT_Address <= EXT_Address;
Complete <= ww_Complete;
Data <= ww_Data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\b2v_inst|DataOut[7]~7_combout\ & \b2v_inst|DataOut[6]~6_combout\ & \b2v_inst|DataOut[5]~5_combout\ & \b2v_inst|DataOut[4]~4_combout\ & \b2v_inst|DataOut[3]~3_combout\ & 
\b2v_inst|DataOut[2]~2_combout\ & \b2v_inst|DataOut[1]~1_combout\ & \b2v_inst|DataOut[0]~0_combout\);

\b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[7]~7_combout\ & \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[6]~6_combout\ & 
\b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[5]~5_combout\ & \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[4]~4_combout\ & \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[3]~3_combout\ & 
\b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[2]~2_combout\ & \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[1]~1_combout\ & \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[0]~0_combout\);

\b2v_inst3|altsyncram_component|auto_generated|q_a\(0) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(1) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(2) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(3) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(4) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(5) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(6) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\b2v_inst3|altsyncram_component|auto_generated|q_a\(7) <= \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\b2v_inst|ALT_INV_state.Waiting~regout\ <= NOT \b2v_inst|state.Waiting~regout\;

-- Location: LCFF_X61_Y24_N13
\b2v_inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|count[6]~21_combout\,
	sdata => \Address_A~combout\(6),
	sload => \b2v_inst|Cnt~1_combout\,
	ena => \b2v_inst|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(6));

-- Location: LCCOMB_X61_Y24_N12
\b2v_inst|count[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count[6]~21_combout\ = ((\b2v_inst|count\(6) $ (\b2v_inst|Cnt~0_combout\ $ (\b2v_inst|count[5]~20\)))) # (GND)
-- \b2v_inst|count[6]~22\ = CARRY((\b2v_inst|count\(6) & ((!\b2v_inst|count[5]~20\) # (!\b2v_inst|Cnt~0_combout\))) # (!\b2v_inst|count\(6) & (!\b2v_inst|Cnt~0_combout\ & !\b2v_inst|count[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count\(6),
	datab => \b2v_inst|Cnt~0_combout\,
	datad => VCC,
	cin => \b2v_inst|count[5]~20\,
	combout => \b2v_inst|count[6]~21_combout\,
	cout => \b2v_inst|count[6]~22\);

-- Location: LCCOMB_X58_Y24_N12
\b2v_inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector0~0_combout\ = (\b2v_inst|state.CheckFlag~regout\) # (!\b2v_inst|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|state.CheckFlag~regout\,
	datad => \b2v_inst|state.Waiting~regout\,
	combout => \b2v_inst|Selector0~0_combout\);

-- Location: LCCOMB_X61_Y24_N26
\b2v_inst|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~6_combout\ = (\Address_B~combout\(6) & (\b2v_inst|count\(6) & (\Address_B~combout\(7) $ (!\b2v_inst|count\(7))))) # (!\Address_B~combout\(6) & (!\b2v_inst|count\(6) & (\Address_B~combout\(7) $ (!\b2v_inst|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address_B~combout\(6),
	datab => \Address_B~combout\(7),
	datac => \b2v_inst|count\(7),
	datad => \b2v_inst|count\(6),
	combout => \b2v_inst|Selector5~6_combout\);

-- Location: LCCOMB_X58_Y24_N30
\b2v_inst|Selector5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~8_combout\ = (\b2v_inst|state.Waiting~regout\ & (\b2v_inst|Flag~regout\ & (\b2v_inst|state.CheckFlag~regout\))) # (!\b2v_inst|state.Waiting~regout\ & ((\launch~combout\) # ((\b2v_inst|Flag~regout\ & 
-- \b2v_inst|state.CheckFlag~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.Waiting~regout\,
	datab => \b2v_inst|Flag~regout\,
	datac => \b2v_inst|state.CheckFlag~regout\,
	datad => \launch~combout\,
	combout => \b2v_inst|Selector5~8_combout\);

-- Location: LCFF_X60_Y24_N17
\b2v_inst|dataA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \b2v_inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataA\(6));

-- Location: LCFF_X60_Y24_N13
\b2v_inst|dataA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \b2v_inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataA\(4));

-- Location: LCFF_X60_Y24_N11
\b2v_inst|dataA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \b2v_inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataA\(3));

-- Location: LCFF_X60_Y24_N9
\b2v_inst|dataA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \b2v_inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataA\(2));

-- Location: LCFF_X60_Y24_N7
\b2v_inst|dataA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \b2v_inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataA\(1));

-- Location: LCCOMB_X59_Y24_N2
\b2v_inst|WR\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|WR~combout\ = (\b2v_inst|state.WriteA~regout\) # (\b2v_inst|state.WriteB~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|state.WriteA~regout\,
	datad => \b2v_inst|state.WriteB~regout\,
	combout => \b2v_inst|WR~combout\);

-- Location: LCCOMB_X58_Y24_N10
\b2v_inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector6~0_combout\ = (\b2v_inst|state.GetB~regout\) # ((\b2v_inst|state.GetA~regout\) # ((!\b2v_inst|state.CheckFlag~regout\ & \b2v_inst|state.Waiting~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.CheckFlag~regout\,
	datab => \b2v_inst|state.GetB~regout\,
	datac => \b2v_inst|state.GetA~regout\,
	datad => \b2v_inst|state.Waiting~regout\,
	combout => \b2v_inst|Selector6~0_combout\);

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_B[1]~I\ : cycloneii_io
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
	padio => ww_Address_B(1),
	combout => \Address_B~combout\(1));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_B[5]~I\ : cycloneii_io
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
	padio => ww_Address_B(5),
	combout => \Address_B~combout\(5));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_B[6]~I\ : cycloneii_io
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
	padio => ww_Address_B(6),
	combout => \Address_B~combout\(6));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_B[7]~I\ : cycloneii_io
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
	padio => ww_Address_B(7),
	combout => \Address_B~combout\(7));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\launch~I\ : cycloneii_io
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
	padio => ww_launch,
	combout => \launch~combout\);

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_Address[0]~I\ : cycloneii_io
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
	padio => ww_EXT_Address(0),
	combout => \EXT_Address~combout\(0));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_Address[1]~I\ : cycloneii_io
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
	padio => ww_EXT_Address(1),
	combout => \EXT_Address~combout\(1));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_A[6]~I\ : cycloneii_io
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
	padio => ww_Address_A(6),
	combout => \Address_A~combout\(6));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G14
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X61_Y24_N0
\b2v_inst|count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count[0]~8_combout\ = \b2v_inst|count\(0) $ (VCC)
-- \b2v_inst|count[0]~9\ = CARRY(\b2v_inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count\(0),
	datad => VCC,
	combout => \b2v_inst|count[0]~8_combout\,
	cout => \b2v_inst|count[0]~9\);

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_A[0]~I\ : cycloneii_io
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
	padio => ww_Address_A(0),
	combout => \Address_A~combout\(0));

-- Location: LCCOMB_X62_Y24_N8
\b2v_inst|delay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|delay~0_combout\ = \b2v_inst|delay~regout\ $ (((\b2v_inst|state.GetB~regout\) # (\b2v_inst|state.GetA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.GetB~regout\,
	datac => \b2v_inst|delay~regout\,
	datad => \b2v_inst|state.GetA~regout\,
	combout => \b2v_inst|delay~0_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G13
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X62_Y24_N9
\b2v_inst|delay\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|delay~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|delay~regout\);

-- Location: LCCOMB_X59_Y24_N16
\b2v_inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector1~0_combout\ = (\b2v_inst|Selector5~10_combout\ & (\b2v_inst|Selector0~0_combout\)) # (!\b2v_inst|Selector5~10_combout\ & (\b2v_inst|state.CheckLoop~regout\ & ((\b2v_inst|Selector0~0_combout\) # (!\b2v_inst|Selector5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector0~0_combout\,
	datab => \b2v_inst|Selector5~7_combout\,
	datac => \b2v_inst|state.CheckLoop~regout\,
	datad => \b2v_inst|Selector5~10_combout\,
	combout => \b2v_inst|Selector1~0_combout\);

-- Location: LCFF_X59_Y24_N17
\b2v_inst|state.SendAddrA_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.SendAddrA_r~regout\);

-- Location: LCCOMB_X62_Y24_N10
\b2v_inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector2~0_combout\ = (\b2v_inst|state.SendAddrA_r~regout\) # ((!\b2v_inst|delay~regout\ & \b2v_inst|state.GetA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|delay~regout\,
	datac => \b2v_inst|state.GetA~regout\,
	datad => \b2v_inst|state.SendAddrA_r~regout\,
	combout => \b2v_inst|Selector2~0_combout\);

-- Location: LCFF_X62_Y24_N11
\b2v_inst|state.GetA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Selector2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.GetA~regout\);

-- Location: LCCOMB_X59_Y24_N30
\b2v_inst|Selector5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~9_combout\ = (\b2v_inst|delay~regout\ & ((\b2v_inst|state.GetB~regout\) # (\b2v_inst|state.GetA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.GetB~regout\,
	datac => \b2v_inst|state.GetA~regout\,
	datad => \b2v_inst|delay~regout\,
	combout => \b2v_inst|Selector5~9_combout\);

-- Location: LCCOMB_X58_Y24_N4
\b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[0]~0_combout\ = (\b2v_inst|state.Waiting~regout\ & ((\b2v_inst|count\(0)))) # (!\b2v_inst|state.Waiting~regout\ & (\EXT_Address~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXT_Address~combout\(0),
	datac => \b2v_inst|count\(0),
	datad => \b2v_inst|state.Waiting~regout\,
	combout => \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X58_Y24_N6
\b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[1]~1_combout\ = (\b2v_inst|state.Waiting~regout\ & ((\b2v_inst|count\(1)))) # (!\b2v_inst|state.Waiting~regout\ & (\EXT_Address~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EXT_Address~combout\(1),
	datac => \b2v_inst|count\(1),
	datad => \b2v_inst|state.Waiting~regout\,
	combout => \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_Address[2]~I\ : cycloneii_io
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
	padio => ww_EXT_Address(2),
	combout => \EXT_Address~combout\(2));

-- Location: LCCOMB_X58_Y24_N16
\b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[2]~2_combout\ = (\b2v_inst|state.Waiting~regout\ & ((\b2v_inst|count\(2)))) # (!\b2v_inst|state.Waiting~regout\ & (\EXT_Address~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXT_Address~combout\(2),
	datac => \b2v_inst|count\(2),
	datad => \b2v_inst|state.Waiting~regout\,
	combout => \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_Address[3]~I\ : cycloneii_io
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
	padio => ww_EXT_Address(3),
	combout => \EXT_Address~combout\(3));

-- Location: LCCOMB_X58_Y24_N22
\b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[3]~3_combout\ = (\b2v_inst|state.Waiting~regout\ & ((\b2v_inst|count\(3)))) # (!\b2v_inst|state.Waiting~regout\ & (\EXT_Address~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXT_Address~combout\(3),
	datac => \b2v_inst|count\(3),
	datad => \b2v_inst|state.Waiting~regout\,
	combout => \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_Address[4]~I\ : cycloneii_io
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
	padio => ww_EXT_Address(4),
	combout => \EXT_Address~combout\(4));

-- Location: LCCOMB_X61_Y24_N28
\b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[4]~4_combout\ = (\b2v_inst|state.Waiting~regout\ & ((\b2v_inst|count\(4)))) # (!\b2v_inst|state.Waiting~regout\ & (\EXT_Address~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXT_Address~combout\(4),
	datac => \b2v_inst|count\(4),
	datad => \b2v_inst|state.Waiting~regout\,
	combout => \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_Address[5]~I\ : cycloneii_io
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
	padio => ww_EXT_Address(5),
	combout => \EXT_Address~combout\(5));

-- Location: LCCOMB_X61_Y24_N18
\b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[5]~5_combout\ = (\b2v_inst|state.Waiting~regout\ & (\b2v_inst|count\(5))) # (!\b2v_inst|state.Waiting~regout\ & ((\EXT_Address~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count\(5),
	datac => \EXT_Address~combout\(5),
	datad => \b2v_inst|state.Waiting~regout\,
	combout => \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_Address[6]~I\ : cycloneii_io
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
	padio => ww_EXT_Address(6),
	combout => \EXT_Address~combout\(6));

-- Location: LCCOMB_X61_Y24_N16
\b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[6]~6_combout\ = (\b2v_inst|state.Waiting~regout\ & (\b2v_inst|count\(6))) # (!\b2v_inst|state.Waiting~regout\ & ((\EXT_Address~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count\(6),
	datac => \EXT_Address~combout\(6),
	datad => \b2v_inst|state.Waiting~regout\,
	combout => \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[6]~6_combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_Address[7]~I\ : cycloneii_io
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
	padio => ww_EXT_Address(7),
	combout => \EXT_Address~combout\(7));

-- Location: LCCOMB_X62_Y24_N26
\b2v_inst|Cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Cnt~0_combout\ = (\b2v_inst|state.WriteB~regout\) # ((\b2v_inst|delay~regout\ & \b2v_inst|state.GetA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.WriteB~regout\,
	datac => \b2v_inst|delay~regout\,
	datad => \b2v_inst|state.GetA~regout\,
	combout => \b2v_inst|Cnt~0_combout\);

-- Location: LCCOMB_X61_Y24_N8
\b2v_inst|count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count[4]~17_combout\ = ((\b2v_inst|Cnt~0_combout\ $ (\b2v_inst|count\(4) $ (\b2v_inst|count[3]~16\)))) # (GND)
-- \b2v_inst|count[4]~18\ = CARRY((\b2v_inst|Cnt~0_combout\ & (\b2v_inst|count\(4) & !\b2v_inst|count[3]~16\)) # (!\b2v_inst|Cnt~0_combout\ & ((\b2v_inst|count\(4)) # (!\b2v_inst|count[3]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Cnt~0_combout\,
	datab => \b2v_inst|count\(4),
	datad => VCC,
	cin => \b2v_inst|count[3]~16\,
	combout => \b2v_inst|count[4]~17_combout\,
	cout => \b2v_inst|count[4]~18\);

-- Location: LCCOMB_X61_Y24_N10
\b2v_inst|count[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count[5]~19_combout\ = (\b2v_inst|count\(5) & ((\b2v_inst|Cnt~0_combout\ & (!\b2v_inst|count[4]~18\)) # (!\b2v_inst|Cnt~0_combout\ & (\b2v_inst|count[4]~18\ & VCC)))) # (!\b2v_inst|count\(5) & ((\b2v_inst|Cnt~0_combout\ & 
-- ((\b2v_inst|count[4]~18\) # (GND))) # (!\b2v_inst|Cnt~0_combout\ & (!\b2v_inst|count[4]~18\))))
-- \b2v_inst|count[5]~20\ = CARRY((\b2v_inst|count\(5) & (\b2v_inst|Cnt~0_combout\ & !\b2v_inst|count[4]~18\)) # (!\b2v_inst|count\(5) & ((\b2v_inst|Cnt~0_combout\) # (!\b2v_inst|count[4]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count\(5),
	datab => \b2v_inst|Cnt~0_combout\,
	datad => VCC,
	cin => \b2v_inst|count[4]~18\,
	combout => \b2v_inst|count[5]~19_combout\,
	cout => \b2v_inst|count[5]~20\);

-- Location: LCCOMB_X61_Y24_N14
\b2v_inst|count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count[7]~23_combout\ = \b2v_inst|Cnt~0_combout\ $ (\b2v_inst|count\(7) $ (!\b2v_inst|count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Cnt~0_combout\,
	datab => \b2v_inst|count\(7),
	cin => \b2v_inst|count[6]~22\,
	combout => \b2v_inst|count[7]~23_combout\);

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_A[7]~I\ : cycloneii_io
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
	padio => ww_Address_A(7),
	combout => \Address_A~combout\(7));

-- Location: LCCOMB_X61_Y24_N22
\b2v_inst|count[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count[7]~12_combout\ = (\b2v_inst|Cnt~0_combout\) # ((\b2v_inst|Cnt~1_combout\) # ((\b2v_inst|state.Compare~regout\ & \b2v_inst|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Cnt~0_combout\,
	datab => \b2v_inst|state.Compare~regout\,
	datac => \b2v_inst|Cnt~1_combout\,
	datad => \b2v_inst|LessThan0~14_combout\,
	combout => \b2v_inst|count[7]~12_combout\);

-- Location: LCFF_X61_Y24_N15
\b2v_inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|count[7]~23_combout\,
	sdata => \Address_A~combout\(7),
	sload => \b2v_inst|Cnt~1_combout\,
	ena => \b2v_inst|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(7));

-- Location: LCCOMB_X58_Y24_N20
\b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[7]~7_combout\ = (\b2v_inst|state.Waiting~regout\ & ((\b2v_inst|count\(7)))) # (!\b2v_inst|state.Waiting~regout\ & (\EXT_Address~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXT_Address~combout\(7),
	datac => \b2v_inst|count\(7),
	datad => \b2v_inst|state.Waiting~regout\,
	combout => \b2v_inst4|b2v_inst4|$00000|auto_generated|result_node[7]~7_combout\);

-- Location: LCCOMB_X59_Y24_N24
\b2v_inst|dataB[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|dataB[7]~0_combout\ = (\b2v_inst|state.GetB~regout\ & \b2v_inst|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.GetB~regout\,
	datad => \b2v_inst|delay~regout\,
	combout => \b2v_inst|dataB[7]~0_combout\);

-- Location: LCFF_X59_Y24_N11
\b2v_inst|dataB[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \b2v_inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataB\(7));

-- Location: LCCOMB_X59_Y24_N10
\b2v_inst|DataOut[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|DataOut[7]~7_combout\ = (\b2v_inst|state.SendAddrA_w~regout\ & (((\b2v_inst|dataA\(7))))) # (!\b2v_inst|state.SendAddrA_w~regout\ & ((\b2v_inst|state.WriteA~regout\ & ((\b2v_inst|dataA\(7)))) # (!\b2v_inst|state.WriteA~regout\ & 
-- (\b2v_inst|dataB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.SendAddrA_w~regout\,
	datab => \b2v_inst|state.WriteA~regout\,
	datac => \b2v_inst|dataB\(7),
	datad => \b2v_inst|dataA\(7),
	combout => \b2v_inst|DataOut[7]~7_combout\);

-- Location: M4K_X52_Y24
\b2v_inst3|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F707172737475767778797A7B7C7D7E7F808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM_255.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM_255:b2v_inst3|altsyncram:altsyncram_component|altsyncram_k4c1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \b2v_inst|WR~combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X60_Y24_N23
\b2v_inst|dataB[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \b2v_inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataB\(6));

-- Location: LCCOMB_X60_Y24_N22
\b2v_inst|DataOut[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|DataOut[6]~6_combout\ = (\b2v_inst|state.SendAddrA_w~regout\ & (\b2v_inst|dataA\(6))) # (!\b2v_inst|state.SendAddrA_w~regout\ & ((\b2v_inst|state.WriteA~regout\ & (\b2v_inst|dataA\(6))) # (!\b2v_inst|state.WriteA~regout\ & 
-- ((\b2v_inst|dataB\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataA\(6),
	datab => \b2v_inst|state.SendAddrA_w~regout\,
	datac => \b2v_inst|dataB\(6),
	datad => \b2v_inst|state.WriteA~regout\,
	combout => \b2v_inst|DataOut[6]~6_combout\);

-- Location: LCCOMB_X59_Y24_N18
\b2v_inst|dataA[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|dataA[7]~0_combout\ = (\b2v_inst|state.GetA~regout\ & \b2v_inst|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.GetA~regout\,
	datad => \b2v_inst|delay~regout\,
	combout => \b2v_inst|dataA[7]~0_combout\);

-- Location: LCFF_X60_Y24_N15
\b2v_inst|dataA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \b2v_inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataA\(5));

-- Location: LCFF_X60_Y24_N21
\b2v_inst|dataB[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \b2v_inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataB\(5));

-- Location: LCCOMB_X60_Y24_N20
\b2v_inst|DataOut[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|DataOut[5]~5_combout\ = (\b2v_inst|state.WriteA~regout\ & (\b2v_inst|dataA\(5))) # (!\b2v_inst|state.WriteA~regout\ & ((\b2v_inst|state.SendAddrA_w~regout\ & (\b2v_inst|dataA\(5))) # (!\b2v_inst|state.SendAddrA_w~regout\ & 
-- ((\b2v_inst|dataB\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.WriteA~regout\,
	datab => \b2v_inst|dataA\(5),
	datac => \b2v_inst|dataB\(5),
	datad => \b2v_inst|state.SendAddrA_w~regout\,
	combout => \b2v_inst|DataOut[5]~5_combout\);

-- Location: LCFF_X60_Y24_N3
\b2v_inst|dataB[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \b2v_inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataB\(4));

-- Location: LCCOMB_X60_Y24_N2
\b2v_inst|DataOut[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|DataOut[4]~4_combout\ = (\b2v_inst|state.SendAddrA_w~regout\ & (\b2v_inst|dataA\(4))) # (!\b2v_inst|state.SendAddrA_w~regout\ & ((\b2v_inst|state.WriteA~regout\ & (\b2v_inst|dataA\(4))) # (!\b2v_inst|state.WriteA~regout\ & 
-- ((\b2v_inst|dataB\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataA\(4),
	datab => \b2v_inst|state.SendAddrA_w~regout\,
	datac => \b2v_inst|dataB\(4),
	datad => \b2v_inst|state.WriteA~regout\,
	combout => \b2v_inst|DataOut[4]~4_combout\);

-- Location: LCFF_X60_Y24_N1
\b2v_inst|dataB[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \b2v_inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataB\(3));

-- Location: LCCOMB_X60_Y24_N0
\b2v_inst|DataOut[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|DataOut[3]~3_combout\ = (\b2v_inst|state.SendAddrA_w~regout\ & (\b2v_inst|dataA\(3))) # (!\b2v_inst|state.SendAddrA_w~regout\ & ((\b2v_inst|state.WriteA~regout\ & (\b2v_inst|dataA\(3))) # (!\b2v_inst|state.WriteA~regout\ & 
-- ((\b2v_inst|dataB\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataA\(3),
	datab => \b2v_inst|state.SendAddrA_w~regout\,
	datac => \b2v_inst|dataB\(3),
	datad => \b2v_inst|state.WriteA~regout\,
	combout => \b2v_inst|DataOut[3]~3_combout\);

-- Location: LCFF_X60_Y24_N27
\b2v_inst|dataB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \b2v_inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataB\(2));

-- Location: LCCOMB_X60_Y24_N26
\b2v_inst|DataOut[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|DataOut[2]~2_combout\ = (\b2v_inst|state.SendAddrA_w~regout\ & (\b2v_inst|dataA\(2))) # (!\b2v_inst|state.SendAddrA_w~regout\ & ((\b2v_inst|state.WriteA~regout\ & (\b2v_inst|dataA\(2))) # (!\b2v_inst|state.WriteA~regout\ & 
-- ((\b2v_inst|dataB\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataA\(2),
	datab => \b2v_inst|state.SendAddrA_w~regout\,
	datac => \b2v_inst|dataB\(2),
	datad => \b2v_inst|state.WriteA~regout\,
	combout => \b2v_inst|DataOut[2]~2_combout\);

-- Location: LCFF_X60_Y24_N29
\b2v_inst|dataB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \b2v_inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataB\(1));

-- Location: LCCOMB_X60_Y24_N28
\b2v_inst|DataOut[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|DataOut[1]~1_combout\ = (\b2v_inst|state.SendAddrA_w~regout\ & (\b2v_inst|dataA\(1))) # (!\b2v_inst|state.SendAddrA_w~regout\ & ((\b2v_inst|state.WriteA~regout\ & (\b2v_inst|dataA\(1))) # (!\b2v_inst|state.WriteA~regout\ & 
-- ((\b2v_inst|dataB\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataA\(1),
	datab => \b2v_inst|state.SendAddrA_w~regout\,
	datac => \b2v_inst|dataB\(1),
	datad => \b2v_inst|state.WriteA~regout\,
	combout => \b2v_inst|DataOut[1]~1_combout\);

-- Location: LCFF_X60_Y24_N31
\b2v_inst|dataB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \b2v_inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataB\(0));

-- Location: LCCOMB_X60_Y24_N30
\b2v_inst|DataOut[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|DataOut[0]~0_combout\ = (\b2v_inst|state.SendAddrA_w~regout\ & (\b2v_inst|dataA\(0))) # (!\b2v_inst|state.SendAddrA_w~regout\ & ((\b2v_inst|state.WriteA~regout\ & (\b2v_inst|dataA\(0))) # (!\b2v_inst|state.WriteA~regout\ & 
-- ((\b2v_inst|dataB\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataA\(0),
	datab => \b2v_inst|state.SendAddrA_w~regout\,
	datac => \b2v_inst|dataB\(0),
	datad => \b2v_inst|state.WriteA~regout\,
	combout => \b2v_inst|DataOut[0]~0_combout\);

-- Location: LCFF_X60_Y24_N19
\b2v_inst|dataA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \b2v_inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataA\(7));

-- Location: LCFF_X60_Y24_N5
\b2v_inst|dataA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst3|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \b2v_inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|dataA\(0));

-- Location: LCCOMB_X60_Y24_N4
\b2v_inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~1_cout\ = CARRY((!\b2v_inst|dataB\(0) & \b2v_inst|dataA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataB\(0),
	datab => \b2v_inst|dataA\(0),
	datad => VCC,
	cout => \b2v_inst|LessThan0~1_cout\);

-- Location: LCCOMB_X60_Y24_N6
\b2v_inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~3_cout\ = CARRY((\b2v_inst|dataA\(1) & (\b2v_inst|dataB\(1) & !\b2v_inst|LessThan0~1_cout\)) # (!\b2v_inst|dataA\(1) & ((\b2v_inst|dataB\(1)) # (!\b2v_inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataA\(1),
	datab => \b2v_inst|dataB\(1),
	datad => VCC,
	cin => \b2v_inst|LessThan0~1_cout\,
	cout => \b2v_inst|LessThan0~3_cout\);

-- Location: LCCOMB_X60_Y24_N8
\b2v_inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~5_cout\ = CARRY((\b2v_inst|dataA\(2) & ((!\b2v_inst|LessThan0~3_cout\) # (!\b2v_inst|dataB\(2)))) # (!\b2v_inst|dataA\(2) & (!\b2v_inst|dataB\(2) & !\b2v_inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataA\(2),
	datab => \b2v_inst|dataB\(2),
	datad => VCC,
	cin => \b2v_inst|LessThan0~3_cout\,
	cout => \b2v_inst|LessThan0~5_cout\);

-- Location: LCCOMB_X60_Y24_N10
\b2v_inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~7_cout\ = CARRY((\b2v_inst|dataA\(3) & (\b2v_inst|dataB\(3) & !\b2v_inst|LessThan0~5_cout\)) # (!\b2v_inst|dataA\(3) & ((\b2v_inst|dataB\(3)) # (!\b2v_inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataA\(3),
	datab => \b2v_inst|dataB\(3),
	datad => VCC,
	cin => \b2v_inst|LessThan0~5_cout\,
	cout => \b2v_inst|LessThan0~7_cout\);

-- Location: LCCOMB_X60_Y24_N12
\b2v_inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~9_cout\ = CARRY((\b2v_inst|dataA\(4) & ((!\b2v_inst|LessThan0~7_cout\) # (!\b2v_inst|dataB\(4)))) # (!\b2v_inst|dataA\(4) & (!\b2v_inst|dataB\(4) & !\b2v_inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataA\(4),
	datab => \b2v_inst|dataB\(4),
	datad => VCC,
	cin => \b2v_inst|LessThan0~7_cout\,
	cout => \b2v_inst|LessThan0~9_cout\);

-- Location: LCCOMB_X60_Y24_N14
\b2v_inst|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~11_cout\ = CARRY((\b2v_inst|dataB\(5) & ((!\b2v_inst|LessThan0~9_cout\) # (!\b2v_inst|dataA\(5)))) # (!\b2v_inst|dataB\(5) & (!\b2v_inst|dataA\(5) & !\b2v_inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataB\(5),
	datab => \b2v_inst|dataA\(5),
	datad => VCC,
	cin => \b2v_inst|LessThan0~9_cout\,
	cout => \b2v_inst|LessThan0~11_cout\);

-- Location: LCCOMB_X60_Y24_N16
\b2v_inst|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~13_cout\ = CARRY((\b2v_inst|dataA\(6) & ((!\b2v_inst|LessThan0~11_cout\) # (!\b2v_inst|dataB\(6)))) # (!\b2v_inst|dataA\(6) & (!\b2v_inst|dataB\(6) & !\b2v_inst|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataA\(6),
	datab => \b2v_inst|dataB\(6),
	datad => VCC,
	cin => \b2v_inst|LessThan0~11_cout\,
	cout => \b2v_inst|LessThan0~13_cout\);

-- Location: LCCOMB_X60_Y24_N18
\b2v_inst|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~14_combout\ = (\b2v_inst|dataB\(7) & (\b2v_inst|LessThan0~13_cout\ & \b2v_inst|dataA\(7))) # (!\b2v_inst|dataB\(7) & ((\b2v_inst|LessThan0~13_cout\) # (\b2v_inst|dataA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|dataB\(7),
	datad => \b2v_inst|dataA\(7),
	cin => \b2v_inst|LessThan0~13_cout\,
	combout => \b2v_inst|LessThan0~14_combout\);

-- Location: LCCOMB_X59_Y24_N12
\b2v_inst|Selector5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~10_combout\ = (\b2v_inst|Selector5~8_combout\) # ((\b2v_inst|Selector5~9_combout\) # ((\b2v_inst|state.Compare~regout\ & \b2v_inst|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector5~8_combout\,
	datab => \b2v_inst|Selector5~9_combout\,
	datac => \b2v_inst|state.Compare~regout\,
	datad => \b2v_inst|LessThan0~14_combout\,
	combout => \b2v_inst|Selector5~10_combout\);

-- Location: LCCOMB_X59_Y24_N22
\b2v_inst|state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|state~21_combout\ = (\b2v_inst|state.Compare~regout\ & ((\b2v_inst|Selector5~10_combout\) # ((\b2v_inst|Selector5~7_combout\ & \b2v_inst|state.CheckLoop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.Compare~regout\,
	datab => \b2v_inst|Selector5~7_combout\,
	datac => \b2v_inst|state.CheckLoop~regout\,
	datad => \b2v_inst|Selector5~10_combout\,
	combout => \b2v_inst|state~21_combout\);

-- Location: LCFF_X59_Y24_N23
\b2v_inst|state.SendAddrB_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|state~21_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.SendAddrB_w~regout\);

-- Location: LCCOMB_X62_Y24_N28
\b2v_inst|state.WriteB~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|state.WriteB~feeder_combout\ = \b2v_inst|state.SendAddrB_w~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|state.SendAddrB_w~regout\,
	combout => \b2v_inst|state.WriteB~feeder_combout\);

-- Location: LCFF_X62_Y24_N29
\b2v_inst|state.WriteB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|state.WriteB~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.WriteB~regout\);

-- Location: LCFF_X59_Y24_N25
\b2v_inst|state.SendAddrA_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|state.WriteB~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.SendAddrA_w~regout\);

-- Location: LCFF_X59_Y24_N3
\b2v_inst|state.WriteA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|state.SendAddrA_w~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.WriteA~regout\);

-- Location: LCCOMB_X59_Y24_N4
\b2v_inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector4~0_combout\ = (\b2v_inst|state.WriteA~regout\) # ((\b2v_inst|state.Compare~regout\ & !\b2v_inst|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.WriteA~regout\,
	datac => \b2v_inst|state.Compare~regout\,
	datad => \b2v_inst|LessThan0~14_combout\,
	combout => \b2v_inst|Selector4~0_combout\);

-- Location: LCFF_X59_Y24_N5
\b2v_inst|state.CheckLoop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Selector4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.CheckLoop~regout\);

-- Location: LCCOMB_X59_Y24_N28
\b2v_inst|state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|state~20_combout\ = (\b2v_inst|state.GetA~regout\ & ((\b2v_inst|Selector5~10_combout\) # ((\b2v_inst|Selector5~7_combout\ & \b2v_inst|state.CheckLoop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.GetA~regout\,
	datab => \b2v_inst|Selector5~7_combout\,
	datac => \b2v_inst|state.CheckLoop~regout\,
	datad => \b2v_inst|Selector5~10_combout\,
	combout => \b2v_inst|state~20_combout\);

-- Location: LCFF_X59_Y24_N29
\b2v_inst|state.SendAddrB_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|state~20_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.SendAddrB_r~regout\);

-- Location: LCCOMB_X59_Y24_N8
\b2v_inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector3~0_combout\ = (\b2v_inst|state.SendAddrB_r~regout\) # ((\b2v_inst|state.GetB~regout\ & !\b2v_inst|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.SendAddrB_r~regout\,
	datac => \b2v_inst|state.GetB~regout\,
	datad => \b2v_inst|delay~regout\,
	combout => \b2v_inst|Selector3~0_combout\);

-- Location: LCFF_X59_Y24_N9
\b2v_inst|state.GetB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Selector3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.GetB~regout\);

-- Location: LCCOMB_X59_Y24_N0
\b2v_inst|state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|state~19_combout\ = (\b2v_inst|state.GetB~regout\ & ((\b2v_inst|Selector5~10_combout\) # ((\b2v_inst|state.CheckLoop~regout\ & \b2v_inst|Selector5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.CheckLoop~regout\,
	datab => \b2v_inst|Selector5~7_combout\,
	datac => \b2v_inst|state.GetB~regout\,
	datad => \b2v_inst|Selector5~10_combout\,
	combout => \b2v_inst|state~19_combout\);

-- Location: LCFF_X59_Y24_N1
\b2v_inst|state.Compare\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|state~19_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.Compare~regout\);

-- Location: LCCOMB_X59_Y24_N20
\b2v_inst|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector6~1_combout\ = (\b2v_inst|state.Compare~regout\ & (((\b2v_inst|Flag~regout\) # (\b2v_inst|LessThan0~14_combout\)))) # (!\b2v_inst|state.Compare~regout\ & (\b2v_inst|Selector6~0_combout\ & (\b2v_inst|Flag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector6~0_combout\,
	datab => \b2v_inst|state.Compare~regout\,
	datac => \b2v_inst|Flag~regout\,
	datad => \b2v_inst|LessThan0~14_combout\,
	combout => \b2v_inst|Selector6~1_combout\);

-- Location: LCFF_X59_Y24_N21
\b2v_inst|Flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|Flag~regout\);

-- Location: LCCOMB_X59_Y24_N26
\b2v_inst|state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|state~18_combout\ = (\b2v_inst|state.CheckLoop~regout\ & ((\b2v_inst|Selector5~7_combout\) # (\b2v_inst|Selector5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Selector5~7_combout\,
	datac => \b2v_inst|state.CheckLoop~regout\,
	datad => \b2v_inst|Selector5~10_combout\,
	combout => \b2v_inst|state~18_combout\);

-- Location: LCFF_X59_Y24_N27
\b2v_inst|state.CheckFlag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|state~18_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.CheckFlag~regout\);

-- Location: LCCOMB_X59_Y24_N6
\b2v_inst|Cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Cnt~1_combout\ = ((\b2v_inst|Flag~regout\ & \b2v_inst|state.CheckFlag~regout\)) # (!\b2v_inst|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|state.Waiting~regout\,
	datac => \b2v_inst|Flag~regout\,
	datad => \b2v_inst|state.CheckFlag~regout\,
	combout => \b2v_inst|Cnt~1_combout\);

-- Location: LCFF_X61_Y24_N1
\b2v_inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|count[0]~8_combout\,
	sdata => \Address_A~combout\(0),
	sload => \b2v_inst|Cnt~1_combout\,
	ena => \b2v_inst|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(0));

-- Location: LCCOMB_X61_Y24_N2
\b2v_inst|count[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count[1]~10_combout\ = (\b2v_inst|Cnt~0_combout\ & ((\b2v_inst|count\(1) & (!\b2v_inst|count[0]~9\)) # (!\b2v_inst|count\(1) & ((\b2v_inst|count[0]~9\) # (GND))))) # (!\b2v_inst|Cnt~0_combout\ & ((\b2v_inst|count\(1) & (\b2v_inst|count[0]~9\ & 
-- VCC)) # (!\b2v_inst|count\(1) & (!\b2v_inst|count[0]~9\))))
-- \b2v_inst|count[1]~11\ = CARRY((\b2v_inst|Cnt~0_combout\ & ((!\b2v_inst|count[0]~9\) # (!\b2v_inst|count\(1)))) # (!\b2v_inst|Cnt~0_combout\ & (!\b2v_inst|count\(1) & !\b2v_inst|count[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Cnt~0_combout\,
	datab => \b2v_inst|count\(1),
	datad => VCC,
	cin => \b2v_inst|count[0]~9\,
	combout => \b2v_inst|count[1]~10_combout\,
	cout => \b2v_inst|count[1]~11\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_A[1]~I\ : cycloneii_io
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
	padio => ww_Address_A(1),
	combout => \Address_A~combout\(1));

-- Location: LCFF_X61_Y24_N3
\b2v_inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|count[1]~10_combout\,
	sdata => \Address_A~combout\(1),
	sload => \b2v_inst|Cnt~1_combout\,
	ena => \b2v_inst|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(1));

-- Location: LCCOMB_X61_Y24_N4
\b2v_inst|count[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count[2]~13_combout\ = ((\b2v_inst|Cnt~0_combout\ $ (\b2v_inst|count\(2) $ (\b2v_inst|count[1]~11\)))) # (GND)
-- \b2v_inst|count[2]~14\ = CARRY((\b2v_inst|Cnt~0_combout\ & (\b2v_inst|count\(2) & !\b2v_inst|count[1]~11\)) # (!\b2v_inst|Cnt~0_combout\ & ((\b2v_inst|count\(2)) # (!\b2v_inst|count[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Cnt~0_combout\,
	datab => \b2v_inst|count\(2),
	datad => VCC,
	cin => \b2v_inst|count[1]~11\,
	combout => \b2v_inst|count[2]~13_combout\,
	cout => \b2v_inst|count[2]~14\);

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_A[2]~I\ : cycloneii_io
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
	padio => ww_Address_A(2),
	combout => \Address_A~combout\(2));

-- Location: LCFF_X61_Y24_N5
\b2v_inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|count[2]~13_combout\,
	sdata => \Address_A~combout\(2),
	sload => \b2v_inst|Cnt~1_combout\,
	ena => \b2v_inst|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(2));

-- Location: LCCOMB_X61_Y24_N6
\b2v_inst|count[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count[3]~15_combout\ = (\b2v_inst|Cnt~0_combout\ & ((\b2v_inst|count\(3) & (!\b2v_inst|count[2]~14\)) # (!\b2v_inst|count\(3) & ((\b2v_inst|count[2]~14\) # (GND))))) # (!\b2v_inst|Cnt~0_combout\ & ((\b2v_inst|count\(3) & (\b2v_inst|count[2]~14\ 
-- & VCC)) # (!\b2v_inst|count\(3) & (!\b2v_inst|count[2]~14\))))
-- \b2v_inst|count[3]~16\ = CARRY((\b2v_inst|Cnt~0_combout\ & ((!\b2v_inst|count[2]~14\) # (!\b2v_inst|count\(3)))) # (!\b2v_inst|Cnt~0_combout\ & (!\b2v_inst|count\(3) & !\b2v_inst|count[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Cnt~0_combout\,
	datab => \b2v_inst|count\(3),
	datad => VCC,
	cin => \b2v_inst|count[2]~14\,
	combout => \b2v_inst|count[3]~15_combout\,
	cout => \b2v_inst|count[3]~16\);

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_A[3]~I\ : cycloneii_io
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
	padio => ww_Address_A(3),
	combout => \Address_A~combout\(3));

-- Location: LCFF_X61_Y24_N7
\b2v_inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|count[3]~15_combout\,
	sdata => \Address_A~combout\(3),
	sload => \b2v_inst|Cnt~1_combout\,
	ena => \b2v_inst|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(3));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_A[4]~I\ : cycloneii_io
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
	padio => ww_Address_A(4),
	combout => \Address_A~combout\(4));

-- Location: LCFF_X61_Y24_N9
\b2v_inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|count[4]~17_combout\,
	sdata => \Address_A~combout\(4),
	sload => \b2v_inst|Cnt~1_combout\,
	ena => \b2v_inst|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(4));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_B[4]~I\ : cycloneii_io
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
	padio => ww_Address_B(4),
	combout => \Address_B~combout\(4));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_A[5]~I\ : cycloneii_io
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
	padio => ww_Address_A(5),
	combout => \Address_A~combout\(5));

-- Location: LCFF_X61_Y24_N11
\b2v_inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|count[5]~19_combout\,
	sdata => \Address_A~combout\(5),
	sload => \b2v_inst|Cnt~1_combout\,
	ena => \b2v_inst|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(5));

-- Location: LCCOMB_X61_Y24_N24
\b2v_inst|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~5_combout\ = (\Address_B~combout\(5) & (\b2v_inst|count\(5) & (\b2v_inst|count\(4) $ (!\Address_B~combout\(4))))) # (!\Address_B~combout\(5) & (!\b2v_inst|count\(5) & (\b2v_inst|count\(4) $ (!\Address_B~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address_B~combout\(5),
	datab => \b2v_inst|count\(4),
	datac => \Address_B~combout\(4),
	datad => \b2v_inst|count\(5),
	combout => \b2v_inst|Selector5~5_combout\);

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_B[2]~I\ : cycloneii_io
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
	padio => ww_Address_B(2),
	combout => \Address_B~combout\(2));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_B[3]~I\ : cycloneii_io
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
	padio => ww_Address_B(3),
	combout => \Address_B~combout\(3));

-- Location: LCCOMB_X61_Y24_N30
\b2v_inst|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~4_combout\ = (\b2v_inst|count\(3) & (\Address_B~combout\(3) & (\Address_B~combout\(2) $ (!\b2v_inst|count\(2))))) # (!\b2v_inst|count\(3) & (!\Address_B~combout\(3) & (\Address_B~combout\(2) $ (!\b2v_inst|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count\(3),
	datab => \Address_B~combout\(2),
	datac => \b2v_inst|count\(2),
	datad => \Address_B~combout\(3),
	combout => \b2v_inst|Selector5~4_combout\);

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Address_B[0]~I\ : cycloneii_io
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
	padio => ww_Address_B(0),
	combout => \Address_B~combout\(0));

-- Location: LCCOMB_X61_Y24_N20
\b2v_inst|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~3_combout\ = (\Address_B~combout\(1) & (\b2v_inst|count\(1) & (\Address_B~combout\(0) $ (!\b2v_inst|count\(0))))) # (!\Address_B~combout\(1) & (!\b2v_inst|count\(1) & (\Address_B~combout\(0) $ (!\b2v_inst|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Address_B~combout\(1),
	datab => \b2v_inst|count\(1),
	datac => \Address_B~combout\(0),
	datad => \b2v_inst|count\(0),
	combout => \b2v_inst|Selector5~3_combout\);

-- Location: LCCOMB_X60_Y24_N24
\b2v_inst|Selector5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector5~7_combout\ = (\b2v_inst|Selector5~6_combout\ & (\b2v_inst|Selector5~5_combout\ & (\b2v_inst|Selector5~4_combout\ & \b2v_inst|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector5~6_combout\,
	datab => \b2v_inst|Selector5~5_combout\,
	datac => \b2v_inst|Selector5~4_combout\,
	datad => \b2v_inst|Selector5~3_combout\,
	combout => \b2v_inst|Selector5~7_combout\);

-- Location: LCCOMB_X59_Y24_N14
\b2v_inst|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector0~1_combout\ = ((\b2v_inst|Selector5~10_combout\) # ((\b2v_inst|Selector5~7_combout\ & \b2v_inst|state.CheckLoop~regout\))) # (!\b2v_inst|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Selector0~0_combout\,
	datab => \b2v_inst|Selector5~7_combout\,
	datac => \b2v_inst|state.CheckLoop~regout\,
	datad => \b2v_inst|Selector5~10_combout\,
	combout => \b2v_inst|Selector0~1_combout\);

-- Location: LCFF_X59_Y24_N15
\b2v_inst|state.Waiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Selector0~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.Waiting~regout\);

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Complete~I\ : cycloneii_io
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
	datain => \b2v_inst|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Complete);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[0]~I\ : cycloneii_io
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
	datain => \b2v_inst3|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(0));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[1]~I\ : cycloneii_io
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
	datain => \b2v_inst3|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(1));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[2]~I\ : cycloneii_io
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
	datain => \b2v_inst3|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(2));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[3]~I\ : cycloneii_io
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
	datain => \b2v_inst3|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(3));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[4]~I\ : cycloneii_io
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
	datain => \b2v_inst3|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(4));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[5]~I\ : cycloneii_io
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
	datain => \b2v_inst3|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(5));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[6]~I\ : cycloneii_io
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
	datain => \b2v_inst3|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(6));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[7]~I\ : cycloneii_io
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
	datain => \b2v_inst3|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(7));
END structure;


