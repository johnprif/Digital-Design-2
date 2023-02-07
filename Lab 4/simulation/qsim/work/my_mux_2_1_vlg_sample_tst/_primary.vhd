library verilog;
use verilog.vl_types.all;
entity my_mux_2_1_vlg_sample_tst is
    port(
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        SF              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end my_mux_2_1_vlg_sample_tst;
