LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;
 
ENTITY rs232_test_nadawanie IS
END rs232_test_nadawanie;
 
ARCHITECTURE behavior OF rs232_test_nadawanie IS 
   -- Component Declaration for the Unit Under Test (UUT)
   COMPONENT rs232
   PORT(TxDI:      in  STD_LOGIC_VECTOR(7 downto 0);
        TxStart:   in  STD_LOGIC;
        Reset:     in  STD_LOGIC;
        Clk_50MHz: in  STD_LOGIC;
        RS232_RxD: in  STD_LOGIC;
        RxRDY:     out STD_LOGIC;
        RS232_TxD: out STD_LOGIC;
        RxDO:      out STD_LOGIC_VECTOR(7 downto 0);
        TxBusy:    out STD_LOGIC);
   END COMPONENT;
   
   --Inputs
   signal TxDI:      STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal Clk_50MHz: STD_LOGIC                    := '0';
   signal Reset:     STD_LOGIC                    := '0';
   signal TxStart:   STD_LOGIC                    := '0';
   signal RS232_RxD: STD_LOGIC                    := '0';

   --Outputs
   signal RS232_TxD: STD_LOGIC;
   signal RxDO:      STD_LOGIC_VECTOR(7 downto 0);
   signal TxBusy:    STD_LOGIC;
   signal RxRDY:     STD_LOGIC;

   -- Clock period definitions
   constant Clk_50MHz_period: TIME     := 20 ns;

   constant BIT_CYCLES:       POSITIVE := 434;
   constant BYTE_CYCLES:      POSITIVE := 10 * BIT_CYCLES;
   constant BIT_TIME:         TIME     := BIT_CYCLES * Clk_50Mhz_period;
   constant BYTE_TIME:        TIME     := BYTE_CYCLES * Clk_50Mhz_period;

   constant SIM_TIME:         TIME     := 3 * BYTE_TIME;
   constant SIM_CYCLES:       POSITIVE := SIM_TIME / Clk_50MHz_period;
   
BEGIN
   -- Instantiate the Unit Under Test (UUT)
   uut: rs232 PORT MAP (TxDI => TxDI,
                        TxStart => TxStart,
                        Reset => Reset,
                        Clk_50MHz => Clk_50MHz,
                        RS232_RxD => RS232_RxD,
                        RxRDY => RxRDY,
                        RS232_TxD => RS232_TxD,
                        RxDO => RxDO,
                        TxBusy => TxBusy);
   
   clk_proc: process
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
