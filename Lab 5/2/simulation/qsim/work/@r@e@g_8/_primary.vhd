library verilog;
use verilog.vl_types.all;
entity REG_8 is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        Q               : out    vl_logic_vector(7 downto 0);
        Qn              : out    vl_logic_vector(7 downto 0)
    );
end REG_8;
