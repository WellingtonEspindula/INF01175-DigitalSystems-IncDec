----------------------------------------------------------------------------------
-- Company: INF/UFRGS
-- Engineering Student: Wellington Espindula
-- 
-- Module Name: mainCircuit - Behavioral
-- Project Name: Circuit Assignment 1
-- Description: 
-- 
-- Dependencies: Xiilinx math functions
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity mainCircuit is
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
end mainCircuit;

architecture Behavioral of mainCircuit is
component counter8bits is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           up_down : in STD_LOGIC;
           saida : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component reg is
    generic (n: integer);
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           lr : in STD_LOGIC;
           dado_ent : in STD_LOGIC_VECTOR (n-1 downto 0);
           saida : out STD_LOGIC_VECTOR (n-1 downto 0));
end component;

component adder8bits is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           C : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component subtractor8bits
  PORT (
    A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END component;

component bcd is
  Port ( 
    bin: in STD_LOGIC_VECTOR(3 downto 0);
    dec: out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;


signal output_counter : STD_LOGIC_VECTOR(7 downto 0);
signal output_regin : STD_LOGIC_VECTOR(7 downto 0);

signal output_adder : STD_LOGIC_VECTOR(7 downto 0);
signal output_subtractor : STD_LOGIC_VECTOR(7 downto 0);

signal output_mux : STD_LOGIC_VECTOR(7 downto 0);

signal output_regmux : STD_LOGIC_VECTOR(7 downto 0); 
signal output_regmux_msb : STD_LOGIC_VECTOR(3 downto 0);
signal output_regmux_lsb : STD_LOGIC_VECTOR(3 downto 0);

signal outuput_bcd_display0 : STD_LOGIC_VECTOR(6 downto 0);
signal outuput_bcd_display1 : STD_LOGIC_VECTOR(6 downto 0);

signal outuput_bcd_display0_8bits : STD_LOGIC_VECTOR(7 downto 0);
signal outuput_bcd_display1_8bits : STD_LOGIC_VECTOR(7 downto 0);

signal out_reg_display0 : STD_LOGIC_VECTOR(7 downto 0);
signal out_reg_display1 : STD_LOGIC_VECTOR(7 downto 0);

begin

counter : counter8bits
    PORT MAP (clk => clock, reset => reset, up_down => updown, saida => output_counter);
        
reg_in : reg
    GENERIC MAP (n => 8)
    PORT MAP (clk => clock, reset => reset, lr => lr, dado_ent => dado_ent, saida => output_regin);
        
adder : adder8bits
    PORT MAP (A=>output_counter, B=>output_regin, C=>output_adder);

subtractor : subtractor8bits
  PORT MAP (A => output_counter,B => output_regin,S =>output_subtractor);

output_mux <= output_adder when sel = '0' else
              output_subtractor when sel = '1' else
              "00000000";

reg_mux : reg
    GENERIC MAP (n=>8)
    PORT MAP (clk => clock, reset => reset, lr => '1', dado_ent => output_mux, saida => output_regmux);

output_regmux_lsb <= output_regmux(3 downto 0);
output_regmux_msb <= output_regmux(7 downto 4);

bcd_display0 : bcd
    PORT MAP (bin=>output_regmux_lsb, dec=>outuput_bcd_display0);
    
bcd_display1 : bcd
    PORT MAP (bin=>output_regmux_msb, dec=>outuput_bcd_display1);
    
outuput_bcd_display0_8bits <= '0' & outuput_bcd_display0;
outuput_bcd_display1_8bits <= '0' & outuput_bcd_display1;

reg_bcd_display0 : reg
    GENERIC MAP (n=>8)
    PORT MAP (clk => clock, reset => reset, lr => '1', 
        dado_ent => outuput_bcd_display0_8bits, saida => out_reg_display0);

reg_bcd_display1 : reg
    GENERIC MAP (n=>8)
    PORT MAP (clk => clock, reset => reset, lr => '1', 
        dado_ent => outuput_bcd_display1_8bits, saida => out_reg_display1);
        
display0 <= out_reg_display0(6 downto 0);
display1 <= out_reg_display1(6 downto 0);

-- Debugging signals
dbg_counter <= output_counter;
dbg_regin <= output_regin;

dbg_adder <= output_adder;
dbg_subtractor <= output_subtractor;

dbg_output_mux <= output_mux;
dbg_regmux_lsb <= output_regmux_lsb;
dbg_regmux_msb <= output_regmux_msb;

end Behavioral;
