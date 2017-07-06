LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS_TESTBENCH is
	generic(DATA_WIDTH	:	natural	:=	32;
			  ADDRESS_WIDTH:	natural	:=	5;
			  ADDN : natural := 7);
end entity;

architecture behavioral of MIPS_TESTBENCH is
	component MIPS_UNICYCLE
	generic(DATA_WIDTH	:	natural	:=	32;
			  ADDRESS_WIDTH:	natural	:=	5;
			  ADDN : natural := 7);	
	port(clk : in std_logic;		--clock externo
			RegSw: in std_logic_vector (4 downto 0);
			DataSw: in std_logic_vector (6 downto 0);
			ShowSw: in std_logic_vector (1 downto 0);
			ShowOut: out std_logic_vector (31 downto 0)
			);
			
	end component;
	
	signal clock: std_logic := '0';
	signal ShowOut: std_logic_vector (31 downto 0) := x"00000000";
	signal ShowSw: std_logic_vector (1 downto 0) := "00";
	signal RegSw:  std_logic_vector (4 downto 0) := "00000";
	signal DataSw:  std_logic_vector (6 downto 0) := "0000000";
	
begin
	utt: MIPS_UNICYCLE port map (clock, RegSw, DataSw, ShowSw, ShowOut);
	
	test: process
	begin
		--ADD $s0, $zero, $zero
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(ShowOut = x"00000004"); --pc = 4
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"00008020");   --inst = 00008020
		ShowSw <= "10";
		RegSw <= "10000";						
		wait for 10 ns;
		assert (ShowOut = x"00000000");   --reg $s0 = 0
		
		--ADD $s1, $zero, $zero
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		
		--ADDI $s1, $s1, 0x000A
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 12); --pc = 12
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"2231000a");   --inst = 2231000a
		ShowSw <= "10";
		RegSw <= "10001";						
		wait for 10 ns;
		assert (ShowOut = x"0000000a");   --reg $s1 = a
		
		--ADDI $s0, $s0, 0x0005
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		
		--OR $S1, $s0, $s1
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 20); --pc = 20
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"02110825");   --inst = 02110825
		ShowSw <= "10";
		RegSw <= "10001";						
		wait for 10 ns;
		assert (ShowOut = x"0000000f");   --reg $s1 = f
		
		--AND $s1, $s0, $s1
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 24); --pc = 24
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"02110824");   --inst = 02110824
		ShowSw <= "10";
		RegSw <= "10001";						
		wait for 10 ns;
		assert (ShowOut = x"00000005");   --reg $s1 = 5
		
		--ORI $s1, $s1, 0x0003
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 28); --pc = 28
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"36310003");   --inst = 36310003
		ShowSw <= "10";
		RegSw <= "10001";
		wait for 10 ns;
		assert (ShowOut = x"00000007");   --reg $s1 = 7
		
		--NOR $s1, $s1, $s0
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 32); --pc = 32
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"02308827");   --inst = 02308827
		ShowSw <= "10";
		RegSw <= "10001";						
		wait for 10 ns;
		assert (ShowOut = x"fffffff8");   --reg $s1 = fffffff8
		
		--ANDI $s1, $s1, 0x0008
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 36); --pc = 36
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"32310008");   --inst = 32310008
		ShowSw <= "10";
		RegSw <= "10001";						
		wait for 10 ns;
		assert (ShowOut = x"00000008");   --reg $s1 = 8
		
		--XOR $s2, $s1, $s0
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 40); --pc = 40
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"02309026");   --inst = 02309026
		ShowSw <= "10";
		RegSw <= "10010";						
		wait for 10 ns;
		assert (ShowOut = x"0000000d");   --reg $s2 = d
		
		--XORI $s2, $s2, 0x000b
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 44); --pc = 44
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"3a52000b");   --inst = 3a52000b
		ShowSw <= "10";
		RegSw <= "10010";						
		wait for 10 ns;
		assert (ShowOut = x"00000006");   --reg $s2 = 6
		
		--XOR $s2, $s2, $s1
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 48); --pc = 48
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"02519022");   --inst = 02519022
		ShowSw <= "10";
		RegSw <= "10010";						
		wait for 10 ns;
		assert (ShowOut = x"fffffffe");   --reg $s2 = fffffffe (-2)
		
		--ADDI $S3, $zero, 0x00000000
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		
		--SW $s1, 0($s3)
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 56); --pc = 56
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"ae710000");   --inst = ae710000
		ShowSw <= "10";
		RegSw <= "10001";						
		wait for 10 ns;
		assert (ShowOut = x"00000008");   --reg $s1 = 8
		ShowSw <= "11";
		DataSw <= "0000000";
		assert (ShowOut = x"00000008");	--data 0x00002000 = 0x00000008
		
		--SW $s2, 4($s3)
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 60); --pc = 60
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"ae710004");   --inst = ae710004
		ShowSw <= "10";
		RegSw <= "10010";						
		wait for 10 ns;
		assert (ShowOut = x"fffffffe");   --reg $s2 = 0xfffffffe
		ShowSw <= "11";
		DataSw <= "0000000";
		assert (ShowOut = x"fffffffe");	--data 0x00002004 = 0xfffffffe
		
		--LW $s2, 0($s3)
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 64); --pc = 64
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"8e710000");   --inst = 8e720000
		ShowSw <= "10";
		RegSw <= "10010";						
		wait for 10 ns;
		assert (ShowOut = x"00000008");   --reg $s2 = 8
		
		--LW $s1, 4($s3)
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		
		--SLT $s0, $s1, $zero
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 72); --pc = 72
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"0220802a");   --inst = 0220802a
		ShowSw <= "10";
		RegSw <= "10000";						
		wait for 10 ns;
		assert (ShowOut = x"00000001");   --reg $s0 = 1
		
		--SLTI $s0, $s0, 0x0000
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 76); --pc = 76
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"2a100000");   --inst = 2a100000
		ShowSw <= "10";
		RegSw <= "10000";						
		wait for 10 ns;
		assert (ShowOut = x"00000000");   --reg $s0 = 0
		
		--SRL $s1, $s1, 3
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 80); --pc = 80
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"001188c2");   --inst = 001188c2
		ShowSw <= "10";
		RegSw <= "10001";						
		wait for 10 ns;
		assert (ShowOut = x"1fffffff");   --reg $s1 = 1fffffff
		
		--SLL $s1, $s1, 3
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 84); --pc = 84
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"001188c0");   --inst = 001188c0
		ShowSw <= "10";
		RegSw <= "10001";						
		wait for 10 ns;
		assert (ShowOut = x"fffffff8");   --reg $s1 = fffffff8
		
		--SRA $s1, $s1, 3
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 88); --pc = 88
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"001188c3");   --inst = 001188c3
		ShowSw <= "10";
		RegSw <= "10001";						
		wait for 10 ns;
		assert (ShowOut = x"ffffffff");   --reg $s1 = ffffffff
		
		--ADDI $s4, $zero, 0x0003
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		--ADDI $t0, $zero, 0x0000
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		
		--JAL LOOP
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 108); --pc = 108
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"0c00001b");   --inst = 0c00001b
		ShowSw <= "10";
		RegSw <= "11111";						
		wait for 10 ns;
		assert (ShowOut = x"00000064");   --reg $ra = 00000064
		
		--ADDI $t0, $zero, 0x0001
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		--BNE $t0, $s4, LOOP
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 108); --pc = 108
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"1514fffe");   --inst = 1514fffe
		
		--ADDI $t0, $t0, 0x0001
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		--BNE $t0, $s4, LOOP
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		--ADDI $t0, $to, 0x0001
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		
		--BNE $t0, $s4, LOOP
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 116); --pc = 116
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"1514fffe");   --inst = 1514fffe
		
		--JR $ra
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 100); --pc = 100
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"03e00000");   --inst = 03e00000
		
		--JR $ra
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 100); --pc = 100
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"03e00000");   --inst = 03e00000
		
		--ADDI $t0, $t0, 0x0001
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		
		--J CONTINUE
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 120); --pc = 120
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"0800001e");   --inst = 0800001e
		
		--BEQ $t0, $s4, EXIT
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 120); --pc = 124
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"11140002");   --inst = 11140002
		
		--ADDI $t0, $t0, 0x0001
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		--J CONTINUE
		clock <= '0';
		wait for 1 ns;
		clock <= '1';
		wait for 1 ns;
		
		--BEQ $t0, $s4, EXIT
		clock <= '0';
		ShowSw <= "00";
		wait for 1 ns;
		clock <= '1';
		wait for 10 ns;
		assert(to_integer(unsigned(ShowOut)) = 120); --pc = 132
		ShowSw <= "01";
		wait for 10 ns;
		assert (ShowOut = x"11140002");   --inst = 11140002
		
	end process;
end architecture;
