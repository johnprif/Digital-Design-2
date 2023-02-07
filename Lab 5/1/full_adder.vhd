library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
			port ( A, B  :in std_logic;
					 Cin 	 :in std_logic;
					 Sum		 :out std_logic;
					 Cout	 :out std_logic);
end full_adder;

architecture gate_level of full_adder is
begin 
	Sum<=A XOR B XOR Cin;
	Cout<=(A AND B)OR(Cin AND A)OR(Cin AND B);
end gate_level;

