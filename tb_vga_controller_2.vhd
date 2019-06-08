LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_vga_controller_2 IS
END tb_vga_controller_2;
 
ARCHITECTURE behavior OF tb_vga_controller_2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_controller
    PORT(
         color: IN  std_logic_vector(2 downto 0);
         pixel_clk: IN  std_logic;
         row: OUT  std_logic_vector(9 downto 0);
         column: OUT  std_logic_vector(9 downto 0);
         h_sync: OUT  std_logic;
         v_sync: OUT  std_logic;
         vga_r: OUT  std_logic;
         vga_g: OUT  std_logic;
         vga_b: OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal color: std_logic_vector(2 downto 0) := (others => '0');
   signal pixel_clk: std_logic := '0';

 	--Outputs
   signal row: std_logic_vector(9 downto 0);
   signal column: std_logic_vector(9 downto 0);
   signal h_sync: std_logic;
   signal v_sync: std_logic;
   signal vga_r: std_logic;
   signal vga_g: std_logic;
   signal vga_b: std_logic;

   -- Clock period definitions
   constant pixel_clk_period: time := 15.384615384615 ns; -- 65 MHz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_controller PORT MAP (
          color => color,
          pixel_clk => pixel_clk,
          row => row,
          column => column,
          h_sync => h_sync,
          v_sync => v_sync,
          vga_r => vga_r,
          vga_g => vga_g,
          vga_b => vga_b
        );

   pixel_clk <= NOT pixel_clk after pixel_clk_period / 2;
 

   -- Stimulus process
   
   
   color <= "101" when unsigned(row) > 50 and unsigned(row) < 550 and unsigned(column) > 50 and unsigned(row) < 550 else "000";

END;
