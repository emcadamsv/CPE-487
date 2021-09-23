--code from VHDL Wiz, "https://vhdlwhiz.com/std_logic_vector/", to be used with gtkwave, EM

library ieee;
use ieee.std_logic_1164.all;
 --opens the mandatory libraries, EM
 
entity T11_StdLogicVectorTb is
end entity;
 
architecture sim of T11_StdLogicVectorTb is --The goal of this architecture is to show the different ways to set values for vectors, EM
 
    signal Slv1 : std_logic_vector(7 downto 0);
    signal Slv2 : std_logic_vector(7 downto 0) := (others => '0');
    signal Slv3 : std_logic_vector(7 downto 0) := (others => '1');
    signal Slv4 : std_logic_vector(7 downto 0) := x"AA";
    signal Slv5 : std_logic_vector(0 to 7)     := "10101010";
    signal Slv6 : std_logic_vector(7 downto 0) := "00000001";
 
begin
 
    -- Shift register
    process is
    begin
 
        wait for 10 ns;
 
        for i in Slv6'left downto Slv6'right + 1 loop
            Slv6(i) <= Slv6(i-1); 
        end loop;
 
        Slv6(Slv6'right) <= Slv6(Slv6'left); --Creates a feedback loop where the register will move down until it hits 0, where it will be moved to 7 again, EM
 
    end process;
 
end architecture;