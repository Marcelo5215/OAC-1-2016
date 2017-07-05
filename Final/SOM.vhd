--
--Somador de 32 Bits 
--		Considera A e B como unsigned por que sera usado
--		apenas para operar com enderecos de 7 bits no caso
--
--		R = A + B

library	ieee;
use	ieee.std_logic_1164.all;
use	ieee.std_logic_arith.all;

entity SOM is
	generic(DATA_WIDTH : natural := 7);
	port(A, B	: in	std_logic_vector(DATA_WIDTH-1 downto 0);
		  R		: out std_logic_vector(DATA_WIDTH-1 downto 0)
	);

end entity;

architecture SOM_arch of SOM is

begin
	
	R <= (unsigned(A) + unsigned(B));

end SOM_arch;