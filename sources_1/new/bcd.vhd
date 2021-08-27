library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd is
  Port ( 
    bin: in STD_LOGIC_VECTOR(3 downto 0);
    dec: out STD_LOGIC_VECTOR(6 downto 0)
  );
end bcd;

architecture Behavioral of bcd is

begin
    process(bin)
    begin
        case bin is
                                 -- abcdefg
            when "0000" =>	dec <= "1111110";   -- #0 off G 
	        when "0001" =>	dec <= "0000110";   -- #1 on e,f
	        when "0010" =>	dec <= "1101101";   -- #2 off c,f
	        when "0011" =>	dec <= "1111001";   -- #3 off e,f
	        when "0100" =>	dec <= "0110011";   -- #4 off a,d,e
	        when "0101" =>	dec <= "1011011";   -- #5 off b,e
	        when "0110" =>	dec <= "1011111";   -- #6 off b
	        when "0111" =>	dec <= "1110000";   -- #7 on a,b,c
	        when "1000" =>	dec <= "1111111";   -- #8 on all
	        when "1001" =>	dec <= "1111011";   -- #9 off e
	        when "1010" =>	dec <= "1110111";   -- #10(A) off d
	        when "1011" =>	dec <= "0011111";   -- #11(b) off a,b
	        when "1100" =>	dec <= "1001110";   -- #12(C) off b,c,g
	        when "1101" =>	dec <= "0111101";   -- #13(D) off a,f
	        when "1110" =>	dec <= "1001111";   -- #14(E) off b,c
	        when "1111" =>	dec <= "1000111";   -- #15(F) off b,c,d
	        when others =>	dec <= "0000000";   -- otherwise, turns everything off
	end case;
    end process;

end Behavioral;
