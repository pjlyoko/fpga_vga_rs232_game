library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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
   subtype t_color  is STD_LOGIC_VECTOR(2 downto 0);
   subtype t_button is STD_LOGIC_VECTOR(1 downto 0);
	
   -- Player: 200 x 50 px, white, 7px/frame
   signal player_x: integer range 0 to 824 := 0;
   
   -- Enemy: 160 x 160 px, red, 3px/frame
	signal enemy_1_x: integer range 0 to 864 := 300;
	signal enemy_1_y: integer range 0 to 608 := 0;
   
   -- Bullet: 40 x 40 px, yellow, 9px/frame
   signal bullet_x: integer range 0 to 983 := 0;
   signal bullet_y: integer range 0 to 728 := 728;
	
	constant COLOR_WHITE:   t_color := "111";
	constant COLOR_RED:     t_color := "100";
	constant COLOR_YELLOW:  t_color := "110";
   constant COLOR_NEUTRAL: t_color := "011";
   
   constant BUTTON_LEFT:   t_button := "10";
   constant BUTTON_RIGHT:  t_button := "01";
   constant BUTTON_SHOOT:  t_button := "11";
   
   constant BULLET_PX_PER_FRAME: integer := 9;
   constant PLAYER_PX_PER_FRAME: integer := 7;
   constant ENEMY_PX_PER_FRAME:  integer := 3;
   
   signal bullet_shot: STD_LOGIC := '0';
begin
	recalculate: process(newFrame)
	begin
		if(rising_edge(newFrame)) then
			if(button = BUTTON_LEFT) then
            if(player_x > 0) then
               player_x <= player_x - PLAYER_PX_PER_FRAME;
            end if;
			elsif(button = BUTTON_RIGHT) then
            if(player_x < 824) then
               player_x <= player_x + PLAYER_PX_PER_FRAME;
            end if;
			elsif(button = BUTTON_SHOOT) then
            bullet_shot <= '1';
         end if;
         
         if(bullet_y <= 20) then
            bullet_shot <= '0';
         end if;
         
         if(bullet_shot = '0') then
            bullet_y <= 718;
            bullet_x <= player_x + 80;
         else
            bullet_y <= bullet_y - BULLET_PX_PER_FRAME;
            
            if(bullet_x >= enemy_1_x and bullet_x <= enemy_1_x + 160 and bullet_y >= enemy_1_y and bullet_y <= enemy_1_y + 160) then
               enemy_1_y <= 0;
               bullet_shot <= '0';
               bullet_y <= 718;
            end if;
         end if;
			
			enemy_1_y <= enemy_1_y + ENEMY_PX_PER_FRAME;
         if(enemy_1_y = 768) then
            enemy_1_y <= 0;
            enemy_1_x <= enemy_1_x + 20;
         end if;
		end if;
	end process;
	
	output: process(row, column, reset, player_x, enemy_1_x, enemy_1_y, bullet_shot, bullet_x, bullet_y)
	begin
      if(reset = '1') then
         color <= COLOR_NEUTRAL;
      else			
			-- Gracz
			if(unsigned(column) >= player_x and unsigned(column) <= player_x + 200 and unsigned(row) >= 718 and unsigned(row) <= 768) then
            color <= COLOR_WHITE;
         
         -- Przeciwnik 1
         elsif(unsigned(column) >= enemy_1_x and unsigned(column) <= enemy_1_x + 160 and unsigned(row) >= enemy_1_y and unsigned(row) <= enemy_1_y + 160) then
            color <= COLOR_RED;
            
         -- Pocisk
         elsif(unsigned(column) >= bullet_x and unsigned(column) <= bullet_x + 40 and unsigned(row) >= bullet_y and unsigned(row) <= bullet_y + 40) then
            color <= COLOR_YELLOW;
         
         else
            color <= COLOR_NEUTRAL;
         end if;
      end if;
   end process;
end Behavioral;

