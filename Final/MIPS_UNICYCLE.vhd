--
--MIPS - UNICICLO
--
--
--	@author - Marcelo de Araujo Lopes
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


entity MIPS_UNICYCLE is
	generic(DATA_WIDTH	:	natural	:=	32;
			  ADDRESS_WIDTH:	natural	:=	5;
			  ADDN : natural := 7);
	port(clk : std_logic			--clock externo
	);
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
	
	component MUX7 is
		port(A, B	: in 	std_logic_vector(ADDN-1 downto 0);
			  SEL		: in	std_logic;
			  R		: out std_logic_vector(ADDN-1 downto 0)
		);
	end component;
	
	component MUX5 is
		port(A, B	: in 	std_logic_vector(4 downto 0);
			  SEL		: in	std_logic;
			  R		: out std_logic_vector(4 downto 0)
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
	
	signal PC : std_logic_vector(ADDN-1 downto 0) := std_logic_vector(to_unsigned(0,(ADDN)));           -- "Resgistador PC"
	signal inst : std_logic_vector(DATA_WIDTH-1 downto 0);   -- Instrucao
	signal Rdata1 : std_logic_vector(DATA_WIDTH-1 downto 0); -- Valor dentro do registador1 (RS)
	signal Rdata2 : std_logic_vector(DATA_WIDTH-1 downto 0); -- Valor dentro do registador2 (RT)
	signal ULARes : std_logic_vector(DATA_WIDTH-1 downto 0); -- Resultado da ULA
	signal ulaop :  std_logic_vector(3 downto 0);            -- Operacao a ser executada pela ULA
	signal zero : std_logic;											-- saida zero da ULA
	signal PC4	:	std_logic_vector(ADDN-1 downto 0);			--Valor de PC + 4
	signal extended : std_logic_vector(DATA_WIDTH-1 downto 0); -- valor do offset com sinal extendido
	signal MDout : std_logic_vector(DATA_WIDTH-1 downto 0);  -- Saida da memoria de dados]]
	signal SUMBRANCH : std_logic_vector(ADDN-1 downto 0);    -- Enderenco do BRANCH
	signal BEQBNE : std_logic;											-- Branch ou nao a pertir do zero da ula
	signal SaidaMUXBRANCH : std_logic_vector(ADDN-1 downto 0);
	signal SaidaMUXJUMP : std_logic_vector(ADDN-1 downto 0);
	signal SaidaMUXJAL1 : std_logic_vector(5 downto 0); -- endreco do registrador de escrita
	signal SaidaMUXJAL2 : std_logic_vector(DATA_WIDTH-1 downto 0); -- dado da escrita no reg
	signal SaidaMUXRegDst : std_logic_vector(5 downto 0); -- escolha do registrador de escrita
	signal SaidaMUXULA : std_logic_vector(DATA_WIDTH-1 downto 0);
	signal SaidaMUXVOLTA : std_logic_vector(DATA_WIDTH-1 downto 0);
	signal ADDPC8: std_logic_vector(DATA_WIDTH-1 downto 0);
	
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

	--UNIDADE DE CONTROLE AINDA FALTANDO


	InstMemo : MI port map(PC, inst);
	
	--MUX para o banco de registradores 
	MUXREGDST : MUX5 port map(inst(15 downto 11), inst(20 downto 16), regDst, SaidaMUXRegDst);
	MUXJAL1 : MUX5 port map("11111", SaidaMUXRegDst, Jal, SaidaMUXJAL1);

	--Banco de Registradores
	RegBank : REG_BANK port map(clk, EscreveReg, inst(25 downto 0), inst(20 downto 16), saidaMUXJAL1, SaidaMUXJAL2, Rdata1, Rdata2);
	
	--Extended offset
	EXTE : SIGN_EX port map(inst(15 downto 0), extended);
	
	--controle da ULA
	ULAC : CULA port map(OpALU, inst(5 downto 0), ulaop);
	
	--Mux para a ula
	MUXORIGULA : MUX port map(extended, Rdata2, OrigALU, SaidaMUXULA);
	
	ULAA : ULA port map(Rdata1, SaidaMUXULA, ulaop, ULARes, zero, open, open, open);
	
	--memoria de dados
	DataMemo : MD port map(clk, LeMem, ULARes, Rdata2, MDout);
	
	--MUX entre ULA E MD
	MUXVOLTA : MUX port map(MDout, UlaRes, memparaReg, SaidaMUXVOLTA);
	ADDPC8 <= to_stdlogicvector(unsigned(PC) + to_unsigned(8, DATA_WIDTH-1));
	MUXJAL2 : MUX port map(ADDPC8, SaidaMUXVOLTA, Jal);

	ADDPC : SOM port map(PC, "00100", PC4);
	ADDBRANCH : SOM port map(PC4, extended sll 2, SUMBRANCH);	
	--Verifica se deve fazer o branch ou nao
	BEQBNE <= (Branch and not(zero)) or (Branch and zero);
	MUXBRANCH : MUX7 port map(SUMBRANCH, PC4, BEQBNE, SaidaMUXBRANCH);
	
	MUXJUMP : MUX7 port map(PC(ADDN-1 downto ADDN) & (inst(25 downto 0) sll 2), SaidaMUXBRANCH, Jump, SaidaMUXJUMP);

	MUXPC : MUX7 port map(Rdata1(ADDN-1 downto 0), SaidaMUXJUMP, JR, PC);
	
end MIPS_UNICYCLE_ARCH;
