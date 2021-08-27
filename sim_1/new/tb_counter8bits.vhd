library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_counter8bits is
--  Port ( );
end tb_counter8bits;

architecture Behavioral of tb_counter8bits is

component counter8bits is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           up_down : in STD_LOGIC;
           saida : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal clk : STD_LOGIC;
signal reset : STD_LOGIC;
signal updown : STD_LOGIC;
signal output  : STD_LOGIC_VECTOR (7 downto 0);

constant clk_period : time := 20ns;


begin counter8bits_1 : counter8bits 
    Port map (  clk=>clk,
                reset => reset,
                up_down=>updown,
                saida=>output  );

process begin
    clk <= '1';
    wait for clk_period;
    clk <= '0';
    wait for clk_period;
end process;


process begin
    wait for clk_period;
    reset <='0';
    wait for 2*clk_period;
    reset <= '1';
    updown <= '1';
    wait for 6*clk_period;
    updown <= '0';
    wait for 6*clk_period;
    reset <= '0';
    wait for clk_period;
    reset <= '1';
    wait for clk_period;
    updown <= '0';
    wait;
end process;

end Behavioral;


