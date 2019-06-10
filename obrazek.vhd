library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity obrazek is
    Port (reset:    in  STD_LOGIC;
          row:      in  STD_LOGIC_VECTOR(9 downto 0);
          column:   in  STD_LOGIC_VECTOR(9 downto 0);
          newFrame: in  STD_LOGIC;
          button:   in  STD_LOGIC_VECTOR(1 downto 0);
          color:    out STD_LOGIC_VECTOR(2 downto 0));
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
   subtype t_color            is STD_LOGIC_VECTOR(2 downto 0);
   subtype t_button           is STD_LOGIC_VECTOR(1 downto 0);

   constant PLAYER_WIDTH:        INTEGER := 200;
   constant PLAYER_HEIGHT:       INTEGER := 50;
   constant PLAYER_PX_PER_FRAME: INTEGER := 7;

   constant ENEMY_WIDTH:         INTEGER := 160;
   constant ENEMY_HEIGHT:        INTEGER := 160;
   constant ENEMY_PX_PER_FRAME:  INTEGER := 3;

   constant BULLET_WIDTH:        INTEGER := 40;
   constant BULLET_HEIGHT:       INTEGER := 40;
   constant BULLET_PX_PER_FRAME: INTEGER := 9;

   constant SCREEN_WIDTH:        INTEGER := 1024;
   constant SCREEN_HEIGHT:       INTEGER := 768;
   
   -- Player: 200 x 50 px, white, 7px/frame
   signal player_x:  INTEGER range 0 to (SCREEN_WIDTH - PLAYER_WIDTH) := 0;
   
   -- Enemy: 160 x 160 px, red, 3px/frame
   signal enemy_1_x: INTEGER range 0 to (SCREEN_WIDTH - ENEMY_WIDTH)   := 0;
   signal enemy_1_y: INTEGER range 0 to (SCREEN_HEIGHT - ENEMY_HEIGHT) := 0;
   
   -- Bullet: 40 x 40 px, yellow, 9px/frame
   signal bullet_x:  INTEGER range 0 to (SCREEN_WIDTH - BULLET_WIDTH - 1) := 0;
   signal bullet_y:  INTEGER range 0 to (SCREEN_HEIGHT - BULLET_HEIGHT) := (SCREEN_HEIGHT - BULLET_HEIGHT);
   
   -- Used colors
   constant COLOR_WHITE:   t_color := "111";
   constant COLOR_RED:     t_color := "100";
   constant COLOR_YELLOW:  t_color := "110";
   constant COLOR_NEUTRAL: t_color := "011";
   
   -- Buttons received
   constant BUTTON_LEFT:   t_button := "10";
   constant BUTTON_RIGHT:  t_button := "01";
   constant BUTTON_SHOOT:  t_button := "11";
   
   signal bullet_shot: STD_LOGIC := '0';
	
	signal u_column: INTEGER range 0 to SCREEN_WIDTH := 0;
	signal u_row:    INTEGER range 0 to SCREEN_HEIGHT := 0;
begin
   recalculate: process(newFrame, reset)
   begin
      if(reset = '1') then
         player_x <= 0;
         enemy_1_x <= 0;
         enemy_1_y <= 0;
         bullet_x <= 0;
         bullet_y <= SCREEN_HEIGHT - BULLET_HEIGHT;
         bullet_shot <= '0';

      -- Przeliczenie pozycji obiektów na ekranie
      elsif(rising_edge(newFrame)) then
         if(button = BUTTON_LEFT) then
            if(player_x > 0) then
               player_x <= player_x - PLAYER_PX_PER_FRAME;
            end if;

         elsif(button = BUTTON_RIGHT) then
            if(player_x < (SCREEN_WIDTH - PLAYER_WIDTH)) then
               player_x <= player_x + PLAYER_PX_PER_FRAME;
            end if;

         elsif(button = BUTTON_SHOOT) then
            bullet_shot <= '1';
         end if;
         

         if(bullet_y <= (BULLET_HEIGHT / 2)) then
            bullet_shot <= '0';
         end if;
         

         if(bullet_shot = '0') then
            bullet_y <= SCREEN_HEIGHT - BULLET_HEIGHT;
            bullet_x <= player_x + (PLAYER_WIDTH / 2) - (BULLET_WIDTH / 2);
         
         else
            bullet_y <= bullet_y - BULLET_PX_PER_FRAME;
            
            if(bullet_x >= enemy_1_x
               and bullet_x <= enemy_1_x + ENEMY_WIDTH 
					and bullet_y >= enemy_1_y 
					and bullet_y <= enemy_1_y + ENEMY_HEIGHT) 
            then
               enemy_1_y <= 0;
               bullet_shot <= '0';
               bullet_y <= SCREEN_HEIGHT - BULLET_HEIGHT;
            end if;
         end if;
         
         enemy_1_y <= enemy_1_y + ENEMY_PX_PER_FRAME;
         
         if(enemy_1_y = SCREEN_HEIGHT) then
            enemy_1_y <= 0;
            enemy_1_x <= enemy_1_x + 20;
         end if;
      end if;
   end process;
   
   output: process(row, column, reset, player_x, enemy_1_x, enemy_1_y, bullet_shot, bullet_x, bullet_y)
   begin
		u_column <= to_integer(unsigned(column));
		u_row    <= to_integer(unsigned(row));
			
      if(reset = '1') then
         color <= COLOR_NEUTRAL;
      else
         -- Gracz
         if(u_column >= player_x 
				and u_column <= player_x + PLAYER_WIDTH 
				and u_row >= (SCREEN_HEIGHT - PLAYER_HEIGHT) 
				and u_row <= SCREEN_HEIGHT) 
         then
            color <= COLOR_WHITE;
         
         -- Przeciwnik 1
         elsif(u_column >= enemy_1_x 
				   and u_column <= enemy_1_x + ENEMY_WIDTH 
					and u_row >= enemy_1_y 
					and u_row <= enemy_1_y + ENEMY_HEIGHT) 
         then
            color <= COLOR_RED;
            
         -- Pocisk
         elsif(u_column >= bullet_x 
					and u_column <= bullet_x + BULLET_WIDTH 
					and u_row >= bullet_y 
					and u_row <= bullet_y + BULLET_HEIGHT) 
         then
            color <= COLOR_YELLOW;
         
         else
            color <= COLOR_NEUTRAL;
         end if;
      end if;
   end process;
end Behavioral;

