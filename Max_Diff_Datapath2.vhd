LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE work.Lib.ALL;

ENTITY Max_Diff_Datapath IS
    GENERIC (
        DATA_WIDTH : INTEGER := DATA_WIDTH;
        ADDR_WIDTH : INTEGER := ADDR_WIDTH
    );
    PORT (
        nReset_in   : IN STD_LOGIC;
        Clk         : IN STD_LOGIC;
        -- Interface signal with input buffer
        R_addr      : OUT STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        Data_in     : IN STD_LOGIC_VECTOR (DATA_WIDTH - 1 DOWNTO 0);
        -- Interface signal with output buffer 
        Diff        : OUT STD_LOGIC_VECTOR(DATA_WIDTH - 1 DOWNTO 0);
        -- parameter 
        Addr_in     : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        N_minus1    : IN STD_LOGIC_VECTOR(ADDR_WIDTH - 1 DOWNTO 0);
        -- input control signal
        idex_en     : IN STD_LOGIC;
        Addr_ld, data_ld, diff_ld  : IN STD_LOGIC;
        
        -- output control signal
        index_gt_Nminus1     : OUT STD_LOGIC
        
    );
END Max_Diff_Datapath;

ARCHITECTURE RTL of Max_Diff_Datapath IS
    SIGNAL index_cnt : STD_LOGIC_VECTOR (ADDR_WIDTH - 1 DOWNTO 0);

    SIGNAL Addr_sum : STD_LOGIC_VECTOR (ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL received_data : STD_LOGIC_VECTOR (DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL cur_max : STD_LOGIC_VECTOR (DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL cur_min : STD_LOGIC_VECTOR (DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL sub : STD_LOGIC_VECTOR (DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL max_lt_data, min_gt_data : STD_LOGIC;
BEGIN
-- Counter
    index_cnter : Counter_Nbit
    GENERIC MAP(COUNTER_WIDTH => ADDR_WIDTH)
    PORT MAP(
        Clk => Clk,
        Enable => idex_en,
        Clear => nReset_in,
        Din => (OTHERS => '0'),
        Load => '0',
        Dout => index_cnt
    );

-- Adder/Copare module
    Addr_sum <= STD_LOGIC_VECTOR(unsigned(Addr_in) +  unsigned(index_cnt));
    index_gt_Nminus1 <= '1' when unsigned(Addr_sum) > unsigned(N_minus1) else '0';
    max_lt_data <= '1' when signed(cur_max) < signed(received_data) else '0';
    min_gt_data <= '1' when signed(received_data) < signed(cur_min) else '0';
    sub <= STD_LOGIC_VECTOR(signed(cur_max) - signed(cur_min));
-- Reg
    Addr_reg : Regn
    GENERIC MAP(N => ADDR_WIDTH)
    PORT MAP(
        (OTHERS => '0'),
        Addr_sum,
        nReset_in, Clk, Addr_ld,
        R_addr);

    data_reg : Regn
    GENERIC MAP(N => DATA_WIDTH)
    PORT MAP(
        (OTHERS => '0'),
        Data_in,
        nReset_in, Clk, data_ld,
        received_data);
    
    max_reg : Regn
    GENERIC MAP(N => DATA_WIDTH)
    PORT MAP(
        STD_LOGIC_VECTOR(to_signed(-2**(DATA_WIDTH-1) , DATA_WIDTH)),
        received_data,
        nReset_in, Clk, max_lt_data,
        cur_max);
    
    min_reg : Regn
    GENERIC MAP(N => DATA_WIDTH)
    PORT MAP(
        STD_LOGIC_VECTOR(to_signed(2**(DATA_WIDTH-1) - 1 , DATA_WIDTH)),
        received_data,
        nReset_in, Clk, min_gt_data,
        cur_min);

    diff_reg : Regn
    GENERIC MAP(N => DATA_WIDTH)
    PORT MAP(
        (OTHERS => '0'),
        sub,
        nReset_in, Clk, diff_ld,
        Diff);
        
END ARCHITECTURE RTL;