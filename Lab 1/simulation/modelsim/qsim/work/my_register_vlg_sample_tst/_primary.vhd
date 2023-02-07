library verilog;
use verilog.vl_types.all;
entity my_register_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        I_0             : in     vl_logic;
        I_1             : in     vl_logic;
        I_2             : in     vl_logic;
        I_3             : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        SET             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end my_register_vlg_sample_tst;
