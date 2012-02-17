library verilog;
use verilog.vl_types.all;
entity RegisterFile is
    port(
        \in\            : in     vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        Laddr           : in     vl_logic_vector(1 downto 0);
        Raddr           : in     vl_logic_vector(1 downto 0);
        Base            : in     vl_logic_vector(2 downto 0);
        RFLwrite        : in     vl_logic;
        RFHwrite        : in     vl_logic;
        Lout            : out    vl_logic_vector(15 downto 0);
        Rout            : out    vl_logic_vector(15 downto 0)
    );
end RegisterFile;
