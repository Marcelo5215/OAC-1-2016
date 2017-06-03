--	Banco de Registradores
--		clk 	-> clock
-- 	raddX -> read address(registrador a ser lido)
--		wren	->	enable para escrita dos registradores
--		wadd	->	write address (registrador da escrita)
--		rdataX	->	valor lido do registrador como saida

library	ieee;
use	ieee.std_logic_1164.all;
use	ieee.numeric_std.all;
use ieee.math_real.all;

entity REG_BANK is

generic(DATA_WIDTH	:	natural	:=	32;
		  ADDRESS_WIDTH:	natural	:=	5	);

port (clk, wren			:	in std_logic;
		radd1, radd2, wadd:	in	std_logic_vector(ADDRESS_WIDTH-1	downto 0);
		wdata					:	in	std_logic_vector(DATA_WIDTH-1	downto 0);
		rdata1, rdata2		:	out std_logic_vector(DATA_WIDTH-1	downto 0));
end entity REG_BANK;

architecture REG_BANK_arch of REG_BANK is

	type	bank is array(NATURAL range <>) of std_logic_vector(DATA_WIDTH-1	downto 0);
	signal reg	:	bank((2**ADDRESS_WIDTH)-1 to 0);
	signal zero_add	:	std_logic_vector(ADDRESS_WIDTH-1	downto 0);
	signal zero	:	std_logic_vector(DATA_WIDTH-1	downto 0);

begin

	zero_add <= std_logic_vector(to_unsigned(0,(ADDRESS_WIDTH)));
	zero <= std_logic_vector(to_unsigned(0,(DATA_WIDTH)));
	reg(0) <= zero;

	process(rising_edge(clk))

	begin

		if(wren = '1' and wadd /= zero_add) then
			reg(to_integer(unsigned(wadd))) <= wdata;
		end if;

		rdata1 <= reg(to_integer(unsigned(radd1)));
		rdata2 <= reg(to_integer(unsigned(radd2)));

	end process;



end REG_BANK_arch;
