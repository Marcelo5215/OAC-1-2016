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

	type	mem_array is array(0 to (2**ADDN)-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
	signal mem	:	mem_array := (x"00008020",
											x"00008820",
											x"2231000a",
											x"22100005",
											x"02118825",
											x"02118824",
											x"36310003",
											x"02308827",
											x"32310008",
											x"02309026",
											x"3a52000b",
											x"02519022",
											x"20130000",
											x"ae710000",
											x"ae720004",
											x"8e720000",
											x"8e710004",
											x"0220802a",
											x"2a100000",
											x"001188c2",
											x"001188c0",
											x"001188c3",
											x"20140003",
											x"20080000",
											x"0c00001b",
											x"22940001",
											x"0800001e",
											x"21080001",
											x"1514fffe",
											x"03e00008",
											x"11140002",
											x"21080001",
											x"0800001e",
											x"00000008",
											others=> (others => '0'));

begin

	memout <= mem((to_integer(unsigned(radd)))/4);

end MI_arch;

