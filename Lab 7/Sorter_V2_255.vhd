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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Wed May 12 20:51:54 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Sorter_V2_255 IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		launch :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		Address_A :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Address_B :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		EXT_Address :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Complete :  OUT  STD_LOGIC;
		Data :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END Sorter_V2_255;

ARCHITECTURE bdf_type OF Sorter_V2_255 IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT busmux_0
	PORT(sel : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF busmux_0: COMPONENT IS true;
ATTRIBUTE noopt OF busmux_0: COMPONENT IS true;

COMPONENT sort_255
	PORT(clk : IN STD_LOGIC;
		 launch : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 Addrres_A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Addrres_B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 DataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Complete : OUT STD_LOGIC;
		 WR : OUT STD_LOGIC;
		 Address : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 DataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ram_255
	PORT(clock : IN STD_LOGIC;
		 wren : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 
Complete <= SYNTHESIZED_WIRE_4;
Data <= SYNTHESIZED_WIRE_0;



b2v_inst : sort_255
PORT MAP(clk => clk,
		 launch => launch,
		 reset => reset,
		 Addrres_A => Address_A,
		 Addrres_B => Address_B,
		 DataIn => SYNTHESIZED_WIRE_0,
		 Complete => SYNTHESIZED_WIRE_4,
		 WR => SYNTHESIZED_WIRE_1,
		 Address => SYNTHESIZED_WIRE_5,
		 DataOut => SYNTHESIZED_WIRE_3);


b2v_inst3 : ram_255
PORT MAP(clock => clk,
		 wren => SYNTHESIZED_WIRE_1,
		 address => SYNTHESIZED_WIRE_2,
		 data => SYNTHESIZED_WIRE_3,
		 q => SYNTHESIZED_WIRE_0);


b2v_inst4 : busmux_0
PORT MAP(sel => SYNTHESIZED_WIRE_4,
		 dataa => SYNTHESIZED_WIRE_5,
		 datab => EXT_Address,
		 result => SYNTHESIZED_WIRE_2);


END bdf_type;