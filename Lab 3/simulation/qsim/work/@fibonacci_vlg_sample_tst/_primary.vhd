library verilog;
use verilog.vl_types.all;
entity Fibonacci_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        par_or_ser      : in     vl_logic;
        SERIAL_INPUT    : in     vl_logic;
        SET             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Fibonacci_vlg_sample_tst;
