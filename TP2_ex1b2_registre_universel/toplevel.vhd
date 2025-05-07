library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
	port (
		LEDG : out std_logic_vector(7 downto 0);
		SW : in std_logic_vector(9 downto 0);
		KEY : in std_logic_vector(3 downto 0)
	);
end entity;

architecture behavioral of toplevel is 
begin 
	
	instance_shift_register_universal8 : entity work.shift_register_universal8 port map(
		SSL => SW(8),
		SSR => SW(9),
		SEL => SW(2 downto 0),
		RSTn	=> KEY(3),
		SETn => KEY(2),
		CLK => not(KEY(0)),
		Qo => LEDG(7 downto 0),
		Pi => "00000000",
		SOL => OPEN,
		SOR => OPEN
	);

end architecture;