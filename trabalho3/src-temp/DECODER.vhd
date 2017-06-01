--
-- N bit Decoder 
--		N = ADDRESS_WIDTH
--		Usually N = 5
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity DECODER is
	generic(ADDRESS_WIDTH:	natural	:=	5	);	
	port(input	:	in std_logic_vector(ADDRESS_WIDTH-1 downto 0);
		  output	:	out	std_logic_vector((2**ADDRESS_WIDTH)-1 downto 0));
end entity DECODER;


architecture DECODER_arch of DECODER is

begin
	--Uma Possibiliadade de solucao
	--output <= std_logic_vector(to_unsigned(1,(2**ADDRESS_WIDTH)) sll to_integer(unsigned(input)));
	
	--Outra mais pratica
	output <= (others => '0');
	output(to_integer(unsigned(input))) <= '1';
	
end DECODER_arch;