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
			ctrula	:	out std_logic_vector(3 downto 0)
	);
end entity;

architecture CULA_ARCH of CULA is

begin
	
	begin
	process (Op,funct)
	variable maskfunct : std_logic_VECTOR (5 downto 0);
	begin
	maskfunct := funct and "001111";
	--case (Op)
		if (Op = "00") then
			ctrula <= ULA_ADD; 
		elsif (Op = "01") then
			ctrula <= ULA_SUB; 
		elsif (Op = "10") then
			case(maskfunct) is
				when "000000" => ctrula <= ULA_ADD;
				when "000010" => ctrula <= ULA_SUB;
				when "000100" => ctrula <= ULA_AND;
				when "000101" => ctrula <= ULA_OR;
				when "001010" => ctrula <= ULA_SLT;
				when others => ctrula <= ULA_UKW;
			end case;
		end if;
end process;

end CULA_ARCH;