library verilog;
use verilog.vl_types.all;
entity exercise_B is
    port(
        D_Q             : out    vl_logic;
        CLK             : in     vl_logic;
        D               : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        L_Q             : out    vl_logic
    );
end exercise_B;
