library verilog;
use verilog.vl_types.all;
entity InstrunctionRegister is
    port(
        \in\            : in     vl_logic_vector(15 downto 0);
        IRload          : in     vl_logic;
        clk             : in     vl_logic;
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end InstrunctionRegister;
