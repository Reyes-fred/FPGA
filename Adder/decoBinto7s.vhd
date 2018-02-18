----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:40:45 09/17/2014 
-- Design Name: 
-- Module Name:    decoBinto7s - Behavioral 
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

entity decoBinto7s is
    Port ( dato : in  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (7 downto 0));
end decoBinto7s;

architecture Behavioral of decoBinto7s is

begin
		--"11000000"
		
	salida<= x"C0" when dato= "0000" else --0
		x"F9" when dato= "0001" else --1
		x"A4" when dato= "0010" else --2
		x"B0" when dato= "0011" else --3
		x"99" when dato= "0100" else --4
		x"92" when dato= "0101" else --5
		x"83" when dato= "0110" else --6
		x"F8" when dato= "0111" else --7
		x"80" when dato= "1000" else --8
		x"98" when dato= "1001" else --9
		x"FF"; --Apagado
	
	
end Behavioral;

