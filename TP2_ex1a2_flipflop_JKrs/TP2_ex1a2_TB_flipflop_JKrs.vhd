library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity TP2_ex1a2_TB_flipflop_JKrs is
end TP2_ex1a2_TB_flipflop_JKrs;

architecture testbench of TP2_ex1a2_TB_flipflop_JKrs is
    signal J, K, SETn, RSTn, CLK : std_logic;
    signal Q, Qn : std_logic;
    
    component TP2_ex1a2_flipflop_JKrs
        port (
            J : in std_logic; 
            K : in std_logic; 
            SETn : in std_logic;
            RSTn : in std_logic;    
            CLK : in std_logic;
            Q : out std_logic; 
            Qn : out std_logic 
        );
    end component;
    
begin
    UUT: TP2_ex1a2_flipflop_JKrs
        port map (
            J => J,
            K => K,
            SETn => SETn,
            RSTn => RSTn,
            CLK => CLK,
            Q => Q,
            Qn => Qn
        );
    


    CLK_process: process
    begin
        CLK <= '0';
        wait for 5 ns;
        CLK <= '1';
        wait for 5 ns;
    end process;

	 
	 
    stimulus: process
    begin
        SETn <= '1';
        RSTn <= '0';
        J <= '0';
        K <= '0';
        
        wait for 10 ns;
        SETn <= '0'; RSTn <= '1'; -- Set
        wait for 10 ns;
        SETn <= '1'; RSTn <= '0'; -- Reset
        wait for 10 ns;
        SETn <= '1'; RSTn <= '1'; J <= '0'; K <= '0'; -- J=0, K=0
        wait for 10 ns;
        J <= '0'; K <= '1'; -- J=0, K=1
        wait for 10 ns;
        J <= '1'; K <= '0'; -- J=1, K=0
        wait for 10 ns;
        J <= '1'; K <= '1'; -- J=1, K=1
        wait for 10 ns;
        SETn <= '0'; RSTn <= '0'; 
        wait for 10 ns;
        SETn <= '1'; RSTn <= '1'; 
        
        wait;
    end process;
end testbench;
