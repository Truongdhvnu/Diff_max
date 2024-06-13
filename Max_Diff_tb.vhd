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
        N_minus1 <= STD_LOGIC_VECTOR(to_unsigned(2, DATA_WIDTH));
        WAIT FOR 12 ns;
--        Start <= '0';

        WAIT UNTIL rising_edge(Clk) AND R_en = '1';
        WAIT UNTIL rising_edge(Clk);
        data_in <= STD_LOGIC_VECTOR(to_signed(0, DATA_WIDTH));
        R_ready <= '1';
        WAIT UNTIL rising_edge(Clk);
        R_ready <= '0';

        WAIT UNTIL rising_edge(Clk) AND R_en = '1';
        WAIT UNTIL rising_edge(Clk);
        data_in <= STD_LOGIC_VECTOR(to_signed(-2, DATA_WIDTH));
        R_ready <= '1';
        WAIT UNTIL rising_edge(Clk);
        R_ready <= '0';

        WAIT UNTIL rising_edge(Clk) AND R_en = '1';
        WAIT UNTIL rising_edge(Clk);
        data_in <= STD_LOGIC_VECTOR(to_signed(10, DATA_WIDTH));
        R_ready <= '1';
        WAIT UNTIL rising_edge(Clk);
        R_ready <= '0';

        WAIT UNTIL rising_edge(Clk) AND W_valid = '1';
        WAIT UNTIL rising_edge(Clk);
        NS_ready <= '1';
        WAIT UNTIL rising_edge(Clk);
        NS_ready <= '0';

        WAIT FOR 50 ns;
        Start    <= '1';
        Addr_in  <= STD_LOGIC_VECTOR(to_signed(1, ADDR_WIDTH));
        N_minus1 <= STD_LOGIC_VECTOR(to_signed(4, DATA_WIDTH));
        WAIT FOR 12 ns;
        Start <= '0';

        WAIT;
    END PROCESS;
END;