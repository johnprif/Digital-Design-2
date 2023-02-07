library verilog;
use verilog.vl_types.all;
entity dec_2_4 is
    port(
        D0              : out    vl_logic;
        A1              : in     vl_logic;
        A0              : in     vl_logic;
        D1              : out    vl_logic;
        D2              : out    vl_logic;
        D3              : out    vl_logic
    );
end dec_2_4;
