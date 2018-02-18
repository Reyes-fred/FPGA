----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:43:59 10/29/2014 
-- Design Name: 
-- Module Name:    Contador_top - Behavioral 
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

entity Contador_top is
    Port (     reset : in  STD_LOGIC;
           clk100MHz : in  STD_LOGIC;
            selector : in  STD_LOGIC;
			habiDisplay : out  STD_LOGIC_VECTOR (3 downto 0);
			   segmentos: out  STD_LOGIC_VECTOR (7 downto 0));
end Contador_top;

architecture Behavioral of Contador_top is
component Timer is
    Port ( 		 rst : in     STD_LOGIC;
           clk50MHz : in     STD_LOGIC;
             clk1Hz : inout  STD_LOGIC;
			  clk200Hz : inout  STD_LOGIC
				 );
end component;

component Mux2x1 is
    Port ( E0 : in  STD_LOGIC;
           E1 : in  STD_LOGIC;
           mux : out  STD_LOGIC;
           sel : in  STD_LOGIC);
end component;

component mef is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Deco2a7V2 is
    Port ( dato : in  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (7 downto 0)
          );
end component;

signal alclk1Hz, alclk200Hz, almux: STD_LOGIC;
signal cableQ: STD_LOGIC_VECTOR (3 downto 0);
signal cableDecoder: STD_LOGIC_VECTOR (3 downto 0);

begin
  habiDisplay <= "0101";
--cableDecoder <= "00" & cableQ;
CI1: Timer port map(reset, clk100MHZ, alclk1Hz, alclk200Hz);
CI2: Mux2x1 port map(alclk200Hz,alclk1Hz,almux, selector);
CI3: mef port map(reset,almux, cableQ);
CI4: Deco2a7V2 port map(cableQ,segmentos);
end Behavioral;

