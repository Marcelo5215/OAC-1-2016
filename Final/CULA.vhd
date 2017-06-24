--
-- Unidade de Controle da ULA
--		Utiliza o OpCode da unidade de controle e o campo Funct da intrucao
--		para determinar qual operaao  a ula ira realizar
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CULA is
	port( Op	:	in std_logic_vector(1 downto 0);
			funct	: in std_logic_vector(5 downto 0);
			ulaop	:	out std_logic_vector(3 downto 0)
	);
end entity;

architecture CULA_ARCH of CULA is

begin


end CULA_ARCH;