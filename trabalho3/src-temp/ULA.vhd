library	ieee;
use	ieee.std_logic_1164.all;
use	ieee.numeric_std.all;

entity ULA	is
generic(DATA_WIDTH	:	natural	:=	32);
port(input1, input2		:	in	std_logic_vector(DATA_WIDTH-1	downto 0);
		operation			:	in	std_logic_vector(3	downto	0);
		output				:	out	std_logic_vector(DATA_WIDTH-1	downto 0);
		zero,	negative	 	:	out	std_logic;
		carry, overflow	:	out	std_logic);
end entity ULA;

architecture ULA_arch of ULA is

	signal MSB : natural;

begin

	MSB <= DATA_WIDTH-1;

	process(operation, input1, input2)
		variable outputAux : std_logic_vector(DATA_WIDTH downto 0);
		variable carrySig	:	std_logic;
	begin
		outputAux := '0' & X"00000000";
		case( operation ) is
			when "0000" =>	outputAux := ('0' & input1) and ('0' & input2);			--OPERACAO AND	(0000)
			when "0001"	=>	outputAux := ('0' & input1) or ('0' & input2);			--OPERACAO OR	(0001)
			when "0010"	=>																			--OPERACAO ADD SIGNED(0010)
				outputAux := std_logic_vector(signed(input1(DATA_WIDTH-1) & input1) + signed(input2(DATA_WIDTH-1) & input2));
			when "0011"	=>																			--OPERACAO SUB SIGNED(0011)
				outputAux := std_logic_vector(signed(input1(DATA_WIDTH-1) & input1) - signed(input2(DATA_WIDTH-1) & input2));
			when "0100"	=> 																		--OPERACAO SLT	(0100)
				if(input1 < input2) then outputAux := '0' & X"00000001";
				else outputAux := '0' & X"00000000";
				end if;
			when "0101"	=> outputAux := '0' & (input1 nor input2);			--OPERACAO NOR (0101)
			when "0110"	=>	outputAux := (input1 xor input2);					--OPERACAO XOR (0110)
			when "0111"	=>																	--OPERACAO SLL (0111)
				outputAux := '0' & std_logic_vector(signed(input1) sll to_integer(unsigned (input2)));
			when "1000"	=>																	--OPERACAO SRL (1000)
				outputAux := '0' & std_logic_vector(unsigned(input1) srl to_integer(unsigned (input2)));
			when others =>																	--OPERACAO SRA (1000)
				outputAux := '0' & (to_stdlogicvector(to_bitvector(input1) sra to_integer(unsigned (input2))));
		end case;

		output <= outputAux(DATA_WIDTH-1	downto 0);

		carry <= outputAux(DATA_WIDTH);
		
		negative <= outputAux(DATA_WIDTH-1);

		if(operation = "0010" or operation = "0011") then
				--Descobre o ultimo carry da operacao de soma e subtracao
				carrySig := (outputAux(MSB) and ((input1(MSB) nor input2(MSB)) or (input1(MSB) and input2(MSB)))) or (outputAux(MSB) and ((not(input1(MSB)) and input2(MSB)) or (input1(MSB) and not(input2(MSB)))));
		
				--Se o carry da operacao for diferente do carry out... overflow = 1
				overflow <= carrySig xor outputAux(DATA_WIDTH);
		end if;
		
		if(outputAux(DATA_WIDTH-1	downto 0) = X"00000000") then
			zero <= '1';
		else
			zero <= '0';
		end if;

	end process;

end ULA_arch;
