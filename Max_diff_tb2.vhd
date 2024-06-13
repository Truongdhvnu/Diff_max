LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.Lib.ALL;

ENTITY Max_Diff_tb2 IS
END;

ARCHITECTURE tb OF Max_Diff_tb2 IS
    SIGNAL nReset_in : STD_LOGIC;
    SIGNAL Clk       : STD_LOGIC;
    SIGNAL Start     : STD_LOGIC := '1';
    SIGNAL Done      : STD_LOGIC;

    SIGNAL R_addr  : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL R_en    : STD_LOGIC;
    SIGNAL R_ready : STD_LOGIC := '1';
    SIGNAL Data_in : STD_LOGIC_VECTOR (DATA_WIDTH - 1 DOWNTO 0);

    SIGNAL W_valid  : STD_LOGIC;
    SIGNAL NS_ready : STD_LOGIC := '1';
    SIGNAL Diff     : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);

    SIGNAL Addr_in  : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL N_minus1 : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);

    -- constant ARRAY_SIZE : integer := 50;
    -- TYPE integer_array IS ARRAY (0 to ARRAY_SIZE-1) OF INTEGER;

    -- CONSTANT testdata : integer_array := (
    --     127, -128, 34, -45, 12, 89, -56, 23, -87, 64,
    --     17, -9, 120, -115, 32, 44, -33, 77, -100, 55, OTHERS => 0
    -- );
    TYPE integer_array IS ARRAY (NATURAL RANGE <>) OF INTEGER;

    CONSTANT testdata : integer_array := (
        25, -12, 34, -45, 12, 39, -36, 23, -57, 64,
        17, -9, 10, -15, 32, 44, -33, 47, -10, 55
    );
    COMPONENT Max_Diff IS
        PORT (
            nReset_in : IN STD_LOGIC;
            Clk       : IN STD_LOGIC;
            Start     : IN STD_LOGIC;
            Done      : OUT STD_LOGIC;
            -- Interface with input buffer
            R_addr  : OUT STD_LOGIC_VECTOR(8 - 1 DOWNTO 0);
            R_en    : OUT STD_LOGIC;
            R_ready : IN STD_LOGIC;
            Data_in : IN STD_LOGIC_VECTOR (8 - 1 DOWNTO 0);
            -- Interface with output buffer 
            W_valid  : OUT STD_LOGIC;
            NS_ready : IN STD_LOGIC;
            Diff     : OUT STD_LOGIC_VECTOR(8 - 1 DOWNTO 0);
            -- parameter of module
            Addr_in  : IN STD_LOGIC_VECTOR(8 - 1 DOWNTO 0);
            N_minus1 : IN STD_LOGIC_VECTOR(8 - 1 DOWNTO 0)
        );
    END COMPONENT Max_Diff;
    
BEGIN
    uut : Max_Diff PORT MAP(
        nReset_in => nReset_in,
        Clk       => Clk,
        Start     => Start,
        Done      => Done,

        R_addr  => R_addr,
        R_en    => R_en,
        R_ready => R_ready,
        Data_in => Data_in,

        W_valid  => W_valid,
        NS_ready => NS_ready,
        Diff     => Diff,

        Addr_in  => Addr_in,
        N_minus1 => N_minus1
    );

    clock : PROCESS
    BEGIN
        Clk <= '0';
        WAIT FOR 5 ns;
        Clk <= '1';
        WAIT FOR 5 ns;
    END PROCESS;
    reset : PROCESS
    BEGIN
        nReset_in <= '0';
        WAIT FOR 12 ns;
        nReset_in <= '1';
        wait;
    END PROCESS;
    stimulus : PROCESS
    BEGIN
        WAIT FOR 22 ns;
        Start    <= '1';
        Addr_in  <= STD_LOGIC_VECTOR(to_unsigned(0, ADDR_WIDTH));
        N_minus1 <= STD_LOGIC_VECTOR(to_unsigned(19, DATA_WIDTH));
        WAIT FOR 12 ns;
        Start <= '0';

        FOR i IN testdata'RANGE LOOP
            WAIT UNTIL rising_edge(Clk) AND R_en = '1';
--            WAIT UNTIL rising_edge(Clk);
            data_in <= STD_LOGIC_VECTOR(to_signed(testdata(i), DATA_WIDTH));
            R_ready <= '1';
            WAIT UNTIL rising_edge(Clk);
            R_ready <= '0';
        END LOOP;

        WAIT UNTIL rising_edge(Clk) AND W_valid = '1';
        WAIT UNTIL rising_edge(Clk);
        NS_ready <= '1';
        WAIT UNTIL rising_edge(Clk);
        NS_ready <= '0';

        WAIT FOR 150 ns;
        Start    <= '1';
        Addr_in  <= STD_LOGIC_VECTOR(to_signed(1, ADDR_WIDTH));
        N_minus1 <= STD_LOGIC_VECTOR(to_signed(4, DATA_WIDTH));
        WAIT FOR 12 ns;
        Start <= '0';

        WAIT;
    END PROCESS;
END;