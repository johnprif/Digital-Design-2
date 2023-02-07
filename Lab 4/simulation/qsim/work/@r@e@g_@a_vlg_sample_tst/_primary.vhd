library verilog;
use verilog.vl_types.all;
entity REG_A_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        EN              : in     vl_logic;
        I0_0            : in     vl_logic;
        I0_1            : in     vl_logic;
        I0_2            : in     vl_logic;
        I0_3            : in     vl_logic;
        I0_4            : in     vl_logic;
        I0_5            : in     vl_logic;
        I0_6            : in     vl_logic;
        I0_7            : in     vl_logic;
        I1_0            : in     vl_logic;
        I1_1            : in     vl_logic;
        I1_2            : in     vl_logic;
        I1_3            : in     vl_logic;
        I1_4            : in     vl_logic;
        I1_5            : in     vl_logic;
        I1_6            : in     vl_logic;
        I1_7            : in     vl_logic;
        L_S             : in     vl_logic;
        SEL_A           : in     vl_logic;
        SET             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end REG_A_vlg_sample_tst;
