library verilog;
use verilog.vl_types.all;
entity ADDER_NEW is
    port(
        Res             : out    vl_logic_vector(7 downto 0);
        F               : in     vl_logic_vector(7 downto 0);
        Switch          : in     vl_logic;
        I               : in     vl_logic_vector(3 downto 0)
    );
end ADDER_NEW;
