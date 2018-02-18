----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:30:27 10/27/2014 
-- Design Name: 
-- Module Name:    Timer - Behavioral 
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

entity Timer is
    Port ( 		 rst : in     STD_LOGIC;
           clk50MHz : in     STD_LOGIC;
             clk1Hz : inout  STD_LOGIC;
			  clk200Hz : inout  STD_LOGIC
				 );
end Timer;

architecture Behavioral of Timer is
signal cuenta,cuenta2: integer;
signal i_clk,i_clk2: STD_LOGIC;

begin
 process(rst, clk50MHz )	
  begin
	if (rst='1') then cuenta <= 0;
	elsif (rising_edge(clk50MHz)) then
	  if (cuenta = 25000000) then
	    cuenta <= 0;
	    i_clk <= '1';
	  else 
	    cuenta <= cuenta + 1;
	    i_clk <= '0';
	  end if;
	end if;
 end process;

--señal de Reloj de 1 Hz
process(rst, i_clk)	
  begin
	if (rst = '1') then 
    	    clk1Hz <= '0';
	elsif (rising_edge(i_clk)) then
	    clk1Hz <= not clk1Hz;
	end if;
  end process;

--******************************************
--         200 Hz (5 ms)

 process(rst, clk50MHz )	
  begin
	if (rst='1') then cuenta2 <= 0;
	elsif (rising_edge(clk50MHz)) then
	  if (cuenta2 = 10000000) then
	    cuenta2 <= 0;
	    i_clk2 <= '1';
	  else 
	    cuenta2 <= cuenta2 + 1;
	    i_clk2 <= '0';
	  end if;
	end if;
 end process;

--señal de Reloj de 1 Hz
process(rst, i_clk2)	
  begin
	if (rst = '1') then 
    	    clk200Hz <= '0';
	elsif (rising_edge(i_clk2)) then
	    clk200Hz <= not clk200Hz;
	end if;
  end process;
end Behavioral;

