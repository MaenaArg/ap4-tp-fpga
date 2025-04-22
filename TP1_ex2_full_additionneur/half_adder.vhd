-- Rappelez les opérations logiques du permettant de calculer 𝑆 et 𝐶 en fonction de 𝐴 et 𝐵:
  -- La somme sur la sortie "S" se calcule par l'utilisation d'un OU EXCLUSIF entre les entrées A et B
  -- La retenue sur la sortie "C" est obtenu par l'utilisation d'un ET entre les entrées A et B



library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity half_adder is
	port (
	--configuration des entrée A et B
		A : in std_logic;
		B : in std_logic;
	--configuration des sorties somme et retenu
		S : out std_logic;
		C : out std_logic
	);
end half_adder;


architecture functionnal of half_adder is
begin
	s <= (a xor b);--calcul de la somme entre A et B
	c <= (a and b);--calcul de la retenu entre A et B
end architecture;
