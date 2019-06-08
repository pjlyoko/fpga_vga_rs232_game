LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_vga_controller IS
END tb_vga_controller;
 
ARCHITECTURE behavior OF tb_vga_controller IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_controller
    PORT(
         pixel_clk : IN  std_logic;
         disp_enable : OUT  std_logic;
         row : OUT  std_logic_vector(31 downto 0);
         column : OUT  std_logic_vector(31 downto 0);
         h_sync : OUT  std_logic;
         v_sync : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal pixel_clk : std_logic := '0';

 	--Outputs
   signal disp_enable : std_logic;
   signal row : std_logic_vector(31 downto 0);
   signal column : std_logic_vector(31 downto 0);
   signal h_sync : std_logic;
   signal v_sync : std_logic;

   -- Clock period definitions
   constant pixel_clk_period : time := 15.384615384615 ns; -- 65 MHz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_controller PORT MAP (
          pixel_clk => pixel_clk,
          disp_enable => disp_enable,
          row => row,
          column => column,
          h_sync => h_sync,
          v_sync => v_sync
        );

	pixel_clk <= NOT pixel_clk after pixel_clk_period / 2;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      --wait for 100 ns;	

      --wait for pixel_clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
