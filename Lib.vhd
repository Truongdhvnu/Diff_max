library IEEE;
use IEEE.STD_LOGIC_1164.all;  

PACKAGE Lib IS 

CONSTANT DATA_WIDTH : INTEGER := 8;
CONSTANT ADDR_WIDTH : INTEGER := 8;

COMPONENT Regn IS
  GENERIC (N : INTEGER := 16);
  PORT (
	Default : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
    D : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
    nReset, Clk, En : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
  );
END COMPONENT Regn;

COMPONENT Counter_Nbit IS
    generic (
        COUNTER_WIDTH :integer := 8
    );
    port(
        Clk            : in STD_LOGIC;
        Enable         : in STD_LOGIC;
        Clear          : in STD_LOGIC;
        Din            : in STD_LOGIC_VECTOR(COUNTER_WIDTH - 1 downto 0);
        Load           : in STD_LOGIC;
        Dout           : out STD_LOGIC_VECTOR(COUNTER_WIDTH - 1 downto 0)
    );
END COMPONENT Counter_Nbit;

COMPONENT Max_Diff IS
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
END COMPONENT Max_Diff;

END PACKAGE Lib;