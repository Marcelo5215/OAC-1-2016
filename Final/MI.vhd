--
-- Memoria de Instrucoes
--		Apenas leitura das intruç~oes armazenadas nela
--

library ieee;
use	ieee.std_logic_1164.all;
use	ieee.numeric_std.all;

entity MI is
	generic(ADDN : natural := 7; 
			  DATA_WIDTH : natural := 32);
	port(radd	:	in std_logic_vector(ADDN-1 downto 0);	--Endereco a ser lido
		  memout	:	out std_logic_vector(DATA_WIDTH-1 downto 0)	--Instrucao contida no endereco
	);

end entity;

architecture MI_arch of MI is

	type	mem_array is array(NATURAL range <>) of std_logic_vector(DATA_WIDTH-1 downto 0);
	signal mem	:	mem_array((2**ADDN)-1 downto 0);

begin

	memout <= mem(to_integer(unsigned(radd)));

end MI_arch;