library	ieee;
use	ieee.std_logic_1164.all;
use	ieee.numeric_std.all;

entity testbench_ula is
	generic(DATA_WIDTH	:	natural	:=	4);
end testbench_ula;

architecture testbench_ula_bv of testbench_ula is
    component ULA 
    generic(DATA_WIDTH	:	natural	:=	4);
    port(input1, input2		:	in	std_logic_vector(DATA_WIDTH-1	downto 0);
		operation			:	in	std_logic_vector(3	downto	0);
		output				:	out	std_logic_vector(DATA_WIDTH-1	downto 0);
		zero,	negative	 	:	out	std_logic;
		carry, overflow	:	out	std_logic);
    end component;

    --Inputs
    signal input1: std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal input2: std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');
    signal operation: std_logic_vector(3 downto 0) := (others => '0');

    --Outputs
    signal output: std_logic_vector(DATA_WIDTH-1 downto 0);
    signal zero, negative, carry, overflow: std_logic;

    begin

    utt: ULA port map (
        input1 => input1,
        input2 => input2,
        operation => operation,
        output => output,
        zero => zero, 
        negative => negative, 
        carry => carry, 
        overflow => overflow
    );

    test: process
        begin
            -- os valores de z,n,c e o sao validos para data_width = 4
            -- teste de AND 1010 & 1100 => resultado : 1000 Z:0, N:1, C:0, O:0
            input1 <= (others => '0');
				input1(0) <= '0'; input1(1) <= '1'; input1(2) <= '0'; input1(3) <= '1'; 
            input2 <= (0 => '0', 1 => '0', 2 => '1', 3 => '1', others => '0');
            operation <= (others => '0');
            wait for 100 ns;
            -- teste de OR 1010 | 1100 => resultado : 1110 Z:0, N:1, C:0, O:0
            operation <= (0 => '1', others => '0');
            wait for 100 ns;
            -- teste de ADD 0001 + 0011 => resultado : 0100 Z:0, N:0, C:0, O:0
            input1 <= (0 => '0', 1 => '1', 2 => '0', 3 => '0', others => '0');
            input2 <= (0 => '1', 1 => '1', 2 => '0', 3 => '0', others => '0');    
            operation <= (1 => '1', others => '0');
            wait for 100 ns;
            -- teste de ADD 1010 + 1100 => resultado : 0110 Z:0, N:0, C:1, O:1
            input1 <= (0 => '0', 1 => '1', 2 => '0', 3 => '1', others => '0');
            input2 <= (0 => '0', 1 => '0', 2 => '1', 3 => '1', others => '0');    
            operation <= (1 => '1', others => '0');
            wait for 100 ns;
            -- teste de SUB 1010 - 1010 =>  resultado: 0000 Z:1, N:0, C:0, O:0
            input1 <= (0 => '0', 1 => '1', 2 => '0', 3 => '1', others => '0');
            input2 <= (0 => '0', 1 => '1', 2 => '0', 3 => '1', others => '0');    
            operation <= (1 => '1', 0 => '1', others => '0');
            wait for 100 ns;
            -- teste de SUB 1010 - 0111 =>  resultado: 0011 Z:0, N:0, C:0, O:1
            input1 <= (0 => '0', 1 => '1', 2 => '0', 3 => '1', others => '0');
            input2 <= (0 => '1', 1 => '1', 2 => '1', 3 => '0', others => '0');    
            operation <= (1 => '1', 0 => '1', others => '0');
            wait for 100 ns;
            -- teste de SLT 0001 < 0000 =>  resultado: 0000 Z:1, N:0, C:0, O:0
            input1 <= (0 => '1', 1 => '0', 2 => '0', 3 => '0', others => '0');
            input2 <= (0 => '0', 1 => '0', 2 => '0', 3 => '0', others => '0');    
            operation <= (2 => '1', others => '0');
            wait for 100 ns;
            -- teste de SLT 1001 < 0000 =>  resultado: 0001 Z:0, N:0, C:0, O:0
            input1 <= (0 => '1', 1 => '0', 2 => '0', 3 => '1', others => '0');
            input2 <= (0 => '0', 1 => '0', 2 => '0', 3 => '0', others => '0');    
            operation <= (2 => '1', others => '0');
            wait for 100 ns;
            -- teste de NOR 1010 NOR 1100 => resultado : 0001 Z:0, N:0, C:0, O:0
            input1 <= (0 => '0', 1 => '1', 2 => '0', 3 => '1', others => '0');
            input2 <= (0 => '0', 1 => '0', 2 => '1', 3 => '1', others => '0');
            operation <= (2 => '1', 0 => '1', others => '0');
            wait for 100 ns;
            -- teste de XOR 1010 XOR 1100 => resultado : 0110 Z:0, N:0, C:0, O:0
            operation <= (2 => '1', 1 => '1', others => '0');
            wait for 100 ns;
             -- teste de SLL 1010 << 0010 => resultado : 1000 Z:0, N:1, C:0, O:0
            input1 <= (0 => '0', 1 => '1', 2 => '0', 3 => '1', others => '0');
            input2 <= (0 => '0', 1 => '1', 2 => '0', 3 => '0', others => '0');
            operation <= (2 => '1', 1 => '1', 0 => '1', others => '0');
            wait for 100 ns;           
            -- teste de SRL 1010 >> 0010 => resultado : 0010 Z:0, N:0, C:0, O:0
            input1 <= (0 => '0', 1 => '1', 2 => '0', 3 => '1', others => '0');
            input2 <= (0 => '0', 1 => '1', 2 => '0', 3 => '0', others => '0');
            operation <= (3 => '1', others => '0');
            wait for 100 ns;   
            -- teste de SRA 1010 >> 0010 => resultado : 1110 Z:0, N:1, C:0, O:0
            input1 <= (0 => '0', 1 => '1', 2 => '0', 3 => '1', others => '0');
            input2 <= (0 => '0', 1 => '1', 2 => '0', 3 => '0', others => '0');
            operation <= (3 => '1', 0 => '1', others => '0');
            wait for 100 ns;  
        end process;
    end architecture;