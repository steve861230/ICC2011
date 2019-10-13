library verilog;
use verilog.vl_types.all;
entity LCD_CTRL is
    generic(
        write           : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        work            : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        finish          : vl_logic_vector(0 to 1) := (Hi1, Hi1);
        read            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        shift_up        : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        shift_down      : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        shift_left      : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        shift_right     : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        average         : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        mirror_x        : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        mirror_y        : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        IROM_Q          : in     vl_logic_vector(7 downto 0);
        cmd             : in     vl_logic_vector(2 downto 0);
        cmd_valid       : in     vl_logic;
        IROM_EN         : out    vl_logic;
        IROM_A          : out    vl_logic_vector(5 downto 0);
        IRB_RW          : out    vl_logic;
        IRB_D           : out    vl_logic_vector(7 downto 0);
        IRB_A           : out    vl_logic_vector(5 downto 0);
        busy            : out    vl_logic;
        done            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of write : constant is 1;
    attribute mti_svvh_generic_type of work : constant is 1;
    attribute mti_svvh_generic_type of finish : constant is 1;
    attribute mti_svvh_generic_type of read : constant is 1;
    attribute mti_svvh_generic_type of shift_up : constant is 1;
    attribute mti_svvh_generic_type of shift_down : constant is 1;
    attribute mti_svvh_generic_type of shift_left : constant is 1;
    attribute mti_svvh_generic_type of shift_right : constant is 1;
    attribute mti_svvh_generic_type of average : constant is 1;
    attribute mti_svvh_generic_type of mirror_x : constant is 1;
    attribute mti_svvh_generic_type of mirror_y : constant is 1;
end LCD_CTRL;
