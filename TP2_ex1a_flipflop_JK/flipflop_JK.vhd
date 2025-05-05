library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Fonctionnement de la bascule JK

-- J   K      Qn
-- 0   0		   La mémorisation de la dernière valeur de Q
-- 0   1		   Mise à 0
-- 1   0		   Mise à 1
-- 1   1		   Inversion de l'état actuel sur chaque front d'horloge
      
entity flipflop_JK is port (
	J : in std_logic; 
	K : in std_logic; 
	CLK : in std_logic; 
	
	Q : out std_logic; 
	Qn : out std_logic 
);
end flipflop_JK;

architecture behavioral of flipflop_JK is
signal Qi : std_logic;

begin
	process(CLK)
	begin
		if (CLK'event and CLK = '1') then 
			if (J = '0' and K = '0') then
				Qi <= Qi;
			
			elsif (J = '0' and K = '1') then
				Qi <= '0';
			
			elsif (J = '1' and K = '0') then
				Qi <= '1';
			
			elsif (J = '1' and K = '1') then
				Qi <= not(Qi);
			end if;
			
		end if;
	end process;
	
	Q <= Qi;
	Qn <= not(Qi);

end behavioral;