library verilog;
use verilog.vl_types.all;
entity full_adder is
    port(
        F0              : out    vl_logic;
        I2              : in     vl_logic;
        I1              : in     vl_logic;
        I0              : in     vl_logic;
        F1              : out    vl_logic
    );
end full_adder;
