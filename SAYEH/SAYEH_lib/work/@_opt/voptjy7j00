library verilog;
use verilog.vl_types.all;
entity AddressingUnit is
    port(
        Rside           : in     vl_logic_vector(15 downto 0);
        Iside           : in     vl_logic_vector(7 downto 0);
        Address         : out    vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        ResetPC         : in     vl_logic;
        PCplusI         : in     vl_logic;
        PCplus1         : in     vl_logic;
        RplusI          : in     vl_logic;
        Rplus0          : in     vl_logic;
        PCenable        : in     vl_logic
    );
end AddressingUnit;
