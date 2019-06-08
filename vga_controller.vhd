library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity vga_controller is
	Generic(
		h_display: INTEGER := 1024; -- szerokość wyświetlania w px
		h_fp: INTEGER := 24;        -- szerokość Front Porch w px
		h_pulse: INTEGER := 136;    -- szerokość pulsu synchr. w px
		h_bp: INTEGER := 160;       -- szerokość Back Porch w px
		h_polarity: STD_LOGIC := '0'; -- polaryzacja na szerokości - 0=n, 1=p
		
		v_display: INTEGER := 768;  -- wysokość wyświetlania w px
		v_fp: INTEGER := 3;         -- wysokość Front Porch w px
		v_pulse: INTEGER := 6;      -- wysokość pulsu synchr. w px
		v_bp: INTEGER := 29;        -- wysokość Back Porch w px
		v_polarity: STD_LOGIC := '0' -- polaryzacja na wysokości - 0=n, 1=p
	);
	Port(
		pixel_clk: in STD_LOGIC;
		disp_enable: out STD_LOGIC := '0';
      row: out STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
      column: out STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
      h_sync: out STD_LOGIC := h_polarity;
      v_sync: out STD_LOGIC := v_polarity
	);
end vga_controller;

architecture Behavioral of vga_controller is
	-- sumaryczna ilość pikseli w wierszu
	constant h_period: INTEGER := h_display + h_fp + h_pulse + h_bp;
	-- sumaryczna ilość pikseli w kolumnie
	constant v_period: INTEGER := v_display + v_fp + v_pulse + v_bp;
begin
	process (pixel_clk)
		-- licznik poziomy
		variable h_count: INTEGER RANGE 0 TO h_period - 1 := 0;
		-- licznik pionowy
		variable v_count: INTEGER RANGE 0 TO v_period - 1 := 0;
	begin
		if(rising_edge(pixel_clk)) then
			-- zwiększanie liczników
			if(h_count < h_period - 1) then
				h_count := h_count + 1;
			else
				h_count := 0;
				if(v_count < v_period - 1) then
					v_count := v_count + 1;
				else
					v_count := 0;
				end if;
			end if;
			
			-- sygnał synchronizacji poziomej
			if(h_count < h_display + h_fp OR h_count >= h_display + h_fp + h_pulse) then
				h_sync <= NOT h_polarity;
			else
				h_sync <= h_polarity;
			end if;
			
			-- sygnał synchronizacji poziomej
			if(v_count < v_display + v_fp OR v_count >= v_display + v_fp + v_pulse) then
				v_sync <= NOT v_polarity;
			else
				v_sync <= v_polarity;
			end if;
			
			-- współrzędne
			if(h_count < h_display) then
				column <= STD_LOGIC_VECTOR(TO_UNSIGNED(h_count, 32));
			end if;
			if(v_count < v_display) then
				row <= STD_LOGIC_VECTOR(TO_UNSIGNED(v_count, 32));
			end if;
			
			-- display enable
			if(h_count < h_display AND v_count < v_display) then
				disp_enable <= '1';
			else
				-- czas blaknięcia
				disp_enable <= '0';
			end if;
			
		end if;
	end process;
	
end Behavioral;

