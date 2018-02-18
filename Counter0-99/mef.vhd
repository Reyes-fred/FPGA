----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:41:52 10/27/2014 
-- Design Name: 
-- Module Name:    mef - Behavioral 
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

entity mef is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           selector : out  STD_LOGIC;
			  habDisplay : out STD_LOGIC_VECTOR (3 downto 0)
			  );
end mef;

architecture Behavioral of mef is
	type Estados is (s0,s1);

	signal presente, siguiente: Estados;



begin


SYNC_PROC: process (clk,rst)
   begin
		if (rst = '1') then presente <= s0;
		elsif (clk'event and clk = '1') then
         
            presente <= siguiente;
            
      end if;
   end process;
 

NEXT_STATE: process (presente)
   begin
      
      case (presente) is
         when s0 =>
				habDisplay <= "1110";
				selector  <= '0';
				siguiente <= s1;
         when s1 =>
				habDisplay <= "1101";
				selector  <= '1';	
				siguiente <= s0;				
         				
      end case;      
   end process;

end Behavioral;

