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
    Port ( -- disp_enable : in  STD_LOGIC;
           row : in  std_logic_vector(9 downto 0);
           column : in  std_logic_vector(9 downto 0);
           byte : in std_logic_vector(7 downto 0);
           byte_rdy: in std_logic;
           -- red : out  STD_LOGIC := '0';
           -- green : out  STD_LOGIC := '0';
           -- blue : out  STD_LOGIC := '0'
           color: out std_logic_vector(2 downto 0));
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
-- - (1, 1, 0) - ¿ó³ty
-- - (1, 1, 1) - bia³y

architecture Behavioral of obrazek is
	
begin
	process(row, column)
	begin
		color <= "111";
		
      if(unsigned(row) >= 50 and unsigned(row) <= 718) then
         if(unsigned(column) >= 50 and unsigned(column) <= 974) then
            color <= "011";
            if(byte_rdy = '1') then
               color(2) <= byte(2);
               color(1) <= byte(1);
               color(0) <= byte(0);
            end if;
         end if;
      end if;
	end process;
end Behavioral;

