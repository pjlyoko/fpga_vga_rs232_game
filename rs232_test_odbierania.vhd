LIBRARY ieee;
USE ieee.STD_LOGIC_1164.ALL;
 
ENTITY rs232_test_odbierania IS
END rs232_test_odbierania;
 
ARCHITECTURE behavior OF rs232_test_odbierania IS 
   -- Component Declaration for the Unit Under Test (UUT)

   COMPONENT rs232
   PORT(TxDI:      IN  STD_LOGIC_VECTOR(7 downto 0);
        TxStart:   IN  STD_LOGIC;
        Reset:     IN  STD_LOGIC;
        Clk_50MHz: IN  STD_LOGIC;
        RS232_RxD: IN  STD_LOGIC;
        RxRdy:     OUT STD_LOGIC;
        RS232_TxD: OUT STD_LOGIC;
        RxDO:      OUT STD_LOGIC_VECTOR(7 downto 0);
        TxBusy:    OUT STD_LOGIC);
   END COMPONENT;
   
   --Inputs
   signal TxDI:      STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   signal TxStart:   STD_LOGIC                    := '0';
   signal Reset:     STD_LOGIC                    := '0';
   signal Clk_50MHz: STD_LOGIC                    := '0';
   signal RS232_RxD: STD_LOGIC                    := '1'; -- Default line state is HIGH.

   --Outputs
   signal RxRdy:     STD_LOGIC;
   signal RS232_TxD: STD_LOGIC;
   signal RxDO:      STD_LOGIC_VECTOR(7 downto 0);
   signal TxBusy:    STD_LOGIC;

   -- Clock period definitions
   constant Clk_50MHz_period : time := 20 ns;

   constant BIT_CYCLES : positive := 434;
   constant BYTE_CYCLES : positive := 8 * BIT_CYCLES;
   constant BIT_TIME : time := BIT_CYCLES * Clk_50Mhz_period;
   constant BYTE_TIME : time := BYTE_CYCLES * Clk_50Mhz_period;
   
   constant SIM_TIME : time := 5 * BYTE_TIME;
   constant SIM_CYCLES : positive := SIM_TIME / Clk_50MHz_period;
	
BEGIN
   -- Instantiate the Unit Under Test (UUT)
   uut: rs232 PORT MAP (TxDI => TxDI,
                        TxStart => TxStart,
                        Reset => Reset,
                        Clk_50MHz => Clk_50MHz,
                        RS232_RxD => RS232_RxD,
                        RxRdy => RxRdy,
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
		procedure simulate_receiveing(byte: in STD_LOGIC_VECTOR) is
		begin
			RS232_RxD <= '0';
			wait for BIT_TIME;
			for i in byte'REVERSE_RANGE loop
				RS232_RxD <= byte(i);
				wait for BIT_TIME;
			end loop;
			RS232_RxD <= '1';
			wait for 4 * BIT_TIME;
		end procedure;
   begin
      RS232_RxD <= '1';
      
      Reset <= '1';
      wait for BIT_TIME;
      Reset <= '0';
      
      wait for 10 * BIT_TIME; 
      wait for Clk_50MHz_period / 2;
      
		simulate_receiveing("11110000");
		simulate_receiveing("00001111");
      
      wait;
   end process;
END;
