library verilog;
use verilog.vl_types.all;
entity DataPath is
    port(
        Flag_Before     : out    vl_logic;
        ADD_SUB         : in     vl_logic;
        A               : out    vl_logic_vector(7 downto 0);
        SET             : in     vl_logic;
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        EN_A            : in     vl_logic;
        L_S_A           : in     vl_logic;
        SEL_A           : in     vl_logic;
        Res             : out    vl_logic_vector(7 downto 0);
        X_2             : in     vl_logic;
        X_3             : in     vl_logic;
        X_4             : in     vl_logic;
        X_5             : in     vl_logic;
        X_6             : in     vl_logic;
        X_7             : in     vl_logic;
        X_1             : in     vl_logic;
        X_0             : in     vl_logic;
        B               : out    vl_logic_vector(7 downto 0);
        EN_B            : in     vl_logic;
        L_S_B           : in     vl_logic;
        SEL_B           : in     vl_logic;
        Y_2             : in     vl_logic;
        Y_3             : in     vl_logic;
        Y_4             : in     vl_logic;
        Y_5             : in     vl_logic;
        Y_6             : in     vl_logic;
        Y_7             : in     vl_logic;
        Y_1             : in     vl_logic;
        Y_0             : in     vl_logic;
        Flag_Saved      : out    vl_logic;
        SF              : in     vl_logic
    );
end DataPath;
