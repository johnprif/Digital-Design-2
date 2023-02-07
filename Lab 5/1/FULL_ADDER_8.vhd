library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_8 is
			port ( A, B  :in std_logic_vector(7 downto 0);
					 Cin 	 :in std_logic;
					 Y		 :out std_logic_vector(7 downto 0);
					 Cout	 :out std_logic);
end full_adder_8;

architecture FA_arch of full_adder_8 is
component full_adder 
	port ( A, B  :in std_logic;
			 Cin 	 :in std_logic;
			 Sum		 :out std_logic;
			 Cout	 :out std_logic);
	end component;
	
	signal cary : std_logic_vector(7 downto 0);
	
begin
	u0:full_adder port map(A(0),B(0),Cin,Y(0),cary(0));
	u1:full_adder port map(A(1),B(1),cary(0),Y(1),cary(1));
	u2:full_adder port map(A(2),B(2),cary(1),Y(2),cary(2));
	u3:full_adder port map(A(3),B(3),cary(2),Y(3),cary(3));
	u4:full_adder port map(A(4),B(4),cary(3),Y(4),cary(4));
	u5:full_adder port map(A(5),B(5),cary(4),Y(5),cary(5));
	u6:full_adder port map(A(6),B(6),cary(5),Y(6),cary(6));
	u7:full_adder port map(A(7),B(7),cary(6),Y(7),cary(7));
end FA_arch;


