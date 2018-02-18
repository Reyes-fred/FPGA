----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:52:37 11/07/2014 
-- Design Name: 
-- Module Name:    cotadormef - Behavioral 
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

entity cotadormef is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
           salClk : out  STD_LOGIC);
end cotadormef;

architecture Behavioral of cotadormef is
	type Estados is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9);

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
				Q <= "0000";
				salClk <= '1';
				siguiente <= s1;
         when s1 =>
				Q <= "0001";	
				salClk <= '0';				
				siguiente <= s2;				
          when s2 =>
				Q <= "0010";
				salClk <= '0';
				siguiente <= s3;
         when s3 =>
				Q <= "0011";
				salClk <= '0';				
				siguiente <= s4;				
         when s4 =>
				Q <= "0100";
				salClk <= '0';
				siguiente <= s5;
         when s5 =>
				Q <= "0101";
				salClk <= '0';				
				siguiente <= s6;				
          when s6 =>
				Q <= "0110";
				salClk <= '0';				
				siguiente <= s7;
         when s7 =>
				Q <= "0111";
				salClk <= '0';				
				siguiente <= s8;
          when s8 =>
				Q <= "1000";
				salClk <= '0';
				siguiente <= s9;
         when s9 =>
				Q <= "1001";	
				
				siguiente <= s0;	
				salClk <= '0';				
      end case;      
   end process;

end Behavioral;

