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
	process (Op,funct)
		variable maskfunct : std_logic_VECTOR (5 downto 0);
	begin
		--case (Op)
		if (Op = "00") then
		ulaop <= "0010"; --ADD
		elsif (Op = "01") then
		ulaop <= "0011"; --SUB
		elsif (Op = "10") then
			case(funct) is
				when "100000" => ulaop <= "0010"; --ADD
				when "100010" => ulaop <= "0011"; --SUB
				when "100100" => ulaop <= "0000"; --AND
				when "100101" => ulaop <= "0001"; --OR
				when "100110" => ulaop <= "0110"; --XOR
				when "100111" => ulaop <= "0101"; --NOR
				when "000010" => ulaop <= "1000"; --SRL
				when "000011" => ulaop <= "1001"; --SRA
				when "000000" => ulaop <= "0111"; --SLL
				when "101010" => ulaop <= "0100"; --SLT
				when others => ulaop <= "0000";
			end case;
		end if;
	end process;
end CULA_ARCH;