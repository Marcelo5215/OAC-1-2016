library	ieee;	
use	ieee.std_logic_1164.all;	
use	ieee.numeric_std.all;	
	
entity REG_BANK is	
	
generic(DATA_WIDTH	:	natural	:=	32;	
		  ADDRESS_WIDTH:	natural	:=	5	);	
	
port (clk, wren			:	in std_logic;
		radd1, radd2, wadd:	in	std_logic_vector(ADDRESS_WIDTH-1	downto 0);	
		wdata					:	in	std_logic_vector(DATA_WIDTH-1	downto 0);		
		rdata1, rdata2		:	out std_logic_vector(DATA_WIDTH-1	downto 0));	
end entity REG_BANK;

architecture REG_BANK_arch of REG_BANK is

begin




end REG_BANK_arch;