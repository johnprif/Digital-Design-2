LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY full_adder_8_tb  IS 
END ; 
 
ARCHITECTURE full_adder_8_tb_arch OF full_adder_8_tb IS
  SIGNAL Y   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL A   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL Cin   :  STD_LOGIC  ; 
  SIGNAL B   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL Cout   :  STD_LOGIC  ; 
  COMPONENT full_adder_8  
    PORT ( 
      Y  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      A  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      Cin  : in STD_LOGIC ; 
      B  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      Cout  : out STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : full_adder_8  
    PORT MAP ( 
      Y   => Y  ,
      A   => A  ,
      Cin   => Cin  ,
      B   => B  ,
      Cout   => Cout   ) ; 



-- "Constant Pattern"
-- Start Time = 60 ps, End Time = 80 ns, Period = 0 ps
  Process
	Begin
	 A  <= "00000011"  ;
	wait for 80 ps ;
-- dumped values till 80 ps
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 60 ps, End Time = 80 ns, Period = 0 ps
  Process
	Begin
	 B  <= "00000101"  ;
	wait for 80 ps ;
-- dumped values till 80 ps
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 60 ps, End Time = 80 ns, Period = 0 ps
  Process
	Begin
	 Cin  <= '0'  ;
	wait for 80 ps ;
-- dumped values till 80 ps
	wait;
 End Process;
END;
