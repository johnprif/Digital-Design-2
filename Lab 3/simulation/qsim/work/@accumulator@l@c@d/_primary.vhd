library verilog;
use verilog.vl_types.all;
entity AccumulatorLCD is
    port(
        LCD_E           : out    vl_logic;
        Reset           : in     vl_logic;
        CLK50           : in     vl_logic;
        add_or_sub      : in     vl_logic;
        HAND_CLK        : in     vl_logic;
        DIP             : in     vl_logic_vector(3 downto 0);
        LCD_RW          : out    vl_logic;
        LCD_ONOFF       : out    vl_logic;
        LCD_BNONOFF     : out    vl_logic;
        LCD_RS          : out    vl_logic;
        DBUS            : out    vl_logic_vector(7 downto 0)
    );
end AccumulatorLCD;
