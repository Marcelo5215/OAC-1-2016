--
--Memoria de dados
--		Escreve e le da memoria
--		Escreve apenas se writ estiver em nivel alto e a cada
--		batida do clock
--

library ieee;
use	ieee.std_logic_1164.all;
use	ieee.numeric_std.all;

entity MD is
	generic(ADDN : natural := 7; 
			  DATA_WIDTH : natural := 32);
	port(clk		:	in std_logic;
		  writ	:	in std_logic;	--writ = 1 escreve na memoria
		  add		:	in std_logic_vector(ADDN-1 downto 0);
		  show	:  in std_logic_vector(ADDN-1 downto 0);
		  memin	:	in std_logic_vector(DATA_WIDTH-1 downto 0);
		  memout	:	out std_logic_vector(DATA_WIDTH-1 downto 0);
		  memShow:	out std_logic_vector(DATA_WIDTH-1 downto 0)
	);

end entity;

architecture MD_arch of MD is

	type	mem_array is array (0 to (2**ADDN-1)) of std_logic_vector(DATA_WIDTH-1 downto 0);
	signal mem	:	mem_array := (others => (others =>'1')
	);

begin
	process (clk, add, writ)
	begin
		if(rising_edge(clk)) then
			if((writ = '1')) then
				mem(((to_integer(unsigned(add))))/4) <=  memin;
			else
				memout <= mem(((to_integer(unsigned(add))))/4);
			end if;
		end if;
	end process;

	memShow <= mem(to_integer(unsigned(show)));
	
end MD_arch;