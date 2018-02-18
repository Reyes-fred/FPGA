library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Deco2a7V2 is
    Port ( dato : in  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (7 downto 0)
          );
end Deco2a7V2;

architecture Behavioral of Deco2a7V2 is

begin

   with dato select
      salida <= x"C0" when "0000",
                x"F9" when "0001",
					 x"A4" when "0010", --2
					 x"B0" when "0011", --3
					 x"99" when "0100", --4
					 x"92" when "0101", --5
					 x"82" when "0110", --6
					 x"F8" when "0111", --7
					 x"80" when "1000", --8
					 x"90" when "1001", --9
					 x"FF" when others; --A,B,C,D,E,F
	
						
end Behavioral;
