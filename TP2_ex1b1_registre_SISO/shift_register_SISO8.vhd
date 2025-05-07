library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Fonctionnement  d'un registre à décalage
-- Ensemble de bascules synchrones reliées une à une, la sortie de l'une est reliée à l'entrée de la suivante.

entity shift_register_SISO8 is port (
	Si : in std_logic; 
	CLK : in std_logic; 
	SETn : in std_logic;  -- met tous les bits à 1 quand il est actif, càd égal à "0"
	RSTn : in std_logic;  -- met le registre à 0 quand il est actif, càd égal à "0"
	
	So : out std_logic
);
end shift_register_SISO8;

architecture behavioral of shift_register_SISO8 is
	signal shift_register : std_logic_vector(7 downto 0);

begin
	process(CLK, RSTn, SETn)
		begin
			if (RSTn = '0') then
            shift_register <= "00000000";  -- reset
				
				elsif (SETn = '0') then
					shift_register <= "11111111";  -- preset
						
				elsif rising_edge(CLK) then
					shift_register <= Si & shift_register(7 downto 1); -- décalage à droite
				
        end if;
    end process;

    So <= shift_register(0); -- bit le plus à droite
end Behavioral;
