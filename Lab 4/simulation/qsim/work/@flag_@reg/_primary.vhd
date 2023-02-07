library verilog;
use verilog.vl_types.all;
entity Flag_Reg is
    port(
        FLAG_OUT        : out    vl_logic;
        SET             : in     vl_logic;
        CLR             : in     vl_logic;
        SF              : in     vl_logic;
        Flag_IN         : in     vl_logic;
        CLK             : in     vl_logic
    );
end Flag_Reg;
