library verilog;
use verilog.vl_types.all;
entity AddressLogic is
    port(
        PCside          : in     vl_logic_vector(15 downto 0);
        Rside           : in     vl_logic_vector(15 downto 0);
        Iside           : in     vl_logic_vector(7 downto 0);
        ALout           : out    vl_logic_vector(15 downto 0);
        ResetPC         : in     vl_logic;
        PCplusI         : in     vl_logic;
        PCplus1         : in     vl_logic;
        RplusI          : in     vl_logic;
        Rplus0          : in     vl_logic
    );
end AddressLogic;
