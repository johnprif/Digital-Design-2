library verilog;
use verilog.vl_types.all;
entity ADDER_8_4_bits_vlg_check_tst is
    port(
        Res             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end ADDER_8_4_bits_vlg_check_tst;
