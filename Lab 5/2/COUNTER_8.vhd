library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity COUNTER_8 is
    Port ( CLK,CLR,SET : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC_VECTOR (7 downto 0));
end COUNTER_8;


architecture RTL_C8 of COUNTER_8 is
		signal count : STD_LOGIC_VECTOR(7 downto 0);
begin
		OUTPUT <= count;
		count_process: process(CLK,CLR,SET)
		begin
				if(CLR='1')then count<="00000000";
				elsif(SET='1')then count<="00000001";
			elsif (CLK'event and CLK='1')then count <= count + 1;
			end if;
		end process;
end RTL_C8;