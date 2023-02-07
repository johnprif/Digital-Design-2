library verilog;
use verilog.vl_types.all;
entity Fibonacci is
    port(
        F               : out    vl_logic_vector(7 downto 0);
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        CLK             : in     vl_logic;
        SERIAL_INPUT    : in     vl_logic;
        par_or_ser      : in     vl_logic;
        I               : out    vl_logic_vector(7 downto 0)
    );
end Fibonacci;
