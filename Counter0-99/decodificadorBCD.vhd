----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:05 09/24/2014 
-- Design Name: 
-- Module Name:    decodificadorBCD - Behavioral 
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

entity decodificadorBCD is
    Port ( dato : in  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (7 downto 0));
end decodificadorBCD;

architecture Behavioral of decodificadorBCD is 

begin

-- convertidor BCD a 7 segmentos
	salida <=
	X"C0" WHEN dato = "0000" else  --0
	X"F9" WHEN dato = "0001" else  --1
	X"A4" WHEN dato = "0010" else  --2
	X"B0" WHEN dato = "0011" else  --3
	X"99" WHEN dato = "0100" else  --4
	X"92" WHEN dato = "0101" else  --5
	X"82" WHEN dato = "0110" else  --6
	X"F8" WHEN dato = "0111" else  --7
	X"80" WHEN dato = "1000" else  --8
	X"98" WHEN dato = "1001" else  --9
	-- X"CO" WHEN dato = "0000" else  --a
	-- X"CO" WHEN dato = "0000" else  --b
	-- X"CO" WHEN dato = "0000" else  --c
	-- X"CO" WHEN dato = "0000" else  --d
	-- X"CO" WHEN dato = "0000" else  --e
	-- X"CO" WHEN dato = "0000" else  --f  
	X"FF";
	
	
	


end Behavioral;

