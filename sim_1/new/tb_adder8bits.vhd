----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.03.2021 19:42:48
-- Design Name: 
-- Module Name: tb_adder8bits - Behavioral
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

entity tb_adder8bits is
--  Port ( );
end tb_adder8bits;

architecture Behavioral of tb_adder8bits is

component adder8bits is
  PORT (
    A : in STD_LOGIC_VECTOR (7 downto 0);
    B : in STD_LOGIC_VECTOR (7 downto 0);
    C : out STD_LOGIC_VECTOR (7 downto 0)
  );
end component;

signal A : STD_LOGIC_VECTOR (7 downto 0);
signal B : STD_LOGIC_VECTOR (7 downto 0);
signal C : STD_LOGIC_VECTOR (7 downto 0);
constant clk_period: time := 25ns;

begin 

adder8bits1: adder8bits 
    Port map ( A => A,
               B => B,
               C => C
              );

process 
begin
    wait for clk_period;
    
    for i in 0 to 255 loop
        A <= STD_LOGIC_VECTOR(to_unsigned(i, 8));
        for j in 0 to 255 loop
            B <= STD_LOGIC_VECTOR(to_unsigned(j, 8));    
            wait for clk_period/5;
        end loop;
    end loop;
    
    wait;
end process;



end Behavioral;
