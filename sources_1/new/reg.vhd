library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg is
    generic(n: natural);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           lr : in STD_LOGIC;
           dado_ent : in STD_LOGIC_VECTOR (n-1 downto 0);
           saida : out STD_LOGIC_VECTOR (n-1 downto 0));
end reg;

architecture Behavioral of reg is

signal output: STD_LOGIC_VECTOR (n-1 downto 0) := (others => '0');

begin
process(clk, reset, lr, dado_ent) begin
    if (reset = '0') then
        output <= (others=>'0');
    elsif rising_edge(clk) then
        if (lr='1') then
            output <= dado_ent;
        end if;
    end if;
end process;

saida <= output;


end Behavioral;
