library verilog;
use verilog.vl_types.all;
entity MyLatch is
    port(
        Rst             : in     vl_logic;
        Set             : in     vl_logic;
        LE              : in     vl_logic;
        D               : in     vl_logic;
        Q               : out    vl_logic;
        Qn              : out    vl_logic
    );
end MyLatch;
