library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_full_adder_4bit is
end tb_full_adder_4bit;

architecture behavior of tb_full_adder_4bit is

    -- Composant à tester
    component full_adder_4bit
        port (
            A    : in  std_logic_vector(3 downto 0);
            B    : in  std_logic_vector(3 downto 0);
            Cin  : in  std_logic;
            S    : out std_logic_vector(3 downto 0);
            Cout : out std_logic
        );
    end component;

    -- Signaux de test
    signal A    : std_logic_vector(3 downto 0) := (others => '0');
    signal B    : std_logic_vector(3 downto 0) := (others => '0');
    signal Cin  : std_logic := '0';
    signal S    : std_logic_vector(3 downto 0);
    signal Cout : std_logic;

begin

    -- Instanciation du composant
    uut: full_adder_4bit
        port map (
            A    => A,
            B    => B,
            Cin  => Cin,
            S    => S,
            Cout => Cout
        );

    -- Procédure de test exhaustive
    stim_proc: process
        variable a_int : integer;
        variable b_int : integer;
        variable cin_bit : std_logic;
    begin
        for a_int in 0 to 15 loop
            for b_int in 0 to 15 loop
                for cin_int in 0 to 1 loop
                    -- Affecter les valeurs
                    A    <= std_logic_vector(to_unsigned(a_int, 4));
                    B    <= std_logic_vector(to_unsigned(b_int, 4));
                    Cin  <= std_logic'val(cin_int);
                    wait for 10 ns;
                end loop;
            end loop;
        end loop;
        wait;
    end process;

end behavior;
