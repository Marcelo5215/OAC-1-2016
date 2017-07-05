--
--	Multiplexador 
--		2 entradas
--		1 saida
--		Barramento de ADDN

library ieee;
use	ieee.std_logic_1164.all;
use	ieee.numeric_std.all;

entity MUX5 is
	generic(DATA_WIDTH : natural := 5);
	port(A, B	: in 	std_logic_vector(DATA_WIDTH-1 downto 0);
		  SEL		: in	std_logic;
		  R		: out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end entity;

architecture MUX5_arch of MUX5 is

begin

	with SEL select
		R <= A when '1',
			  B when others;

end MUX5_arch;