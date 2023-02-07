library verilog;
use verilog.vl_types.all;
entity my_register is
    port(
        Q_Next          : out    vl_logic;
        CLR             : in     vl_logic;
        CLK             : in     vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I4              : in     vl_logic;
        I5              : in     vl_logic;
        I6              : in     vl_logic;
        I7              : in     vl_logic;
        Serial_Input    : in     vl_logic;
        parallel_or_serial: in     vl_logic;
        SET             : in     vl_logic;
        Q7              : out    vl_logic;
        Q6              : out    vl_logic;
        Q5              : out    vl_logic;
        Q4              : out    vl_logic;
        Q3              : out    vl_logic;
        Q2              : out    vl_logic;
        Q1              : out    vl_logic;
        Q0              : out    vl_logic
    );
end my_register;
