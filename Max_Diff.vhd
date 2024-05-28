USE work.Lib.ALL;
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Max_Diff IS
    GENERIC (
        DATA_WIDTH : INTEGER := DATA_WIDTH;
        ADDR_WIDTH : INTEGER := ADDR_WIDTH
    );
    PORT (
        nReset_in   : IN STD_LOGIC;
        Clk         : IN STD_LOGIC;
        Start       : IN STD_LOGIC;
        Done        : OUT STD_LOGIC;
        -- Interface with input buffer
        R_addr      : OUT STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        R_en        : OUT STD_LOGIC;
        R_valid     : IN STD_LOGIC;
        Data_in     : IN STD_LOGIC_VECTOR (DATA_WIDTH - 1 DOWNTO 0);
        -- Interface with output buffer 
        W_valid     : OUT STD_LOGIC;
        NS_ready    : IN STD_LOGIC;
        Diff        : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        -- parameter of module
        Addr_in     : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        N_minus1    : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0)
    );
END ENTITY Max_Diff;

--