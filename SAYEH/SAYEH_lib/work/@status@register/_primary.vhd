library verilog;
use verilog.vl_types.all;
entity StatusRegister is
    port(
        Cin             : in     vl_logic;
        Zin             : in     vl_logic;
        SRload          : in     vl_logic;
        clk             : in     vl_logic;
        Cset            : in     vl_logic;
        Creset          : in     vl_logic;
        Zset            : in     vl_logic;
        Zreset          : in     vl_logic;
        Cout            : out    vl_logic;
        Zout            : out    vl_logic
    );
end StatusRegister;
