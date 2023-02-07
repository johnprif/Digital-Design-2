library verilog;
use verilog.vl_types.all;
entity my_dff is
    port(
        Q               : out    vl_logic;
        CLR             : in     vl_logic;
        CLK             : in     vl_logic;
        D               : in     vl_logic;
        SET             : in     vl_logic
    );
end my_dff;
