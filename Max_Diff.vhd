USE work.Lib.ALL;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Max_Diff IS
    GENERIC (
        DATA_WIDTH : INTEGER := DATA_WIDTH;
        ADDR_WIDTH : INTEGER := ADDR_WIDTH
    );
    PORT (
        nReset_in : IN STD_LOGIC;
        Clk       : IN STD_LOGIC;
        Start     : IN STD_LOGIC;
        Done      : OUT STD_LOGIC;

        -- Interface with input buffer
        R_addr  : OUT STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        R_en    : OUT STD_LOGIC;
        R_ready : IN STD_LOGIC;
        Data_in : IN STD_LOGIC_VECTOR (DATA_WIDTH - 1 DOWNTO 0);

        -- Interface with output buffer 
        W_valid  : OUT STD_LOGIC;
        NS_ready : IN STD_LOGIC;
        Diff     : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);

        -- parameter of module
        Addr_in  : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        N_minus1 : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0)
    );
END ENTITY Max_Diff;

ARCHITECTURE behavior OF Max_Diff IS
    SIGNAL addr_ld_wire          : STD_LOGIC;
    SIGNAL data_ld_wire          : STD_LOGIC;
    SIGNAL index_en_wire         : STD_LOGIC;
    SIGNAL minmax_ld_en_wire     : STD_LOGIC;
    SIGNAL Diff_ld_wire          : STD_LOGIC;
    SIGNAL index_gt_Nminus1_wire : STD_LOGIC;
    SIGNAL nReset_out_wire       : STD_LOGIC;

BEGIN
    max_diff_controller_inst : Max_Diff_Controller
    PORT MAP(
        nReset_in        => nReset_in,
        Clk              => Clk,
        Start            => Start,
        R_ready          => R_ready,
        NS_ready         => NS_ready,
        index_gt_Nminus1 => index_gt_Nminus1_wire,

        R_en    => R_en,
        W_valid => W_valid,
        Done    => Done,

        nReset_out   => nReset_out_wire,
        addr_ld      => addr_ld_wire,
        data_ld      => data_ld_wire,
        index_en     => index_en_wire,
        minmax_ld_en => minmax_ld_en_wire,
        Diff_ld      => Diff_ld_wire
    );

    max_diff_datapath_inst : Max_Diff_Datapath
    PORT MAP(
        nReset_in => nReset_out_wire,
        Clk       => Clk,

        R_addr   => R_addr,
        Data_in  => Data_in,
        Diff     => Diff,
        Addr_in  => Addr_in,
        N_minus1 => N_minus1,

        addr_ld      => addr_ld_wire,
        data_ld      => data_ld_wire,
        minmax_ld_en => minmax_ld_en_wire,
        index_en     => index_en_wire,
        Diff_ld      => Diff_ld_wire,

        index_gt_Nminus1 => index_gt_Nminus1_wire
    );
END ARCHITECTURE behavior;