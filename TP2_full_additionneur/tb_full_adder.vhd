library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_full_adder is
end tb_full_adder;


architecture tb of tb_full_adder is
	signal A, B, Cin : std_logic;
	signal S, Cout: std_logic;
	
begin
	UUT : entity work.full_adder port map (Cin => Cin, A => A, B => B, S => S, Cout => Cout);
	Count_A : process
		begin
			-- inputs
			-- Case 0 + 0 + 0 = 00
			A <= '0';
			B <= '0';
			Cin <= '0';
			wait for 5ns;
			assert S = '0' report "Sum error in half adder (0 + 0 + 0)" severity error;
			assert Cout = '0' report "Carry error in half adder (0 + 0 + 0)" severity error;
			
			-- Case 0 + 0 + 1 = 10
			A <= '0';
			B <= '0';
			Cin <= '1';
			wait for 5ns;
			assert S = '1' report "Sum error in half adder (0 + 0 + 1)" severity error;
			assert Cout = '0' report "Carry error in half adder (0 + 0 + 1)" severity error;
			
			-- Case 0 + 1 + 0 = 10
			A <= '0';
			B <= '1';
			Cin <= '0';
			wait for 5ns;
			assert S = '1' report "Sum error in half adder (0 + 1 + 0)" severity error;
			assert Cout = '0' report "Carry error in half adder (0 + 1 + 0)" severity error;
			
			-- Case 0 + 1 + 1 = 01
			A <= '0';
			B <= '1';
			Cin <= '1';
			wait for 5ns;
			assert S = '0' report "Sum error in half adder (0 + 1 + 1)" severity error;
			assert Cout = '1' report "Carry error in half adder (0 + 1 + 1)" severity error;
			
			-- Case 1 + 0 + 0 = 10
			A <= '1';
			B <= '0';
			Cin <= '0';
			wait for 5ns;
			assert S = '1' report "Sum error in half adder (1 + 0 + 0)" severity error;
			assert Cout = '0' report "Carry error in half adder (1 + 0 + 0)" severity error;
			
			-- Case 1 + 0 + 1 = 01
			A <= '1';
			B <= '0';
			Cin <= '1';
			wait for 5ns;
			assert S = '0' report "Sum error in half adder (1 + 0 + 1)" severity error;
			assert Cout = '1' report "Carry error in half adder (1 + 0 + 1)" severity error;
			
			-- Case 1 + 1 + 0 = 01
			A <= '1';
			B <= '1';
			Cin <= '0';
			wait for 5ns;
			assert S = '0' report "Sum error in half adder (1 + 1 + 0)" severity error;
			assert Cout = '1' report "Carry error in half adder (1 + 1 + 0)" severity error;
			
			-- Case 1+ 1 + 1 = 11
			A <= '1';
			B <= '1';
			Cin <= '1';
			wait for 5ns;
			assert S = '1' report "Sum error in half adder (1 + 1 + 1)" severity error;
			assert Cout = '1' report "Carry error in half adder (1 + 1 + 1)" severity error;
			wait;
	end process;
end tb ;