library verilog;
use verilog.vl_types.all;
entity Fibonacci_vlg_check_tst is
    port(
        F               : in     vl_logic_vector(7 downto 0);
        I               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Fibonacci_vlg_check_tst;
