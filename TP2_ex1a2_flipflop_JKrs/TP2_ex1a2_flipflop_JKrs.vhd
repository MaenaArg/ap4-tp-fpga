--Fonctionnement Basscule JK asynchrone
--| SETn | RSTn | J | K || Q+ |
--+------+------+---+---++----+
--|   1  |  1   | 0 | 0 || Q  |
--|   1  |  1   | 0 | 1 || 0  | 
--|   1  |  1   | 1 | 0 || 1  |
--|   1  |  1   | 1 | 1 || Q* |
--+------+------+---+---++----+
--|   1  |  0   | X | X || 0  |
--|   0  |  1   | X | X || 1  |
--+------+------+---+---++----+


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TP2_ex1a2_flipflop_JKrs is port (
	J : in std_logic; 
	K : in std_logic; 
	SETn : in std_logic;
	RSTn : in std_logic;	
	CLK : in std_logic;
	
	Q : out std_logic; 
	Qn : out std_logic 
);
end TP2_ex1a2_flipflop_JKrs;

architecture behavioral of TP2_ex1a2_flipflop_JKrs is
signal Qi : std_logic;

begin
	process(CLK, SETn, RSTn)
	begin
		-- Verification de SET et RESET
		if(SETn = '0' and RSTn = '1') then
			Qi <= '1';
			
		elsif(SETn = '1' and RSTn = '0') then
			Qi <= '0';
		-- VERIFICATION DE LA CLOCK	
		elsif(CLK'event and CLK ='1') then
		
			if(J = '0' and K ='0') then      --J=K=0
				Qi<=Qi;
				
			elsif (J = '0' and K = '1') then --J=0//K=1
				Qi <= '0';
			
			elsif (J = '1' and K = '0') then --J=1//K=0
				Qi <= '1';
			
			elsif (J = '1' and K = '1') then --J=1//K=1
				Qi <= not(Qi);
			end if;	
		
		end if;
	end process;
	
	Q <= Qi;
	Qn <= not(Qi);
	
end behavioral;