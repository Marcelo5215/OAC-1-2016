--
-- N bit REGISTER
--		N = DATA_WIDTH
--		DTA_WIDTH = 32 by default

library ieee;
use ieee.std_logic_1164.all;

entity REG is
	generic(DATA_WIDTH	:	natural	:=	32);
	port(clk, enable	:	in	std_logic;
		  data:	in std_logic_vector(DATA_WIDTH-1 downto 0);
		  dataout	:	out std_logic_vector(DATA_WIDTH-1 downto 0));
end entity REG;

architecture REG_arch of REG is

begin
	process (rising_edge(clk))
	begin
		if enable = '1' then
			dataout <= data;
		end if;
	end process;


end REG_arch;