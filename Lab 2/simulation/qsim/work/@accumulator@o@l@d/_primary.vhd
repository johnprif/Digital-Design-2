library verilog;
use verilog.vl_types.all;
entity AccumulatorOLD is
    port(
        Acc             : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        I               : in     vl_logic_vector(3 downto 0)
    );
end AccumulatorOLD;
