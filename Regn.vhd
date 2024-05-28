LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Regn IS
  GENERIC (N : INTEGER := 16);
  PORT (
	Default : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
    D : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
    nReset, Clk, En : IN STD_LOGIC;
    Q : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
  );
END Regn;

ARCHITECTURE Behavior OF Regn IS
BEGIN
  PROCESS (nReset, Clk)
  BEGIN
    IF nReset = '0' THEN
      	Q <= Default;
    ELSIF (Clk'EVENT AND Clk = '1') THEN
      	IF (En = '1') THEN
			Q <= D;
      	END IF;
    END IF;

  END PROCESS;
END Behavior;