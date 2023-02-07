library verilog;
use verilog.vl_types.all;
entity COUNTER_8_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end COUNTER_8_vlg_sample_tst;
