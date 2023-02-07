library verilog;
use verilog.vl_types.all;
entity ADDER_8Bits_ADDSUB is
    port(
        Z               : out    vl_logic;
        Res             : out    vl_logic_vector(7 downto 0);
        A               : in     vl_logic_vector(7 downto 0);
        ADD_SUB         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0)
    );
end ADDER_8Bits_ADDSUB;
