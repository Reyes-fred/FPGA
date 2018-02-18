----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:28:39 10/27/2014 
-- Design Name: 
-- Module Name:    timer - Behavioral 
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

entity timer is
    Port ( rst 		: in  STD_LOGIC;
           clk100MHz 	: in  STD_LOGIC;
           clk1Hz		: inout  STD_LOGIC;
			  clk200Hz 	: inout  STD_LOGIC);
end timer;

architecture Behavioral of timer is
signal cuenta: integer;
signal i_clk: STD_LOGIC;
signal cuenta2: integer;
signal i_clk2: STD_LOGIC;

begin


process(rst,clk100MHz)
		begin
		--*********reloj de  5Hz 200ms
			if (rst = '1') then cuenta <= 0;
			elsif (rising_edge(clk100MHz)) then
				if (cuenta = 9999999) then  --con reloj de entrada a 100MHz
			--	if (cuenta = 500) then   --si el reloj entrada es 1000HZ
					cuenta <= 0;
					i_clk <= '1';
				else
					cuenta <= cuenta + 1;
					i_clk <= '0';
				end if;
			end if;
	end process;
-- señal de reloj 1 HZ	
process(rst,i_clk)
		begin
			if (rst = '1') then clk1Hz <= '0';
			elsif (rising_edge(i_clk)) then
				clk1Hz <= not clk1Hz;
			end if;
	end process;		

--**********200Hz	 (5ms)	
process(rst,clk100MHz)
		begin
		
			if (rst = '1') then cuenta2 <= 0;
			elsif (rising_edge(clk100MHz)) then
				if (cuenta2 = 249999) then
				--if (cuenta2 = 2) then
					cuenta2 <= 0;
					i_clk2 <= '1';
				else
					cuenta2 <= cuenta2 + 1;
					i_clk2 <= '0';
				end if;
			end if;
	end process;
-- señal de reloj 200 HZ	
process(rst,i_clk2)
		begin
			if (rst = '1') then clk200Hz <= '0';
			elsif (rising_edge(i_clk2)) then
				clk200Hz <= not clk200Hz;
			end if;
	end process;

	
end Behavioral;

