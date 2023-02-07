library verilog;
use verilog.vl_types.all;
entity COUNTER_8 is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        OUTPUT          : out    vl_logic_vector(7 downto 0)
    );
end COUNTER_8;
