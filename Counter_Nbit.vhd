library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Counter_Nbit is
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
end Counter_Nbit;

architecture Behavior of Counter_Nbit is
  signal Count : STD_LOGIC_VECTOR (COUNTER_WIDTH-1 downto 0);
  begin

  trigger : process (Clk) is
    begin
        if (Clk'EVENT AND Clk = '1') then
            if (Clear = '0') then
                Count <= (others => '0');
            elsif (load = '1') then
                Count <=  Din;	
            elsif (Enable = '1') then
                Count <= Count + 1;
            else
                Count <= Count;  
            end if;
        end if;
       
    end process trigger;
        Dout <= Count;  
end Behavior;
