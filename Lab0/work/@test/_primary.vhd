library verilog;
use verilog.vl_types.all;
entity Test is
    port(
        x               : in     vl_logic;
        y               : in     vl_logic;
        Cin             : in     vl_logic;
        Cout            : out    vl_logic;
        Sum             : out    vl_logic
    );
end Test;
