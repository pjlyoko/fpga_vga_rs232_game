-- Rejestr o sprzężeniu liniowym
-- Na podstawie J. Majewski, P. Zbysiński "Układy FPGA w przykładach"

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rng is
    Port (Clk_50MHz: in     STD_LOGIC;
			 reset:     in     STD_LOGIC;
          random:    inout  STD_LOGIC_VECTOR (9 downto 0) := (others => '0'));
end rng;

architecture Behavioral of rng is
begin
	process
	begin
		if(reset = '1') then
			random <= (others => '0');
		elsif(rising_edge(Clk_50MHz)) then
			random(9 downto 1) <= random(8 downto 0);
			random(0)          <= not(random(9) XOR random(8) XOR random(7) XOR random(2));
		end if;
	end process;
end Behavioral;

