--
--	Multiplexador 
--		2 entradas
--		1 saida
--		Barramento de ADDN

library ieee;
use	ieee.std_logic_1164.all;
use	ieee.numeric_std.all;

entity MUX7 is
	generic(DATA_WIDTH : natural := 7);
	port(A, B	: in 	std_logic_vector(DATA_WIDTH-1 downto 0);
		  SEL		: in	std_logic;
		  R		: out std_logic_vector(DATA_WIDTH-1 downto 0)
	);
end entity;

architecture MUX7_arch of MUX7 is

begin

	with SEL select
		R <= A when '1',
			  B when others;

end MUX7_arch;