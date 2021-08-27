library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter8bits is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           up_down : in STD_LOGIC;
           saida : out STD_LOGIC_VECTOR (7 downto 0));
end counter8bits;

architecture Behavioral of counter8bits is

constant init_const : std_logic_vector(7 downto 0) := "00000000"; -- 00 sao os 2 nums mais significativos da matricula
signal count : std_logic_vector(7 downto 0) := init_const;

begin

process(clk, reset) begin
if (reset='0') then
   count <= init_const; 
elsif rising_edge(clk) then
    CASE up_down is
        when '0' => count <= std_logic_vector(unsigned(count)-1);
        when '1' => count <= std_logic_vector(unsigned(count)+1);
        when others => count <= count;
    end case;
end if; 
end process;

saida <= count;

end Behavioral;
