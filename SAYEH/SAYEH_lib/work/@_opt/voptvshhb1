library verilog;
use verilog.vl_types.all;
entity ArithmeticUnit is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        B15to0          : in     vl_logic;
        AandB           : in     vl_logic;
        AorB            : in     vl_logic;
        notB            : in     vl_logic;
        shlB            : in     vl_logic;
        shrB            : in     vl_logic;
        AaddB           : in     vl_logic;
        AsubB           : in     vl_logic;
        AmulB           : in     vl_logic;
        AcmpB           : in     vl_logic;
        aluout          : out    vl_logic_vector(15 downto 0);
        cin             : in     vl_logic;
        zout            : out    vl_logic;
        cout            : out    vl_logic
    );
end ArithmeticUnit;
