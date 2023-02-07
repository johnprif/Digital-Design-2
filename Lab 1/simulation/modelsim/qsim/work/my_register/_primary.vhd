library verilog;
use verilog.vl_types.all;
entity my_register is
    port(
        Q3              : out    vl_logic;
        CLR             : in     vl_logic;
        CLK             : in     vl_logic;
        I_3             : in     vl_logic;
        I_2             : in     vl_logic;
        I_1             : in     vl_logic;
        I_0             : in     vl_logic;
        S1              : in     vl_logic;
        S0              : in     vl_logic;
        SET             : in     vl_logic;
        Q2              : out    vl_logic;
        Q1              : out    vl_logic;
        Q0              : out    vl_logic
    );
end my_register;
