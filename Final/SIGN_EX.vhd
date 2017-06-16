--
--	Signal extend
--		Faz a extensao de sinal do imediato de 16 bits
--

library ieee;
use	ieee.std_logic_1164.all;
use	ieee.numeric_std.all;

entity SIGN_EX is
	generic(DATA_WIDTH : natural := 32);
	port(Nin		:	in std_logic_vector(15 downto 0);	--Numero de 16 bits (imediato)
		  Nout	:	out std_logic_vector(DATA_WIDTH-1 downto 0) --Imediato com sinal extendido
		  );

end entity SIGN_EX;

architecture SIGN_EX_arch of SIGN_EX is
	
	signal sign : std_logic_vector(15 downto 0);

begin

	with Nin(15) select 
		Nout <= X"0000" & Nin	when '0',
				  X"FFFF" & Nin	when '1';
	
end SIGN_EX_arch;