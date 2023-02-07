library verilog;
use verilog.vl_types.all;
entity mux_4_1 is
    port(
        Y               : out    vl_logic;
        I0              : in     vl_logic;
        A1              : in     vl_logic;
        A0              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I1              : in     vl_logic
    );
end mux_4_1;
