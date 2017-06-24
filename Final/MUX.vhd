--
--	Multiplexador 
--		2 entradas
--		1 saida
--		Barramento de DATA_WIDTH

library ieee;
use	ieee.std_logic_1164.all;
use	ieee.numeric_std.all;

entity MUX is
	generic(DATA_WIDTH : natural := 32);
	port(A, B	: in 	std_logic_vector(DATA_WIDTH-1 downto 0);
		  SEL		: in	std_logic;
		  R		: out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end entity;

architecture MUX_arch of MUX is

begin

	with SEL select
		R <= A when '1',
			  B when others;

end MUX_arch;