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
    Port ( reset:    in  std_logic;
           row:      in  std_logic_vector(9 downto 0);
           column:   in  std_logic_vector(9 downto 0);
			  newFrame: in  std_logic;
			  button:   in  std_logic_vector(1 downto 0);
           color:    out std_logic_vector(2 downto 0));
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
-- - (1, 1, 0) - ty
-- - (1, 1, 1) - biay

architecture Behavioral of obrazek is
	signal player_x: integer range 0 to 824 := 0;
	signal enemy_1_x: integer range 0 to 824 := 300;
	signal enemy_1_y: integer range 0 to 768 := 0;
	
	constant COLOR_WHITE:  STD_LOGIC_VECTOR(2 downto 0) := "111";
	constant COLOR_RED:    STD_LOGIC_VECTOR(2 downto 0) := "100";
	constant COLOR_YELLOW: STD_LOGIC_VECTOR(2 downto 0) := "110";
begin
	recalculate: process(newFrame)
	begin
		if(rising_edge(newFrame)) then
			if(button = "01") then
				player_x <= player_x + 7;
			elsif(button = "10") then
				player_x <= player_x - 7;
			end if;
			
			enemy_1_y <= enemy_1_y + 3;
		end if;
	end process;
	
	output: process(row, column, reset)
	begin
      if(reset = '1') then
         color <= "111";
      else
         color <= "111";
			
			-- Gracz
			if(unsigned(row) >= player_x and unsigned(row) <= player_x + 200) then
				if(unsigned(column) >= 718 and unsigned(column) <= 768) then
					color <= COLOR_WHITE;
				end if;
			
			-- Przeciwnik 1
			elsif(unsigned(row) >= enemy_1_x and unsigned(row) <= enemy_1_x + 160) then
				if(unsigned(column) >= enemy_1_y and unsigned(column) <= enemy_1_y + 160) then
					color <= COLOR_RED;
				end if;
			
			elsif(unsigned(row) >= 50 and unsigned(row) <= 718) then
            if(unsigned(column) >= 50 and unsigned(column) <= 974) then
               color <= "011";
               --if(byte_rdy = '1') then
               --   color(2) <= byte(2);
               --   color(1) <= byte(1);
               --   color(0) <= byte(0);
               --end if;
            end if;
         end if;
      end if;
   end process;
end Behavioral;

