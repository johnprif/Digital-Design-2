library verilog;
use verilog.vl_types.all;
entity MyLatch_vlg_sample_tst is
    port(
        D               : in     vl_logic;
        LE              : in     vl_logic;
        Rst             : in     vl_logic;
        Set             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MyLatch_vlg_sample_tst;
