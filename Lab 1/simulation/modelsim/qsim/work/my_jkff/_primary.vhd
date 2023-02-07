library verilog;
use verilog.vl_types.all;
entity my_jkff is
    port(
        Q               : out    vl_logic;
        SET             : in     vl_logic;
        CLR             : in     vl_logic;
        K               : in     vl_logic;
        J               : in     vl_logic;
        CLK             : in     vl_logic
    );
end my_jkff;
