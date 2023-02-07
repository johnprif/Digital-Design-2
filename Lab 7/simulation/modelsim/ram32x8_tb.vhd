LIBRARY cycloneii  ; 
LIBRARY ieee  ; 
LIBRARY std  ; 
USE cycloneii.cycloneii_components.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY ram32x8_tb  IS 
END ; 
 
ARCHITECTURE ram32x8_tb_arch OF ram32x8_tb IS
  SIGNAL wren   :  STD_LOGIC  ; 
  SIGNAL clock   :  STD_LOGIC  ; 
  SIGNAL q   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL data   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL address   :  std_logic_vector (4 downto 0)  ; 
  COMPONENT RAM32x8  
    PORT ( 
      wren  : in STD_LOGIC ; 
      clock  : in STD_LOGIC ; 
      q  : out std_logic_vector (7 downto 0) ; 
      data  : in std_logic_vector (7 downto 0) ; 
      address  : in std_logic_vector (4 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : RAM32x8  
    PORT MAP ( 
      wren   => wren  ,
      clock   => clock  ,
      q   => q  ,
      data   => data  ,
      address   => address   ) ; 



-- "Counter Pattern"(Range-Up) : step = 1 Range(00000-11111)
-- Start Time = 0 ns, End Time = 1 us, Period = 30 ns
  Process
	variable VARaddress  : std_logic_vector(4 downto 0);
	Begin
	VARaddress  := "00000" ;
	for repeatLength in 1 to 64
	loop
	    address  <= VARaddress  ;
	   wait for 30 ns ;
	   VARaddress  := VARaddress  + 1 ;
	end loop;
-- 960 ns, repeat pattern in loop.
	VARaddress  := "00000" ;
	    address  <= VARaddress  ;
	   wait for 30 ns ;
	   VARaddress  := VARaddress  + 1 ;
-- 990 ns, periods remaining till edit start time.
	 address  <= "00001"  ;
	wait for 10 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 20 ns
  Process
	Begin
	 clock  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 98
	loop
	    clock  <= '1'  ;
	   wait for 10 ns ;
	    clock  <= '0'  ;
	   wait for 10 ns ;
-- 990 ns, repeat pattern in loop.
	end  loop;
	 clock  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Counter Pattern"(Range-Up) : step = 1 Range(00000000-11111111)
-- Start Time = 0 ns, End Time = 1 us, Period = 40 ns
  Process
	variable VARdata  : std_logic_vector(7 downto 0);
	Begin
	VARdata  := "00000000" ;
	for repeatLength in 1 to 25
	loop
	    data  <= VARdata  ;
	   wait for 40 ns ;
	   VARdata  := VARdata  + 1 ;
	end loop;
-- 1 us, periods remaining till edit start time.
	wait;
 End Process;


-- "Counter Pattern"(Range-Up) : step = 1 Range(0-1)
-- Start Time = 0 ns, End Time = 1 us, Period = 500 ns
  Process
	variable VARwren  : std_logic_vector(0 downto 0);
	Begin
	VARwren  := "1" ;
	for repeatLength in 1 to 2
	loop
	    wren  <= VARwren (0)  ;
	   wait for 1000 ns ;
	   VARwren  := VARwren  + 1 ;
	end loop;
-- 1 us, repeat pattern in loop.
	wait;
 End Process;
END;
