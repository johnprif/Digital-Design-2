library verilog;
use verilog.vl_types.all;
entity ADDER_8Bits_ADDSUB_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        ADD_SUB         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end ADDER_8Bits_ADDSUB_vlg_sample_tst;
