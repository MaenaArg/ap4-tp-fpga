-- Rappelez les opérations logiques du permettant de calculer S et Cout en fonction de A, B et Cin:
  -- Etape 1 : Faire la somme de A et B avec une porte OU EXCLUSIF ->(A xor B)
  -- Etape 2 : Faire la somme de (A xor B) et Cin avec une porte OU EXCLUSIF -> ((A xor B) xor Cin)
  -- La sortie S est donc égale au résultat de ((A xor B) xor Cin)
  
  -- Etape 3 : On prend la sortie de A xor B qui passe dans une porte ET avec Cin ((A xor B) . C)
  -- Etape 4 : On prend la retenue de (A . B)
  -- Etape 5 : On prend les résultats de (A . B) et ((A xor B) . C) que l'on passe dans une porte OU
  -- La sortie de la retenue Cout est dont égale au résultat de ((A xor B). Cin) + (A . B)
  
-- Cin A	 B		S	Cout
-- 0	 0	 0		0	0
-- 0	 0	 1		0	1
-- 0	 1	 0		0	1
-- 0	 1	 1		1	0
-- 1	 0	 0		0	1
-- 1	 0	 1		1	0
-- 1	 1	 0		1	0
-- 1	 1	 1		1	1

library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity full_adder is
	port (
	--configuration des entrée A et B
		A : in std_logic;
		B : in std_logic;
		Cin : in std_logic;
	--configuration des sorties somme et retenu
		S : out std_logic;
		Cout : out std_logic
	);
end full_adder;

architecture functionnal of full_adder is
signal S_half_1 : std_logic;
signal C_half_1 : std_logic;
signal C_half_2 : std_logic;

begin
	half_1 : entity work.half_adder port map (
	A => A,
	B => B,
	S => S_half_1,
	C => C_half_1
	);
	
	half_2 : entity work.half_adder port map (
	A => S_half_1,
	B => Cin,
	S => S,
	C => C_half_2
	);
	
	Cout <= C_half_1 or C_half_2;
end architecture;

--architecture functionnal of full_adder is
--begin
--	S <= ((A xor B) xor Cin) ; --calcul de la somme entre A, B et Cin
--	Cout <= ((A xor B)and Cin) or (A and B); --calcul de la retenu entre A, B et Cin
--end architecture;
