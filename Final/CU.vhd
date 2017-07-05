--
-- Unidade de Controle
--		
--
--
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CU is
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
end entity;

architecture CU_ARCH of CU is

begin
	process(opcode)
	begin
		case (opcode) is
			when "000000" =>   -- Tipo-R
				regDst <= '1';
				OrigALU <= '0';
				MemparaReg <= '0';
				EscreveReg <= '1';
				LeMem <= '0';
				EscreveMem <= '0';
				Branch <= '0';
				OpALU <= "10";
				Jump <= '0';
				Jal <= '0';
				JR <= '0';
			when "100011" =>   --LW
				regDst <= '0';
				OrigALU <= '1';
				MemparaReg <= '1';
				EscreveReg <= '1';
				LeMem <= '1';
				EscreveMem <= '0';
				Branch <= '0';
				OpALU <= "00";
				Jump <= '0';
				Jal <= '0';
				JR <= '0';
			when "101011" =>   --SW
				regDst <= '0';
				OrigALU <= '1';
				MemparaReg <= '0';
				EscreveReg <= '0';
				LeMem <= '0';
				EscreveMem <= '1';
				Branch <= '0';
				OpALU <= "00";
				Jump <= '0';
				Jal <= '0';
				JR <= '0';
			when "000100" =>   -- BEQ/BNE
				regDst <= '0';
				OrigALU <= '0';
				MemparaReg <= '0';
				EscreveReg <= '0';
				LeMem <= '0';
				EscreveMem <= '0';
				Branch <= '1';
				OpALU <= "01";
				Jump <= '0';
				Jal <= '0';
				JR <= '0';
			when "000011" =>   -- JAL
				regDst <= '0';
				OrigALU <= '0';
				MemparaReg <= '0';
				EscreveReg <= '1';
				LeMem <= '0';
				EscreveMem <= '0';
				Branch <= '1';
				OpALU <= "01";
				Jump <= '1';
				Jal <= '1';
				JR <= '0';
			when "000010" =>   -- J
				regDst <= '0';
				OrigALU <= '0';
				MemparaReg <= '0';
				EscreveReg <= '0';
				LeMem <= '0';
				EscreveMem <= '0';
				Branch <= '1';
				OpALU <= "01";
				Jump <= '1';
				Jal <= '0';
				JR <= '0';
			when "001000" =>   -- JR
				regDst <= '0';
				OrigALU <= '0';
				MemparaReg <= '0';
				EscreveReg <= '0';
				LeMem <= '0';
				EscreveMem <= '0';
				Branch <= '1';
				OpALU <= "01";
				Jump <= '1';
				Jal <= '0';
				JR <= '1';
			when others =>		--tipo-i
				regDst <= '1';
				OrigALU <= '1';
				MemparaReg <= '0';
				EscreveReg <= '1';
				LeMem <= '0';
				EscreveMem <= '0';
				Branch <= '0';
				OpALU <= "10";
				Jump <= '0';
				Jal <= '0';
				JR <= '0';
		end case;
	end process;
end CU_ARCH;