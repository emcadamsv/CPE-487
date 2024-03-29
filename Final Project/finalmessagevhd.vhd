LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY finalmessage IS
	PORT (
		dig : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		data : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		anode : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		seg : OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
	);
END finalmessage;

ARCHITECTURE Behavioral OF finalmessage IS
BEGIN
	-- Turn on segments corresponding to 4-bit data word
	seg <= "0001000" WHEN data = "0000" ELSE -- A
	       "1001000" WHEN data = "0001" ELSE -- H
	       "0000000" WHEN data = "0010" ELSE 
	       "0000000" WHEN data = "0011" ELSE 
	       "0000000" WHEN data = "0100" ELSE 
	       "0000000" WHEN data = "0101" ELSE 
	       "0000000" WHEN data = "0110" ELSE 
	       "0000000" WHEN data = "0111" ELSE 
	       "0000000" WHEN data = "1000" ELSE 
	       "0000000" WHEN data = "1001" ELSE 
	       "0000000" WHEN data = "1010" ELSE 
	       "0000000" WHEN data = "1011" ELSE 
	       "0000000" WHEN data = "1100" ELSE 
	       "0000000" WHEN data = "1101" ELSE 
	       "0000000" WHEN data = "1110" ELSE  
	       "0000000" WHEN data = "1111" ELSE  
	       "0000000";
	-- Turn on anode of 7-segment display addressed by 3-bit digit selector dig
	anode <= "00000000" WHEN dig = "000" ELSE 
	         "00000000" WHEN dig = "001" ELSE 
	         "11111011" WHEN dig = "010" ELSE
	         "11111111" WHEN dig = "011" ELSE 
	         "11111111" WHEN dig = "100" ELSE 
	         "11111111" WHEN dig = "101" ELSE 
	         "11111111" WHEN dig = "110" ELSE 
	         "11111111" WHEN dig = "111" ELSE 
	         "11111111";
END Behavioral;
