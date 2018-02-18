----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:42:26 10/29/2014 
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
    Port ( reset : in  STD_LOGIC;
           clk100MHz : in  STD_LOGIC;
          -- selector : in  STD_LOGIC;
			  habiDisplay: out  STD_LOGIC_VECTOR (3 downto 0);  --habilita q display se usan
           segmentos : out  STD_LOGIC_VECTOR (7 downto 0));
end Contador_top;

architecture Behavioral of Contador_top is

component Timer is
	Port ( rst 		: in  STD_LOGIC;
           clk100MHz 	: in  STD_LOGIC;
           clk1Hz		: inout  STD_LOGIC;
			  clk200Hz 	: inout  STD_LOGIC );
end component;

component mef is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           selector : out  STD_LOGIC;
			  habDisplay : out STD_LOGIC_VECTOR (3 downto 0)
			  );
end component;

component Mux2x1 is
	Port ( E0 : in  STD_LOGIC_VECTOR (3 downto 0);
           E1 : in  STD_LOGIC_VECTOR (3 downto 0);
           mux : out  STD_LOGIC_VECTOR (3 downto 0);
           sel : in  STD_LOGIC
			  );
end component;

component decodificadorBCD is
    Port ( dato : in  STD_LOGIC_VECTOR (3 downto 0);
           salida : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end component;

component cotadormef is
    Port ( rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
           salClk : out  STD_LOGIC
			  );
end component;

component contadormefDecenas is
    Port ( rst1 : in  STD_LOGIC;
           clk1 : in  STD_LOGIC;
           Q1 : out  STD_LOGIC_VECTOR (3 downto 0);
           salClk1 : out  STD_LOGIC
			  );
end component;

signal alclk1Hz, alclk200Hz,alsel,alsalClk: STD_LOGIC;
signal cableQ, cableQ1, almux: STD_LOGIC_VECTOR (3 downto 0);
--signal cableDecoder: STD_LOGIC_VECTOR (3 downto 0);

begin
	-- los segemntos se encienden con 0

	-- cableDecoder <= cableQ;
CI1: Timer port map(reset,clk100Mhz,alclk1Hz,alclk200Hz);
CI2: cotadormef port map(reset,alclk1Hz,cableQ,alsalClk);
CI3: cotadormef port map(reset,alsalClk,cableQ1);
CI4: Mux2x1 port map (cableQ,cableQ1,almux, alsel);
CI5: decodificadorBCD port map (almux,segmentos);
CI6: mef port map (reset,alclk200Hz,alsel,habiDisplay);


end Behavioral;

