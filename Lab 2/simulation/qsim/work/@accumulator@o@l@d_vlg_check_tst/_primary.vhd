library verilog;
use verilog.vl_types.all;
entity AccumulatorOLD_vlg_check_tst is
    port(
        Acc             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end AccumulatorOLD_vlg_check_tst;
