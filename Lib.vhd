LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE Lib IS

    CONSTANT DATA_WIDTH : INTEGER := 8;
    CONSTANT ADDR_WIDTH : INTEGER := 8;

    COMPONENT Regn IS
        GENERIC (
            N : INTEGER := 16
        );
        PORT (
            DEFAULT : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
            D       : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
            nReset  : IN STD_LOGIC;
            Clk     : IN STD_LOGIC;
            En      : IN STD_LOGIC;
            Q       : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
        );
    END COMPONENT Regn;

    COMPONENT Counter_Nbit IS
        GENERIC (
            COUNTER_WIDTH : INTEGER := 8
        );
        PORT (
            Clk    : IN STD_LOGIC;
            Enable : IN STD_LOGIC;
            Clear  : IN STD_LOGIC;
            Din    : IN STD_LOGIC_VECTOR(COUNTER_WIDTH - 1 DOWNTO 0);
            Load   : IN STD_LOGIC;
            Dout   : OUT STD_LOGIC_VECTOR(COUNTER_WIDTH - 1 DOWNTO 0)
        );
    END COMPONENT Counter_Nbit;

    COMPONENT Max_Diff IS
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
    END COMPONENT Max_Diff;

    COMPONENT Max_Diff_Controller IS
        PORT (
            Clk              : IN STD_LOGIC;
            nReset_in        : IN STD_LOGIC;
            Start            : IN STD_LOGIC;
            R_ready          : IN STD_LOGIC;
            NS_ready         : IN STD_LOGIC;
            index_gt_Nminus1 : IN STD_LOGIC;

            R_en    : OUT STD_LOGIC;
            W_valid : OUT STD_LOGIC;
            Done    : OUT STD_LOGIC;

            nReset_out   : OUT STD_LOGIC;
            addr_ld      : OUT STD_LOGIC;
            data_ld      : OUT STD_LOGIC;
            index_en     : OUT STD_LOGIC;
            minmax_ld_en : OUT STD_LOGIC;
            Diff_ld      : OUT STD_LOGIC
        );
    END COMPONENT Max_Diff_Controller;

    COMPONENT Max_Diff_Datapath IS
        GENERIC (
            DATA_WIDTH : INTEGER := DATA_WIDTH;
            ADDR_WIDTH : INTEGER := ADDR_WIDTH
        );
        PORT (
            nReset_in : IN STD_LOGIC;
            Clk       : IN STD_LOGIC;
            -- Interface signal with input buffer
            R_addr  : OUT STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
            Data_in : IN STD_LOGIC_VECTOR (DATA_WIDTH - 1 DOWNTO 0);
            -- Interface signal with output buffer 
            Diff : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
            -- parameter 
            Addr_in  : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
            N_minus1 : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);

            -- input control signal
            index_en     : IN STD_LOGIC;
            minmax_ld_en : IN STD_LOGIC;
            addr_ld      : IN STD_LOGIC;
            data_ld      : IN STD_LOGIC;
            Diff_ld      : IN STD_LOGIC;

            -- output control signal
            index_gt_Nminus1 : OUT STD_LOGIC
        );
    END COMPONENT Max_Diff_Datapath;

END PACKAGE Lib;