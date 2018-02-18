----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:14:51 10/22/2014 
-- Design Name: 
-- Module Name:    FFT - Behavioral 
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

entity FFT is
    Port ( t : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end FFT;

architecture Behavioral of FFT is

begin

	process(clk)
	begin
		if(clk'event and clk='1')--Si la transición fue de subida
			then 
				q <= not t;
			end if;
	end process;


end Behavioral;

