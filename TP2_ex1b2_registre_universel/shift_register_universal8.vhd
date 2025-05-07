library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_register_universal8 is port (
	SSR : in std_logic; 
	SSL : in std_logic; 
	Pi : in std_logic_vector(7 downto 0); 
	SEL : in std_logic_vector(2 downto 0); 
	CLK : in std_logic; 
	SETn : in std_logic;  -- met tous les bits à 1 quand il est actif, càd égal à "0"
	RSTn : in std_logic;  -- met le registre à 0 quand il est actif, càd égal à "0"
	
	SOR : out std_logic;
	SOL : out std_logic;
	Qo : out std_logic_vector(7 downto 0)
);
end shift_register_universal8;

architecture behavioral of shift_register_universal8 is
	 signal shift_register : std_logic_vector(7 downto 0);

begin
	process(CLK, RSTn, SETn)
		begin
			if (RSTn = '0') then
				shift_register <= "00000000";  -- reset
				
			elsif (SETn = '0') then
				shift_register <= "11111111";  -- preset
					
			elsif rising_edge(CLK) then
			
				-- Mémoire
				if (SEL = "000" or SEL = "100") then
	            shift_register <= shift_register;		
				
				-- Chargement parallèle
				elsif (SEL = "011" or SEL = "111") then
					shift_register <= Pi;
						
				-- Décalage à droite		
				elsif (SEL = "001") then	
					shift_register <= SSR & shift_register(7 downto 1); -- décalage à droite de 1
				
				-- Décalage à gauche
				elsif (SEL = "010") then
					shift_register <= shift_register(6 downto 0) & SSL;  -- décalage à gauche de 1 
				
				-- Rotation à droite
				elsif (SEL = "101") then
					shift_register <= shift_register(0) & shift_register(7 downto 1);
				
				-- Rotation à gauche
				elsif (SEL = "110") then
					shift_register <= shift_register(6 downto 0) & shift_register(7);
					
				end if;
			end if;
   end process;
	SOL <= shift_register(7);
	SOR <= shift_register(0);
	Qo <= shift_register;
end behavioral;