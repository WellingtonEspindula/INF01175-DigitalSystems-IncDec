----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.03.2021 18:33:24
-- Design Name: 
-- Module Name: tb_bcd - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_bcd is
--  Port ( );
end tb_bcd;

architecture Behavioral of tb_bcd is

component bcd is
  Port ( 
    bin: in STD_LOGIC_VECTOR(3 downto 0);
    dec: out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;

signal bin: STD_LOGIC_VECTOR(3 downto 0);
signal dec: STD_LOGIC_VECTOR(6 downto 0);
constant clk_period: time := 25ns;

begin bcd_1: bcd
    Port map ( bin => bin,
            dec => dec
            ); 

process
begin
    wait for clk_period;
    
    -- test 0 to 15
    for i in 0 to 15 loop
       bin <= STD_LOGIC_VECTOR(to_unsigned(i, 4));
       wait for clk_period;
    end loop;
    wait for clk_period;

    -- test others
    -- unkown
    bin <= "XXXX";
    wait for clk_period;

    -- high impedance
    bin <= "ZZZZ";
    wait for clk_period;

    -- unintialized
    bin <= "UUUU";
    wait for clk_period;

    -- dont care
    bin <= "----";
    wait for clk_period;

    -- weak signal
    bin <= "WWWW";
    wait for clk_period;

    -- weak that probably 0
    bin <= "LLLL";
    wait for clk_period;

    -- weak that probably 1
    bin <= "HHHH";
    wait for clk_period;

    -- mixed others
    bin <= "XZUW";
    wait for clk_period;

    wait;
end process;


end Behavioral;
