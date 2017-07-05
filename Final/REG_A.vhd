--
--	REG PC E RA
--		registradorees que nao precisam de acesso de controle
--
--

library ieee;
use ieee.std_logic_1164.all;

entity REG_A is
	generic(ADDN	:	natural	:=	7);
	port(enable	:	in	std_logic;
		  data			:	in std_logic_vector(ADDN-1 downto 0);
		  dataout		:	out std_logic_vector(ADDN-1 downto 0));
end entity REG_A;

architecture REG_A_arch of REG_A is

begin
	process (enable)
	begin
		if enable = '1' then
			dataout <= data;
		end if;
	end process;
	


end REG_A_arch;