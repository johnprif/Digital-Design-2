library verilog;
use verilog.vl_types.all;
entity Flag_Reg_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        Flag_IN         : in     vl_logic;
        SET             : in     vl_logic;
        SF              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Flag_Reg_vlg_sample_tst;
