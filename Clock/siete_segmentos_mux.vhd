
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity siete_segmentos_mux is
    PORT (
        clk   : IN  STD_LOGIC;
        reset : IN  STD_LOGIC;
        D0    : IN  STD_LOGIC_VECTOR(5 downto 0);  --Primer d�gito.
        D1    : IN  STD_LOGIC_VECTOR(5 downto 0);  --Segundo d�gito.
        D2    : IN  STD_LOGIC_VECTOR(5 downto 0);  --Tercer d�gito.
        D3    : IN  STD_LOGIC_VECTOR(5 downto 0);  --Cuarto d�gito.
        salida: OUT STD_LOGIC_VECTOR(5 downto 0);  --Salida del multiplexor (valor a desplegar).
        MUX   : OUT STD_LOGIC_VECTOR(3 downto 0)   --Valor que define cual d�gito se va a mostrar.
    );
end siete_segmentos_mux;
 
architecture Behavioral of siete_segmentos_mux is
    type estados is (rst, v0, v1, v2, v3);
    signal estado : estados;
begin
    visualizadores: process (reset, clk) begin
        if (reset = '1') then
            estado <= rst;
            MUX <= x"F";
            salida <= "111111";
        elsif rising_edge(clk) then
            case estado is
                when v0 =>
                    salida <= D3;
                    MUX <= "1110";
                    estado <= v1;
                when v1 =>
                    salida <= D2;
                    MUX <= "1101";
                    estado <= v2;
                when v2 =>
                    salida <= D1;
                    MUX <= "1011";
                    estado <= v3;
                when others =>
                    salida <= D0;
                    MUX <= "0111";
                    estado <= v0;
            end case;
        end if;
    end process;
end Behavioral;