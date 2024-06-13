LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.Lib.ALL;

ENTITY Max_Diff_tb IS
END;

ARCHITECTURE tb OF Max_Diff_tb IS
    SIGNAL nReset_in : STD_LOGIC;
    SIGNAL Clk       : STD_LOGIC;
    SIGNAL Start     : STD_LOGIC;
    SIGNAL Done      : STD_LOGIC;

    SIGNAL R_addr  : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL R_en    : STD_LOGIC;
    SIGNAL R_ready : STD_LOGIC;
    SIGNAL Data_in : STD_LOGIC_VECTOR (DATA_WIDTH - 1 DOWNTO 0);

    SIGNAL W_valid  : STD_LOGIC;
    SIGNAL NS_ready : STD_LOGIC;
    SIGNAL Diff     : STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);

    SIGNAL Addr_in  : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL N_minus1 : STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);

    -- Define an array for Data_in values
    TYPE arr1 IS ARRAY (0 TO 2) OF SIGNED(DATA_WIDTH - 1 DOWNTO 0);
    CONSTANT arr1_values : arr1 := (to_signed(0, DATA_WIDTH),
                                    to_signed(-2, DATA_WIDTH),
                                    to_signed(10, DATA_WIDTH));

    TYPE arr2 IS ARRAY (0 TO 9) OF SIGNED(DATA_WIDTH - 1 DOWNTO 0);
    CONSTANT arr2_values : arr2 := (to_signed(-39, DATA_WIDTH),
                                    to_signed(18, DATA_WIDTH),
                                    to_signed(24, DATA_WIDTH),
                                    to_signed(-18, DATA_WIDTH),
                                    to_signed(-32, DATA_WIDTH),
                                    to_signed(-50, DATA_WIDTH),
                                    to_signed(24, DATA_WIDTH),
                                    to_signed(-25, DATA_WIDTH),
                                    to_signed(-2, DATA_WIDTH),
                                    to_signed(-62, DATA_WIDTH));   
BEGIN
    uut : ENTITY work.Max_Diff
        PORT MAP(
            nReset_in => nReset_in,
            Clk       => Clk,
            Start     => Start,
            Done      => Done,

            R_addr    => R_addr,
            R_en      => R_en,
            R_ready   => R_ready,
            Data_in   => Data_in,
            
            W_valid   => W_valid,
            NS_ready  => NS_ready,
            Diff      => Diff,
            
            Addr_in   => Addr_in,
            N_minus1  => N_minus1
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
        WAIT;
    END PROCESS;

    stimulus : PROCESS
    BEGIN
        Start <= '0';
        R_ready <= '0';
        NS_ready <= '0';
        -- Initial wait
        WAIT FOR 22 ns;

        -- Start signal and parameters
        Start    <= '1';
        Addr_in  <= STD_LOGIC_VECTOR(to_unsigned(0, ADDR_WIDTH));
        N_minus1 <= STD_LOGIC_VECTOR(to_unsigned(2, ADDR_WIDTH));
        WAIT FOR 12 ns;
        Start <= '0';

        -- For loop to pass data from array
        FOR i IN 0 TO 2 LOOP
            WAIT UNTIL rising_edge(Clk) AND R_en = '1';
            WAIT UNTIL rising_edge(Clk);
            Data_in <= STD_LOGIC_VECTOR(arr1_values(i));
            R_ready <= '1';
            WAIT UNTIL rising_edge(Clk);
            R_ready <= '0';
        END LOOP;

        -- Waiting for write valid signal and setting NS_ready
        WAIT UNTIL rising_edge(Clk) AND W_valid = '1';
        WAIT UNTIL rising_edge(Clk);
        NS_ready <= '1';
        WAIT UNTIL rising_edge(Clk);
        NS_ready <= '0';

        -- Wait for new operation
        WAIT FOR 50 ns;

        -- New set of operations
        Start    <= '1';
        Addr_in  <= STD_LOGIC_VECTOR(to_unsigned(11, ADDR_WIDTH));
        N_minus1 <= STD_LOGIC_VECTOR(to_unsigned(9, ADDR_WIDTH));
        WAIT FOR 12 ns;
        Start <= '0';

        -- For loop to pass data from array
        FOR i IN 0 TO 9 LOOP
            WAIT UNTIL rising_edge(Clk) AND R_en = '1';
            WAIT UNTIL rising_edge(Clk);
            Data_in <= STD_LOGIC_VECTOR(arr2_values(i));
            R_ready <= '1';
            WAIT UNTIL rising_edge(Clk);
            R_ready <= '0';
        END LOOP;

        -- Waiting for write valid signal and setting NS_ready
        WAIT UNTIL rising_edge(Clk) AND W_valid = '1';
        WAIT UNTIL rising_edge(Clk);
        NS_ready <= '1';
        WAIT UNTIL rising_edge(Clk);
        NS_ready <= '0';

        WAIT FOR 50 ns;

        WAIT;
    END PROCESS;
END ARCHITECTURE tb;