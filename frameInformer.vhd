----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:41:28 06/07/2019 
-- Design Name: 
-- Module Name:    frameInformer - Behavioral 
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

entity frameInformer is
	Generic ( cykle_na_ramke: integer := 1666667 );
   Port (Clk_50MHz: in  STD_LOGIC;
			Byte_Rdy:  in  STD_LOGIC;
			ByteIn:    in  STD_LOGIC_VECTOR(7 downto 0);
			Reset:     in  STD_LOGIC;
         newFrame:  out STD_LOGIC := '0';
			button:    out STD_LOGIC_VECTOR(1 downto 0) := "00");
end frameInformer;

architecture Behavioral of frameInformer is
	signal licznik_taktow: integer range 0 to cykle_na_ramke := 0;
begin
	
	liczenie: process(Clk_50MHz, Reset)
	begin
		if(Reset = '1') then
         licznik_taktow <= 0;
         newFrame <= '0';
      elsif(rising_edge(Clk_50MHz)) then
			if(licznik_taktow = 0) then
				licznik_taktow <= licznik_taktow + 1;
				newFrame <= '0';
			elsif(licznik_taktow < cykle_na_ramke - 1) then
				licznik_taktow <= licznik_taktow + 1;
			else
				newFrame <= '1';
				licznik_taktow <= 0;
			end if;
		end if;
	end process;

end Behavioral;

