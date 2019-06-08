----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:29:47 05/10/2019 
-- Design Name: 
-- Module Name:    rs232 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rs232 is
    Generic ( cykle_na_bit: integer := 434 );
    Port ( TxDI:        in  STD_LOGIC_VECTOR (7 downto 0);
           TxStart:     in  STD_LOGIC;
           Reset:       in  STD_LOGIC;
           Clk_50MHz:   in  STD_LOGIC;
           RS232_RxD:   in  STD_LOGIC;
           RxRdy:       out  STD_LOGIC := '0';
           RS232_TxD:   out  STD_LOGIC := '1';
           RxDO:        out  STD_LOGIC_VECTOR (0 to 7);
           TxBusy:      out  STD_LOGIC);
end rs232;

architecture Behavioral of rs232 is
   signal transmitowany_bajt: std_logic_vector (7 downto 0);
   
   type stany_transmisji is (st_gotowy, st_bit_startu, st_dane, st_bit_stopu);
   signal stan_transmisji:        stany_transmisji := st_gotowy;
   signal stan_odbioru:           stany_transmisji := st_gotowy;
   signal stan_transmisji_odbior: stany_transmisji := st_gotowy;
   
   signal licznik_taktow: integer range 0 to cykle_na_bit := 0;
   signal licznik_bitow:  integer range 0 to 7            := 0;
   
   signal licznik_taktow_odbior: integer range 0 to cykle_na_bit := 0;
   signal licznik_bitow_odbior:  integer range 0 to 7            := 0;
	
	signal RS232_RxD_stable_pre: STD_LOGIC;
	signal RS232_RxD_stable: STD_LOGIC;
begin
	RS232_RxD_stable_pre <= RS232_RxD;
	RS232_RxD_stable <= RS232_RxD_stable_pre;
	
   nadawanie: process(Clk_50MHz, Reset)
   begin
      if(reset = '1') then
         stan_transmisji <= st_gotowy;
         RS232_TxD <= '1';
         TxBusy <= '0';
         licznik_taktow <= 0;
         licznik_bitow <= 0;
      elsif(rising_edge(Clk_50MHz)) then
         
         case stan_transmisji is
            when st_gotowy =>
               if(TxStart = '1') then
                  TxBusy <= '1';
                  transmitowany_bajt <= TxDI;
                  stan_transmisji <= st_bit_startu;
               else
                  TxBusy <= '0';
               end if;
            when st_bit_startu =>
               if(licznik_taktow < cykle_na_bit - 1) then
                  RS232_TxD <= '0';
                  licznik_taktow <= licznik_taktow + 1;
               else
                  licznik_taktow <= 0;
                  stan_transmisji <= st_dane;
               end if;
            when st_dane =>
               RS232_TxD <= transmitowany_bajt(licznik_bitow);
               if(licznik_taktow < cykle_na_bit - 1) then
                  licznik_taktow <= licznik_taktow + 1;
               else
                  if(licznik_bitow < 7) then
                     licznik_bitow <= licznik_bitow + 1;
                     licznik_taktow <= 0;
                  else
                     licznik_bitow <= 0;
                     licznik_taktow <= 0;
                     stan_transmisji <= st_bit_stopu;
                  end if;
               end if;
            when st_bit_stopu =>
               RS232_TxD <= '1';
               if(licznik_taktow < cykle_na_bit - 1) then
                  licznik_taktow <= licznik_taktow + 1;
               else
                  licznik_taktow <= 0;
                  stan_transmisji <= st_gotowy;
               end if;
            when others =>
               stan_transmisji <= st_gotowy;
         end case;

      end if;
   end process;
   
   odbieranie: process(Clk_50MHz, Reset)
   begin
      if(Reset = '1') then
         stan_transmisji_odbior <= st_gotowy;
         RxRDY <= '1';
         licznik_taktow_odbior <= 0;
         licznik_bitow_odbior <= 0;
         RxDO <= (others => '0');
      elsif(rising_edge(Clk_50MHz)) then
      
         case stan_transmisji_odbior is
            when st_gotowy =>
               RxRDY <= '1'; -- Powinien by jednotaktowy.
               if RS232_RxD_stable = '0' then --TODO: Naprawi metastabilno.
                  stan_transmisji_odbior <= st_bit_startu;
                  licznik_taktow_odbior <= 0;
                  licznik_bitow_odbior <= 0;
               end if;
               
               
            when st_bit_startu =>
               RxRDY <= '0';
               if(licznik_taktow_odbior < cykle_na_bit / 2) then
                  licznik_taktow_odbior <= licznik_taktow_odbior + 1;
               else
                  if RS232_RxD_stable = '0' then 
							licznik_taktow_odbior <= 0;
							stan_transmisji_odbior <= st_dane;
						end if;
               end if;
               
               
            when st_dane =>                  
               if(licznik_taktow_odbior < cykle_na_bit - 1) then
                  licznik_taktow_odbior <= licznik_taktow_odbior + 1;
               else
						RxDO(licznik_bitow_odbior) <= RS232_RxD_stable;
                  licznik_bitow_odbior <= licznik_bitow_odbior + 1;
						licznik_taktow_odbior <= 0;
						
						if(licznik_bitow_odbior = 7) then
							licznik_bitow_odbior <= 0;
							stan_transmisji_odbior <= st_bit_stopu;
						end if;
					end if;
					
            when st_bit_stopu =>
               if(licznik_taktow_odbior < cykle_na_bit) then
                  licznik_taktow_odbior <= licznik_taktow_odbior + 1;
               else
                  licznik_taktow_odbior <= 0;
                  stan_transmisji_odbior <= st_gotowy;
                  RxRDY <= '1';
               end if;
            when others =>
               stan_transmisji_odbior <= st_gotowy;
         end case;
      
      end if;
   end process;

end Behavioral;

