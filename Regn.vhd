LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Regn IS
    GENERIC (N : INTEGER := 16);
    PORT (
        DEFAULT : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
        D       : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
        nReset  : IN STD_LOGIC;
        Clk     : IN STD_LOGIC;
        En      : IN STD_LOGIC;
        Q       : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
    );
END Regn;

ARCHITECTURE Behavior OF Regn IS
    SIGNAL reg : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);

BEGIN
    PROCESS (Clk)
    BEGIN
        IF (Clk'EVENT AND Clk = '1') THEN
            IF nReset = '0' THEN
                reg <= DEFAULT;
            ELSIF (En = '1') THEN
                reg <= D;
            END IF;
        END IF;

    END PROCESS;

    Q <= reg;
END Behavior;