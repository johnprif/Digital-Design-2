LIBRARY cycloneii  ; 
LIBRARY ieee  ; 
LIBRARY std  ; 
USE cycloneii.cycloneii_components.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY sorter_v2_255_tb  IS 
END ; 
 
ARCHITECTURE sorter_v2_255_tb_arch OF sorter_v2_255_tb IS
  SIGNAL Complete   :  STD_LOGIC  ; 
  SIGNAL Data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL EXT_Address   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL Address_A   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL Address_B   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  SIGNAL launch   :  STD_LOGIC  ; 
  COMPONENT Sorter_V2_255  
    PORT ( 
      Complete  : out STD_LOGIC ; 
      Data  : out std_logic_vector (7 downto 0) ; 
      EXT_Address  : in std_logic_vector (7 downto 0) ; 
      Address_A  : in std_logic_vector (7 downto 0) ; 
      clk  : in STD_LOGIC ; 
      Address_B  : in std_logic_vector (7 downto 0) ; 
      reset  : in STD_LOGIC ; 
      launch  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : Sorter_V2_255  
    PORT MAP ( 
      Complete   => Complete  ,
      Data   => Data  ,
      EXT_Address   => EXT_Address  ,
      Address_A   => Address_A  ,
      clk   => clk  ,
      Address_B   => Address_B  ,
      reset   => reset  ,
      launch   => launch   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 20 ms, Period = 20 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 999999
	loop
	    clk  <= '1'  ;
	   wait for 10 ns ;
	    clk  <= '0'  ;
	   wait for 10 ns ;
-- 19999990 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 20 ms
	wait;
 End Process;

 process
 begin 
   reset<='1';
   launch<='0';
   wait for 12 ns;
   reset<='0';
   launch<='1';
   wait for 50 ns;
   launch<='0';
   wait;
 end process;

-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 20 ms, Period = 0 ns
  Process
	Begin
	 address_a  <= "00010101"  ; --"00000000"
	wait for 20 ms ;
-- dumped values till 20 ms
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 20 ms, Period = 0 ns
  Process
	Begin
	 address_b  <= "00011000"  ; --"00011111"
	wait for 20 ms ;
-- dumped values till 20 ms
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 20 ms, Period = 0 ns
  Process
	Begin
	 ext_address  <= "01001001"  ;
	wait for 20 ms ;
-- dumped values till 20 ms
	wait;
 End Process;
END;
