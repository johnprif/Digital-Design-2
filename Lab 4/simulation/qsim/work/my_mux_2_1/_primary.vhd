library verilog;
use verilog.vl_types.all;
entity my_mux_2_1 is
    port(
        Y               : out    vl_logic;
        A1              : in     vl_logic;
        SF              : in     vl_logic;
        A0              : in     vl_logic
    );
end my_mux_2_1;
