library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity obrazek is
    Port ( disp_enable : in  STD_LOGIC;
           row : in  std_logic_vector(31 downto 0);
           column : in  std_logic_vector(31 downto 0);
           red : out  STD_LOGIC := '0';
           green : out  STD_LOGIC := '0';
           blue : out  STD_LOGIC := '0');
end obrazek;

-- ------------------------------------
-- Wspierane kolory (R, G, B)
-- ------------------------------------
-- - (0, 0, 0) - czarny
-- - (0, 0, 1) - niebieski
-- - (0, 1, 0) - zielony
-- - (0, 1, 1) - cyan
-- - (1, 0, 0) - czerwony
-- - (1, 0, 1) - magenta
-- - (1, 1, 0) - żółty
-- - (1, 1, 1) - biały

architecture Behavioral of obrazek is
	
begin
	process(row, column)
	begin
		red <= '0';
		green <= '0';
		blue <= '0';
		
		if(disp_enable = '1') then
			if(unsigned(row) >= 50 and unsigned(row) <= 718) then
				if(unsigned(column) >= 50 and unsigned(column) <= 974) then
					red <= '1';
					green <= '0';
					blue <= '1';
				end if;
			end if;
		end if;
	end process;
end Behavioral;

