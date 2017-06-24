--
--MIPS - UNICICLO
--
--
--	@author - Marcelo de Araujo Lopes
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;


entity MIPS_UNICYCLE is
	generic(DATA_WIDTH	:	natural	:=	32;
			  ADDRESS_WIDTH:	natural	:=	5;
			  ADDN : natural := 7);

end entity;

architecture MIPS_UNICYCLE_ARCH of MIPS_UNICYCLE is

	component REG_BANK is
		port (clk, wren			:	in std_logic;
				radd1, radd2, wadd:	in	std_logic_vector(ADDRESS_WIDTH-1	downto 0);
				wdata					:	in	std_logic_vector(DATA_WIDTH-1	downto 0);
				rdata1, rdata2		:	out std_logic_vector(DATA_WIDTH-1	downto 0));
	end component;
	
	component ULA	is
		port(input1, input2		:	in	std_logic_vector(DATA_WIDTH-1	downto 0);
				operation			:	in	std_logic_vector(3	downto	0);
				output				:	out	std_logic_vector(DATA_WIDTH-1	downto 0);
				zero,	negative	 	:	out	std_logic;
				carry, overflow	:	out	std_logic);
	end component;
	
	component MI is
		port(radd	:	in std_logic_vector(ADDN-1 downto 0);	--Endereco a ser lido
			  memout	:	out std_logic_vector(DATA_WIDTH-1 downto 0)	--Instrucao contida no endereco
		);
	end component;
	
	component MD is
		port(clk		:	in std_logic;
			  writ	:	in std_logic;	--writ = 1 escreve na memoria
			  add		:	in std_logic_vector(ADDN-1 downto 0);
			  memin	:	in std_logic_vector(DATA_WIDTH-1 downto 0);
			  memout	:	out std_logic_vector(DATA_WIDTH-1 downto 0)
		);
	end  component;
	
	component SOM is
		port(A, B	: in	std_logic_vector(DATA_WIDTH-1 downto 0);
			  R		: out std_logic_vector(DATA_WIDTH-1 downto 0)
		);
	end component;
	
	component MUX is
		port(A, B	: in 	std_logic_vector(DATA_WIDTH-1 downto 0);
			  SEL		: in	std_logic;
			  R		: out std_logic_vector(DATA_WIDTH-1 downto 0)
		);
	end component;
	
	component REG is
		port(clk, enable	:	in	std_logic;
			  data			:	in std_logic_vector(DATA_WIDTH-1 downto 0);
			  dataout		:	out std_logic_vector(DATA_WIDTH-1 downto 0));
	end component;
	
	component SIGN_EX is
		port(Nin		:	in std_logic_vector(15 downto 0);	--Numero de 16 bits (imediato)
			  Nout	:	out std_logic_vector(DATA_WIDTH-1 downto 0) --Imediato com sinal extendido
			  );
	end component;
	--------------------------------
	--UNIDADE DE CONTROLE FALTANDO--
	--------------------------------
	
begin




end MIPS_UNICYCLE_ARCH;
