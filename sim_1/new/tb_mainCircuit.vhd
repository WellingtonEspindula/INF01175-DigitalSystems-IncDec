library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mainCircuit is
--  Port ( );
end tb_mainCircuit;

architecture Behavioral of tb_mainCircuit is

component mainCircuit is
    Port ( clock : in STD_LOGIC;
           reset : in STD_LOGIC;
           updown : in STD_LOGIC;
           dado_ent : in STD_LOGIC_VECTOR(7 downto 0);
           lr : in STD_LOGIC;
           sel : in STD_LOGIC;
           display0 : out STD_LOGIC_VECTOR (6 downto 0);
           display1 : out STD_LOGIC_VECTOR (6 downto 0);
           
           -- debug signals
           dbg_counter : out STD_LOGIC_VECTOR(7 downto 0);
           dbg_regin : out STD_LOGIC_VECTOR(7 downto 0);
           dbg_adder : out STD_LOGIC_VECTOR(7 downto 0);
           dbg_subtractor : out STD_LOGIC_VECTOR(7 downto 0);
           
           dbg_output_mux : out STD_LOGIC_VECTOR(7 downto 0);
           dbg_regmux_lsb : out STD_LOGIC_VECTOR(3 downto 0);
           dbg_regmux_msb : out STD_LOGIC_VECTOR(3 downto 0) 
          );
end component;

signal clock, reset, updown, lr, sel: STD_LOGIC;
signal dado_ent : STD_LOGIC_VECTOR(7 downto 0);
signal display0, display1: STD_LOGIC_VECTOR (6 downto 0);

signal dbg_counter, dbg_regin, dbg_adder, dbg_subtractor, dbg_output_mux : STD_LOGIC_VECTOR(7 downto 0);
signal dbg_regmux_lsb, dbg_regmux_msb : STD_LOGIC_VECTOR(3 downto 0);

constant clk_period : time := 20ns;

-- num de matricula 00302367
-- 37 em decimal => 01000011 em binario
constant lsn_matricula : std_logic_vector(7 downto 0) := "01000011";

begin

mainCircuit1 : mainCircuit 
    PORT MAP (clock=>clock, reset=>reset, updown=>updown, dado_ent=>dado_ent, lr=>lr,
        sel=>sel, display0=>display0, display1=>display1, 
        dbg_counter=>dbg_counter,
        dbg_regin=>dbg_regin,
        dbg_adder=>dbg_adder,
        dbg_subtractor=>dbg_subtractor,
        dbg_output_mux=>dbg_output_mux, 
        dbg_regmux_lsb=>dbg_regmux_lsb,
        dbg_regmux_msb=>dbg_regmux_msb);


process begin
    clock <= '1';
    wait for clk_period/2;
    clock <= '0';
    wait for clk_period/2;
end process;


process begin
    wait for clk_period;
--    reset <= '0';
    dado_ent <= lsn_matricula;
--    wait for clk_period;
--    reset <= '1';
--    lr <= '1';
    updown <= '1';
    sel <= '0';
    wait for 3*clk_period;
    updown <= '0';
    sel <= '0';
    wait for 3*clk_period;
    updown <= '1';
    sel <= '1';
    wait for 3*clk_period;
    updown <= '0';
    sel <= '1';
    wait for 3*clk_period;
    updown <= '1';
    sel <= '0';
    wait for 3.1*clk_period;
    reset <= '0';
    lr <= '0';
    wait for 2*clk_period;
    reset <= '1';
    wait for 3*clk_period;
    lr <= '1';
    updown <= '1';
    wait;
end process;

end Behavioral;
