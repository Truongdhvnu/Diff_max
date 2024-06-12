LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY Max_Diff_Controller IS
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
END ENTITY;

ARCHITECTURE behavioral OF Max_Diff_Controller IS
    TYPE state_type IS (s0, s1, s2, s3, s4, s5, s6);
    SIGNAL state : state_type;
BEGIN
    FSM : PROCESS (Clk)
    BEGIN
        IF rising_edge(Clk) THEN
            IF (nReset_in = '0') THEN
                state <= s0;

            ELSE
                CASE state IS
                    WHEN s0 =>
                        IF Start = '1' THEN
                            state <= s1;
                        ELSE
                            state <= s0;
                        END IF;

                    WHEN s1 =>
                        IF index_gt_Nminus1 = '1' THEN
                            state <= s5;
                        ELSE
                            state <= s2;
                        END IF;

                    WHEN s2 =>
                        IF R_ready = '1' THEN
                            state <= s3;
                        ELSE
                            state <= s2;
                        END IF;

                    WHEN s3 =>
                        state <= s4;

                    WHEN s4 =>
                        state <= s1;

                    WHEN s5 =>
                        IF NS_ready = '1' THEN
                            state <= s6;
                        ELSE
                            state <= s5;
                        END IF;

                    WHEN s6 =>
                        state <= s0;
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    nReset_out <= '0' WHEN state = s0 ELSE
        '1';
    addr_ld <= '1' WHEN state = s1 ELSE
        '0';
    R_en <= '1' WHEN state = s2 ELSE
        '0';
    data_ld <= '1' WHEN state = s3 ELSE
        '0';
    index_en <= '1' WHEN state = s4 ELSE
        '0';
    minmax_ld_en <= '1' when state = s4 else
        '0';
    Diff_ld <= '1' WHEN state = s5 ELSE
        '0';
    W_valid <= '1' WHEN state = s5 ELSE
        '0';
    Done <= '1' WHEN state = s6 or state = s0 ELSE
        '0';

END behavioral;