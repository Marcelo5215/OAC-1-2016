--
-- Unidade de Controle
--		
--
--
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CU is
	port( opcode : in std_logic_vector(5 downto 0);
			regDst	:	out std_logic
			--ainda falta varios sinais de controle
			);
end entity;

architecture CU_ARCH of CU is

begin


end CU_ARCH;