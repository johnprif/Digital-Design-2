library verilog;
use verilog.vl_types.all;
entity full_adder_vlg_sample_tst is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        Cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end full_adder_vlg_sample_tst;
