library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder8bits is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           C : out STD_LOGIC_VECTOR (7 downto 0));
end adder8bits;

architecture Behavioral of adder8bits is
begin
    C <= STD_LOGIC_VECTOR(SIGNED(A) + SIGNED(B));
end Behavioral;
