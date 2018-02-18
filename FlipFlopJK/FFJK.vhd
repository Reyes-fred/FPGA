----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:24:25 10/22/2014 
-- Design Name: 
-- Module Name:    FFJK - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FFJK is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : inout  STD_LOGIC;
			  rst: in STD_LOGIC
			  );
end FFJK;

architecture Behavioral of FFJK is

begin

	process(clk,rst)
	begin
		if(rst='1')--Si la transición fue de subida
			then q<='0';
			elsif (clk'event and clk='1')
				then
					if(j='0' and k='0')
						then q<=q;
					elsif(j='0' and k='1')
						then q<='0';
					elsif(j='1' and k='0')
						then q<='1';
					else q<=not q; 
					
				end if;
		end if;
			
	end process;


end Behavioral;

