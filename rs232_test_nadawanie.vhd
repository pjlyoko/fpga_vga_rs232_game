--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:01:17 05/10/2019
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/ucisw2_vga_v03/ucisw2_vga/rs232_test_nadawanie.vhd
-- Project Name:  ucisw2_vga
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rs232
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY rs232_test_nadawanie IS
END rs232_test_nadawanie;
 
ARCHITECTURE behavior OF rs232_test_nadawanie IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rs232
    PORT(
         TxDI : IN  std_logic_vector(7 downto 0);
         TxStart : IN  std_logic;
         Reset : IN  std_logic;
         Clk_50MHz : IN  std_logic;
         RS232_RxD : IN  std_logic;
         RxRDY : OUT  std_logic;
         RS232_TxD : OUT  std_logic;
         RxDO : OUT  std_logic_vector(7 downto 0);
         TxBusy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk_50MHz : std_logic := '0';
   signal Reset : std_logic := '0';
   signal TxDI : std_logic_vector(7 downto 0) := (others => '0');
   signal TxStart : std_logic := '0';
   signal RS232_RxD : std_logic := '0';

 	--Outputs
   signal RS232_TxD : std_logic;
   signal RxDO : std_logic_vector(7 downto 0);
   signal TxBusy : std_logic;
   signal RxRDY : std_logic;

   -- Clock period definitions
   constant Clk_50MHz_period : time := 20 ns;

   constant BIT_CYCLES : positive := 434;
   constant BYTE_CYCLES : positive := 10 * BIT_CYCLES;
   constant BIT_TIME : time := BIT_CYCLES * Clk_50Mhz_period;
   constant BYTE_TIME : time := BYTE_CYCLES * Clk_50Mhz_period;
   
   constant SIM_TIME : time := 3 * BYTE_TIME;
   constant SIM_CYCLES : positive := SIM_TIME / Clk_50MHz_period;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rs232 PORT MAP (
          TxDI => TxDI,
          TxStart => TxStart,
          Reset => Reset,
          Clk_50MHz => Clk_50MHz,
          RS232_RxD => RS232_RxD,
          RxRDY => RxRDY,
          RS232_TxD => RS232_TxD,
          RxDO => RxDO,
          TxBusy => TxBusy
        );
   
   clk_proc : process
   begin		
     for i in 1 to SIM_CYCLES loop
       Clk_50MHz <= '0';
       wait for Clk_50MHz_period / 2;
       Clk_50MHz <= '1';
       wait for Clk_50MHz_period / 2;
     end loop;
     wait;
   end process;

   -- Stimulus process
   stim_proc: process
   begin
      TxStart <= '0';
      RS232_RxD <= '0';
      TxDI <= x"12";

      Reset <= '1';
      wait for 100 ns;	
      Reset <= '0';

      wait for Clk_50MHz_period;

      TxStart <= '1';
      wait for Clk_50MHz_period;
      TxStart <= '0';

      wait for BIT_TIME;

      wait until TxBusy = '0';
      
      wait for BIT_TIME;

      TxDI <= x"21";
      TxStart <= '1';
      wait for Clk_50MHz_period;
      TxStart <= '0';

      wait;
   end process;

END;
