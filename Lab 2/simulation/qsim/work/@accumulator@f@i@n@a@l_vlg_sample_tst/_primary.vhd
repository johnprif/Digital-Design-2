library verilog;
use verilog.vl_types.all;
entity AccumulatorFINAL_vlg_sample_tst is
    port(
        ADD_SUB         : in     vl_logic;
        clk             : in     vl_logic;
        I               : in     vl_logic_vector(3 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end AccumulatorFINAL_vlg_sample_tst;
