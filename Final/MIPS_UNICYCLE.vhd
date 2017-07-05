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
		port(A, B	: in	std_logic_vector(ADDN-1 downto 0);
			  R		: out std_logic_vector(ADDN-1 downto 0)
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

	component CU is
		port( opcode : in std_logic_vector(5 downto 0);
			regDst	:	out std_logic;
			Branch : out std_logic;
			LeMem : out std_logic;
			MemparaReg : out std_logic;
			OpALU : out std_logic_vector(1 downto 0);
			EscreveMem : out std_logic;
			OrigALU : out std_logic;
			EscreveReg : out std_logic;
			Jump : out std_logic;
			Jal : out std_logic;
			JR : out std_logic
			);
	end component;
	
	component CULA is
		port( Op	:	in std_logic_vector(1 downto 0);
				funct	: in std_logic_vector(5 downto 0);
				ulaop	:	out std_logic_vector(3 downto 0)
		);
	end component;
	
	signal PC : std_logic_vector(ADDN-1 downto 0);           -- "Resgistador PC"
	signal inst : std_logic_vector(DATA_WIDTH-1 downto 0);   -- Instrucao
	signal Rdata1 : std_logic_vector(DATA_WIDTH-1 downto 0); -- Valor dentro do registador1 (RS)
	signal Rdata2 : std_logic_vector(DATA_WIDTH-1 downto 0); -- Valor dentro do registador2 (RT)
	signal ULARes : std_logic_vector(DATA_WIDTH-1 downto 0); -- Resultado da ULA
	signal ulaop :  std_logic_vector(3 downto 0);            -- Operacao a ser executada pela ULA
	signal zero : std_logic;											-- saida zero da ULA
	signal PC4	:	std_logic_vector(ADDN-1 downto 0);			--Valor de PC + 4
	signal extended : std_logic_vector(DATA_WIDTH-1 downto 0); -- valor do offset com sinal extendido
	signal MDout : std_logic_vector(DATA_WIDTH-1 downto 0);  --Saida da memoria de dados]]
	
	--SINAIS DE CONTROLE
	signal regDst	:	std_logic;
	signal Branch : std_logic;
	signal LeMem : std_logic;
	signal MemparaReg : std_logic;
	signal OpALU : std_logic_vector(1 downto 0);
	signal EscreveMem : std_logic;
	signal OrigALU : std_logic;
	signal EscreveReg : std_logic;
	signal Jump : std_logic;
	signal Jal : std_logic;
	signal JR : std_logic;	
	
begin




end MIPS_UNICYCLE_ARCH;
