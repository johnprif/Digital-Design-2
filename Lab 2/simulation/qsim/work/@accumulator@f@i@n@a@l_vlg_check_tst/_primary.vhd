library verilog;
use verilog.vl_types.all;
entity AccumulatorFINAL_vlg_check_tst is
    port(
        Acc             : in     vl_logic_vector(7 downto 0);
        Hex6            : in     vl_logic_vector(6 downto 0);
        Hex7            : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end AccumulatorFINAL_vlg_check_tst;
