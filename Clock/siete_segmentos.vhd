
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 
entity siete_segmentos is
    PORT (
        entrada: IN  STD_LOGIC_VECTOR(5 downto 0);
        salida : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
end siete_segmentos;
 
architecture Behavioral of siete_segmentos is
begin
    visualizador: process (entrada) begin
        case entrada is
            when "000000" =>  salida <= x"C0"; -- 0
            when "000001" =>  salida <= x"F9"; -- 1
            when "000010" =>  salida <= x"A4"; -- 2
            when "000011" =>  salida <= x"B0"; -- 3
            when "000100" =>  salida <= x"99"; -- 4
            when "000101" =>  salida <= x"92"; -- 5
            when "000110" =>  salida <= x"82"; -- 6
            when "000111" =>  salida <= x"F8"; -- 7
            when "001000" =>  salida <= x"80"; -- 8
            when "001001" =>  salida <= x"98"; -- 9
            
            when others   =>  salida <= x"FF"; -- Nada
        end case;
    end process;
end Behavioral;