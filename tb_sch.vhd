-- Vhdl test bench created from schematic /home/przemek/Desktop/ucisw2_vga/ucisw2_vga/schematic.sch - Mon Apr 15 22:13:12 2019
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY schematic_schematic_sch_tb IS
END schematic_schematic_sch_tb;
ARCHITECTURE behavioral OF schematic_schematic_sch_tb IS 

   COMPONENT schematic
   PORT( Clk_50MHz	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL Clk_50MHz	:	STD_LOGIC := '0';
	-- Clock period definitions
   constant clk_period : time := 20 ns; -- 50 MHz
BEGIN

   UUT: schematic PORT MAP(
		Clk_50MHz => Clk_50MHz
   );

	Clk_50MHz <= NOT Clk_50MHz after clk_period / 2;

END;
