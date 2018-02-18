----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:49:33 10/29/2014 
-- Design Name: 
-- Module Name:    Mux2x1 - Behavioral 
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

entity Mux2x1 is
    Port ( E0 : in  STD_LOGIC;
           E1 : in  STD_LOGIC;
           mux : out  STD_LOGIC;
           sel : in  STD_LOGIC);
end Mux2x1;

architecture Behavioral of Mux2x1 is

begin
   mux <= E0 when sel = '0' else
			 E1;

end Behavioral;

