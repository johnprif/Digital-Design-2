library verilog;
use verilog.vl_types.all;
entity DataPath_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Flag_Before     : in     vl_logic;
        Flag_Saved      : in     vl_logic;
        Res             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end DataPath_vlg_check_tst;
