library verilog;
use verilog.vl_types.all;
entity WindowPointer is
    port(
        \in\            : in     vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        WPreset         : in     vl_logic;
        WPadd           : in     vl_logic;
        \out\           : out    vl_logic_vector(2 downto 0)
    );
end WindowPointer;
