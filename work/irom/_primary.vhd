library verilog;
use verilog.vl_types.all;
entity irom is
    generic(
        BITS            : integer := 8;
        word_depth      : integer := 128;
        addr_width      : integer := 7;
        wordx           : vl_notype;
        addrx           : vl_notype
    );
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        CEN             : in     vl_logic;
        A               : in     vl_logic_vector(6 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BITS : constant is 1;
    attribute mti_svvh_generic_type of word_depth : constant is 1;
    attribute mti_svvh_generic_type of addr_width : constant is 1;
    attribute mti_svvh_generic_type of wordx : constant is 3;
    attribute mti_svvh_generic_type of addrx : constant is 3;
end irom;
