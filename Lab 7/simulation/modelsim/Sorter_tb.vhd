LIBRARY cycloneii  ; 
LIBRARY ieee  ; 
LIBRARY std  ; 
USE cycloneii.cycloneii_components.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Sorter_tb  IS 
END ; 
 
ARCHITECTURE Sorter_tb_arch OF Sorter_tb IS
  SIGNAL Complete   :  STD_LOGIC  ; 
  SIGNAL Data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  SIGNAL launch   :  STD_LOGIC  ; 
  COMPONENT Sorter  
    PORT ( 
      Complete  : out STD_LOGIC ; 
      Data  : out std_logic_vector (7 downto 0) ; 
      clk  : in STD_LOGIC ; 
      reset  : in STD_LOGIC ; 
      launch  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : Sorter  
    PORT MAP ( 
      Complete   => Complete  ,
      Data   => Data  ,
      clk   => clk  ,
      reset   => reset  ,
      launch   => launch   ) ; 



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
		
		
-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 2 us, Period = 20 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 1000000000
	loop
	    clk  <= '1'  ;
	   wait for 10 ns ;
	    clk  <= '0'  ;
	   wait for 10 ns ;
		exit when (Complete'last_value = '0' and Complete = '1');
-- 1990 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 2 us
	wait;
 End Process;
 
 
END;
