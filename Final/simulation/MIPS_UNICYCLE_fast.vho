-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/06/2017 12:09:43"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS_UNICYCLE IS
    PORT (
	clk : IN std_logic;
	RegSw : IN std_logic_vector(4 DOWNTO 0);
	DataSw : IN std_logic_vector(6 DOWNTO 0);
	ShowSw : IN std_logic_vector(1 DOWNTO 0);
	ShowOut : OUT std_logic_vector(31 DOWNTO 0)
	);
END MIPS_UNICYCLE;

-- Design Ports Information
-- RegSw[0]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegSw[1]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegSw[2]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegSw[3]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RegSw[4]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ShowOut[0]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[1]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[2]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[3]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[4]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[5]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[6]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[7]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[8]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[9]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[10]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[11]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[12]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[13]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[14]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[15]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[16]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[17]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[18]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[19]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[20]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[21]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[22]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[23]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[24]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[25]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[26]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[27]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[28]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[29]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[30]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowOut[31]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ShowSw[0]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataSw[2]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataSw[3]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataSw[1]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataSw[0]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataSw[4]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataSw[5]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DataSw[6]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ShowSw[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MIPS_UNICYCLE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_RegSw : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_DataSw : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ShowSw : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ShowOut : std_logic_vector(31 DOWNTO 0);
SIGNAL \CUPORT|Mux6~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ULAA|Add1~16_combout\ : std_logic;
SIGNAL \ULAA|Add1~21_combout\ : std_logic;
SIGNAL \ULAA|Add1~26_combout\ : std_logic;
SIGNAL \ADDPC|Add0~2_combout\ : std_logic;
SIGNAL \ADDPC|Add0~5\ : std_logic;
SIGNAL \ADDPC|Add0~6_combout\ : std_logic;
SIGNAL \DataMemo|mem~744_regout\ : std_logic;
SIGNAL \DataMemo|mem~936_regout\ : std_logic;
SIGNAL \DataMemo|mem~360_regout\ : std_logic;
SIGNAL \DataMemo|mem~328_regout\ : std_logic;
SIGNAL \DataMemo|mem~296_regout\ : std_logic;
SIGNAL \DataMemo|mem~4146_combout\ : std_logic;
SIGNAL \DataMemo|mem~392_regout\ : std_logic;
SIGNAL \DataMemo|mem~4147_combout\ : std_logic;
SIGNAL \DataMemo|mem~232_regout\ : std_logic;
SIGNAL \DataMemo|mem~168_regout\ : std_logic;
SIGNAL \DataMemo|mem~4148_combout\ : std_logic;
SIGNAL \DataMemo|mem~4149_combout\ : std_logic;
SIGNAL \DataMemo|mem~104_regout\ : std_logic;
SIGNAL \DataMemo|mem~456_regout\ : std_logic;
SIGNAL \DataMemo|mem~424_regout\ : std_logic;
SIGNAL \DataMemo|mem~4156_combout\ : std_logic;
SIGNAL \InstMemo|mem~3_combout\ : std_logic;
SIGNAL \DataMemo|mem~4170_combout\ : std_logic;
SIGNAL \DataMemo|mem~4171_combout\ : std_logic;
SIGNAL \DataMemo|mem~4172_combout\ : std_logic;
SIGNAL \DataMemo|mem~4173_combout\ : std_logic;
SIGNAL \DataMemo|mem~4174_combout\ : std_logic;
SIGNAL \DataMemo|mem~4175_combout\ : std_logic;
SIGNAL \InstMemo|mem~26_combout\ : std_logic;
SIGNAL \InstMemo|mem~38_combout\ : std_logic;
SIGNAL \InstMemo|mem~41_combout\ : std_logic;
SIGNAL \InstMemo|mem~44_combout\ : std_logic;
SIGNAL \ULAA|Add1~13_combout\ : std_logic;
SIGNAL \MUXORIGULA|R[1]~0_combout\ : std_logic;
SIGNAL \rtl~34_combout\ : std_logic;
SIGNAL \DataMemo|mem~4179_combout\ : std_logic;
SIGNAL \rtl~42_combout\ : std_logic;
SIGNAL \DataMemo|mem~4190_combout\ : std_logic;
SIGNAL \DataMemo|mem~4195_combout\ : std_logic;
SIGNAL \rtl~44_combout\ : std_logic;
SIGNAL \DataMemo|mem~4196_combout\ : std_logic;
SIGNAL \DataMemo|mem~4197_combout\ : std_logic;
SIGNAL \DataMemo|mem~4198_combout\ : std_logic;
SIGNAL \DataMemo|mem~4200_combout\ : std_logic;
SIGNAL \DataMemo|mem~4201_combout\ : std_logic;
SIGNAL \DataMemo|mem~4203_combout\ : std_logic;
SIGNAL \DataMemo|mem~4207_combout\ : std_logic;
SIGNAL \DataMemo|mem~4209_combout\ : std_logic;
SIGNAL \ULAC|Mux2~0_combout\ : std_logic;
SIGNAL \ULAC|Mux2~1_combout\ : std_logic;
SIGNAL \ULAC|Mux1~0_combout\ : std_logic;
SIGNAL \ULAC|Mux1~1_combout\ : std_logic;
SIGNAL \ULAC|Mux0~4_combout\ : std_logic;
SIGNAL \MUXPC|R[2]~9_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \ADDPC|Add0~0_combout\ : std_logic;
SIGNAL \ADDPC|Add0~1\ : std_logic;
SIGNAL \ADDPC|Add0~3\ : std_logic;
SIGNAL \ADDPC|Add0~4_combout\ : std_logic;
SIGNAL \ADDBRANCH|Add0~5\ : std_logic;
SIGNAL \ADDBRANCH|Add0~7\ : std_logic;
SIGNAL \ADDBRANCH|Add0~9\ : std_logic;
SIGNAL \ADDBRANCH|Add0~10_combout\ : std_logic;
SIGNAL \InstMemo|mem~48_combout\ : std_logic;
SIGNAL \InstMemo|mem~49_combout\ : std_logic;
SIGNAL \InstMemo|mem~46_combout\ : std_logic;
SIGNAL \InstMemo|mem~35_combout\ : std_logic;
SIGNAL \InstMemo|mem~47_combout\ : std_logic;
SIGNAL \InstMemo|mem~39_combout\ : std_logic;
SIGNAL \InstMemo|mem~40_combout\ : std_logic;
SIGNAL \CUPORT|Mux9~2_combout\ : std_logic;
SIGNAL \CUPORT|Mux9~3_combout\ : std_logic;
SIGNAL \MUXPC|R[5]~17_combout\ : std_logic;
SIGNAL \InstMemo|mem~12_combout\ : std_logic;
SIGNAL \InstMemo|mem~13_combout\ : std_logic;
SIGNAL \InstMemo|mem~14_combout\ : std_logic;
SIGNAL \InstMemo|mem~43_combout\ : std_logic;
SIGNAL \InstMemo|mem~42_combout\ : std_logic;
SIGNAL \CUPORT|Mux11~6_combout\ : std_logic;
SIGNAL \CUPORT|Mux11~7_combout\ : std_logic;
SIGNAL \MUXPC|R[5]~18_combout\ : std_logic;
SIGNAL \InstMemo|mem~4_combout\ : std_logic;
SIGNAL \InstMemo|mem~5_combout\ : std_logic;
SIGNAL \ADDBRANCH|Add0~4_combout\ : std_logic;
SIGNAL \MUXPC|R[2]~10_combout\ : std_logic;
SIGNAL \MUXPC|R[2]~21_combout\ : std_logic;
SIGNAL \InstMemo|mem~7_combout\ : std_logic;
SIGNAL \InstMemo|mem~6_combout\ : std_logic;
SIGNAL \InstMemo|mem~8_combout\ : std_logic;
SIGNAL \ADDBRANCH|Add0~6_combout\ : std_logic;
SIGNAL \MUXPC|R[3]~19_combout\ : std_logic;
SIGNAL \MUXPC|R[3]~20_combout\ : std_logic;
SIGNAL \InstMemo|mem~10_combout\ : std_logic;
SIGNAL \InstMemo|mem~9_combout\ : std_logic;
SIGNAL \InstMemo|mem~11_combout\ : std_logic;
SIGNAL \ADDBRANCH|Add0~8_combout\ : std_logic;
SIGNAL \CUPORT|Mux6~1_combout\ : std_logic;
SIGNAL \CUPORT|Mux6~2_combout\ : std_logic;
SIGNAL \MUXPC|R[4]~15_combout\ : std_logic;
SIGNAL \MUXPC|R[4]~16_combout\ : std_logic;
SIGNAL \InstMemo|mem~15_combout\ : std_logic;
SIGNAL \InstMemo|mem~16_combout\ : std_logic;
SIGNAL \ADDBRANCH|Add0~11\ : std_logic;
SIGNAL \ADDBRANCH|Add0~12_combout\ : std_logic;
SIGNAL \MUXPC|R[6]~13_combout\ : std_logic;
SIGNAL \MUXPC|R[6]~14_combout\ : std_logic;
SIGNAL \CUPORT|Mux1~0_combout\ : std_logic;
SIGNAL \ULAA|Add1~38_combout\ : std_logic;
SIGNAL \CUPORT|Mux0~0_combout\ : std_logic;
SIGNAL \CUPORT|Mux0~1_combout\ : std_logic;
SIGNAL \CUPORT|Mux6~2clkctrl_outclk\ : std_logic;
SIGNAL \ULAC|Equal0~8_combout\ : std_logic;
SIGNAL \ULAC|Equal0~7_combout\ : std_logic;
SIGNAL \ULAC|Equal0~6_combout\ : std_logic;
SIGNAL \ULAC|Mux0~5_combout\ : std_logic;
SIGNAL \InstMemo|mem~17_combout\ : std_logic;
SIGNAL \InstMemo|mem~18_combout\ : std_logic;
SIGNAL \InstMemo|mem~19_combout\ : std_logic;
SIGNAL \ULAC|Mux3~0_combout\ : std_logic;
SIGNAL \ULAC|Mux3~1_combout\ : std_logic;
SIGNAL \ULAC|ulaop[0]~0_combout\ : std_logic;
SIGNAL \ULAA|Mux34~1_combout\ : std_logic;
SIGNAL \ULAA|Add1~23_combout\ : std_logic;
SIGNAL \ULAA|Add1~32_combout\ : std_logic;
SIGNAL \ULAA|Add1~33_combout\ : std_logic;
SIGNAL \ULAA|Add1~37_combout\ : std_logic;
SIGNAL \rtl~36_combout\ : std_logic;
SIGNAL \CUPORT|Mux5~0_combout\ : std_logic;
SIGNAL \ULAA|Add1~24_combout\ : std_logic;
SIGNAL \ULAA|Add1~25_combout\ : std_logic;
SIGNAL \rtl~39_combout\ : std_logic;
SIGNAL \DataMemo|mem~4191_combout\ : std_logic;
SIGNAL \DataMemo|mem~904_regout\ : std_logic;
SIGNAL \ULAA|Add1~36_combout\ : std_logic;
SIGNAL \rtl~32_combout\ : std_logic;
SIGNAL \ULAA|Add1~39_combout\ : std_logic;
SIGNAL \ULAA|Add1~34_combout\ : std_logic;
SIGNAL \DataMemo|mem~4192_combout\ : std_logic;
SIGNAL \DataMemo|mem~776_regout\ : std_logic;
SIGNAL \DataMemo|mem~4143_combout\ : std_logic;
SIGNAL \InstMemo|mem~20_combout\ : std_logic;
SIGNAL \InstMemo|mem~21_combout\ : std_logic;
SIGNAL \CUPORT|Mux1~1_combout\ : std_logic;
SIGNAL \MUXORIGULA|R[0]~1_combout\ : std_logic;
SIGNAL \ULAA|Add1~15_cout\ : std_logic;
SIGNAL \ULAA|Add1~17\ : std_logic;
SIGNAL \ULAA|Add1~19\ : std_logic;
SIGNAL \ULAA|Add1~22\ : std_logic;
SIGNAL \ULAA|Add1~27\ : std_logic;
SIGNAL \ULAA|Add1~28_combout\ : std_logic;
SIGNAL \ULAA|Add1~30_combout\ : std_logic;
SIGNAL \ULAA|Add1~31_combout\ : std_logic;
SIGNAL \rtl~40_combout\ : std_logic;
SIGNAL \DataMemo|mem~4194_combout\ : std_logic;
SIGNAL \DataMemo|mem~1032_regout\ : std_logic;
SIGNAL \DataMemo|mem~4144_combout\ : std_logic;
SIGNAL \rtl~37_combout\ : std_logic;
SIGNAL \rtl~33_combout\ : std_logic;
SIGNAL \DataMemo|mem~4181_combout\ : std_logic;
SIGNAL \DataMemo|mem~616_regout\ : std_logic;
SIGNAL \ULAA|Add1~18_combout\ : std_logic;
SIGNAL \ULAA|Add1~20_combout\ : std_logic;
SIGNAL \rtl~35_combout\ : std_logic;
SIGNAL \DataMemo|mem~4180_combout\ : std_logic;
SIGNAL \DataMemo|mem~872_regout\ : std_logic;
SIGNAL \DataMemo|mem~4136_combout\ : std_logic;
SIGNAL \rtl~38_combout\ : std_logic;
SIGNAL \DataMemo|mem~4182_combout\ : std_logic;
SIGNAL \DataMemo|mem~1000_regout\ : std_logic;
SIGNAL \DataMemo|mem~4137_combout\ : std_logic;
SIGNAL \DataMemo|mem~4185_combout\ : std_logic;
SIGNAL \DataMemo|mem~584_regout\ : std_logic;
SIGNAL \rtl~41_combout\ : std_logic;
SIGNAL \DataMemo|mem~4184_combout\ : std_logic;
SIGNAL \DataMemo|mem~712_regout\ : std_logic;
SIGNAL \DataMemo|mem~4138_combout\ : std_logic;
SIGNAL \DataMemo|mem~4186_combout\ : std_logic;
SIGNAL \DataMemo|mem~968_regout\ : std_logic;
SIGNAL \DataMemo|mem~4139_combout\ : std_logic;
SIGNAL \DataMemo|mem~4188_combout\ : std_logic;
SIGNAL \DataMemo|mem~808_regout\ : std_logic;
SIGNAL \DataMemo|mem~4189_combout\ : std_logic;
SIGNAL \DataMemo|mem~552_regout\ : std_logic;
SIGNAL \DataMemo|mem~4140_combout\ : std_logic;
SIGNAL \DataMemo|mem~4187_combout\ : std_logic;
SIGNAL \DataMemo|mem~680_regout\ : std_logic;
SIGNAL \DataMemo|mem~4141_combout\ : std_logic;
SIGNAL \DataMemo|mem~4142_combout\ : std_logic;
SIGNAL \DataMemo|mem~4145_combout\ : std_logic;
SIGNAL \DataMemo|mem~4210_combout\ : std_logic;
SIGNAL \DataMemo|mem~520_regout\ : std_logic;
SIGNAL \rtl~43_combout\ : std_logic;
SIGNAL \DataMemo|mem~4208_combout\ : std_logic;
SIGNAL \DataMemo|mem~488_regout\ : std_logic;
SIGNAL \DataMemo|mem~4153_combout\ : std_logic;
SIGNAL \DataMemo|mem~4154_combout\ : std_logic;
SIGNAL \ULAA|Mux34~0_combout\ : std_logic;
SIGNAL \ULAA|Add1~12_combout\ : std_logic;
SIGNAL \ULAA|Add1~35_combout\ : std_logic;
SIGNAL \DataMemo|mem~4204_combout\ : std_logic;
SIGNAL \DataMemo|mem~72_regout\ : std_logic;
SIGNAL \DataMemo|mem~4205_combout\ : std_logic;
SIGNAL \DataMemo|mem~40_regout\ : std_logic;
SIGNAL \DataMemo|mem~4150_combout\ : std_logic;
SIGNAL \DataMemo|mem~4206_combout\ : std_logic;
SIGNAL \DataMemo|mem~136_regout\ : std_logic;
SIGNAL \DataMemo|mem~4151_combout\ : std_logic;
SIGNAL \DataMemo|mem~4152_combout\ : std_logic;
SIGNAL \DataMemo|mem~4155_combout\ : std_logic;
SIGNAL \DataMemo|mem~4157_combout\ : std_logic;
SIGNAL \ShowOut[0]~4_combout\ : std_logic;
SIGNAL \DataMemo|mem~4160_combout\ : std_logic;
SIGNAL \DataMemo|mem~4161_combout\ : std_logic;
SIGNAL \DataMemo|mem~4162_combout\ : std_logic;
SIGNAL \DataMemo|mem~4163_combout\ : std_logic;
SIGNAL \DataMemo|mem~4164_combout\ : std_logic;
SIGNAL \DataMemo|mem~4193_combout\ : std_logic;
SIGNAL \DataMemo|mem~648_regout\ : std_logic;
SIGNAL \DataMemo|mem~4165_combout\ : std_logic;
SIGNAL \DataMemo|mem~4166_combout\ : std_logic;
SIGNAL \DataMemo|mem~4183_combout\ : std_logic;
SIGNAL \DataMemo|mem~840_regout\ : std_logic;
SIGNAL \DataMemo|mem~4158_combout\ : std_logic;
SIGNAL \DataMemo|mem~4159_combout\ : std_logic;
SIGNAL \DataMemo|mem~4167_combout\ : std_logic;
SIGNAL \DataMemo|mem~4176_combout\ : std_logic;
SIGNAL \DataMemo|mem~4199_combout\ : std_logic;
SIGNAL \DataMemo|mem~200_regout\ : std_logic;
SIGNAL \DataMemo|mem~4168_combout\ : std_logic;
SIGNAL \DataMemo|mem~4202_combout\ : std_logic;
SIGNAL \DataMemo|mem~264_regout\ : std_logic;
SIGNAL \DataMemo|mem~4169_combout\ : std_logic;
SIGNAL \DataMemo|mem~4177_combout\ : std_logic;
SIGNAL \DataMemo|mem~4178_combout\ : std_logic;
SIGNAL \ShowOut[1]~5_combout\ : std_logic;
SIGNAL \ShowOut[2]~6_combout\ : std_logic;
SIGNAL \ShowOut[2]~7_combout\ : std_logic;
SIGNAL \ShowOut[3]~8_combout\ : std_logic;
SIGNAL \ShowOut[3]~9_combout\ : std_logic;
SIGNAL \ShowOut[4]~10_combout\ : std_logic;
SIGNAL \ShowOut[4]~11_combout\ : std_logic;
SIGNAL \ShowOut[5]~12_combout\ : std_logic;
SIGNAL \ShowOut[5]~13_combout\ : std_logic;
SIGNAL \ShowOut[6]~15_combout\ : std_logic;
SIGNAL \ShowOut[2]~14_combout\ : std_logic;
SIGNAL \ShowOut[6]~16_combout\ : std_logic;
SIGNAL \ShowOut[7]~17_combout\ : std_logic;
SIGNAL \ShowOut[8]~18_combout\ : std_logic;
SIGNAL \ShowOut[8]~50_combout\ : std_logic;
SIGNAL \ShowOut[8]~19_combout\ : std_logic;
SIGNAL \ShowOut[9]~20_combout\ : std_logic;
SIGNAL \InstMemo|mem~22_combout\ : std_logic;
SIGNAL \ShowOut[11]~21_combout\ : std_logic;
SIGNAL \ShowOut[11]~22_combout\ : std_logic;
SIGNAL \InstMemo|mem~23_combout\ : std_logic;
SIGNAL \ShowOut[12]~23_combout\ : std_logic;
SIGNAL \ShowOut[12]~24_combout\ : std_logic;
SIGNAL \InstMemo|mem~24_combout\ : std_logic;
SIGNAL \ShowOut[15]~25_combout\ : std_logic;
SIGNAL \ShowOut[15]~26_combout\ : std_logic;
SIGNAL \InstMemo|mem~25_combout\ : std_logic;
SIGNAL \ShowOut[16]~27_combout\ : std_logic;
SIGNAL \ShowOut[16]~28_combout\ : std_logic;
SIGNAL \InstMemo|mem~27_combout\ : std_logic;
SIGNAL \ShowOut[17]~29_combout\ : std_logic;
SIGNAL \ShowOut[17]~30_combout\ : std_logic;
SIGNAL \ShowOut[0]~31_combout\ : std_logic;
SIGNAL \InstMemo|mem~28_combout\ : std_logic;
SIGNAL \ShowOut[18]~32_combout\ : std_logic;
SIGNAL \InstMemo|mem~29_combout\ : std_logic;
SIGNAL \ShowOut[19]~51_combout\ : std_logic;
SIGNAL \ShowOut[19]~33_combout\ : std_logic;
SIGNAL \InstMemo|mem~30_combout\ : std_logic;
SIGNAL \InstMemo|mem~31_combout\ : std_logic;
SIGNAL \ShowOut[20]~34_combout\ : std_logic;
SIGNAL \ShowOut[20]~35_combout\ : std_logic;
SIGNAL \InstMemo|mem~33_combout\ : std_logic;
SIGNAL \InstMemo|mem~32_combout\ : std_logic;
SIGNAL \ShowOut[21]~36_combout\ : std_logic;
SIGNAL \ShowOut[21]~37_combout\ : std_logic;
SIGNAL \InstMemo|mem~34_combout\ : std_logic;
SIGNAL \ShowOut[22]~38_combout\ : std_logic;
SIGNAL \ShowOut[22]~39_combout\ : std_logic;
SIGNAL \ShowOut[23]~40_combout\ : std_logic;
SIGNAL \ShowOut[23]~41_combout\ : std_logic;
SIGNAL \InstMemo|mem~36_combout\ : std_logic;
SIGNAL \ShowOut[24]~42_combout\ : std_logic;
SIGNAL \InstMemo|mem~37_combout\ : std_logic;
SIGNAL \ShowOut[25]~43_combout\ : std_logic;
SIGNAL \ShowOut[25]~44_combout\ : std_logic;
SIGNAL \ShowOut[26]~45_combout\ : std_logic;
SIGNAL \ShowOut[27]~46_combout\ : std_logic;
SIGNAL \ShowOut[28]~47_combout\ : std_logic;
SIGNAL \InstMemo|mem~45_combout\ : std_logic;
SIGNAL \ShowOut[29]~48_combout\ : std_logic;
SIGNAL \ShowOut[31]~49_combout\ : std_logic;
SIGNAL \ULAC|ulaop\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ShowSw~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DataSw~combout\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_RegSw <= RegSw;
ww_DataSw <= DataSw;
ww_ShowSw <= ShowSw;
ShowOut <= ww_ShowOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CUPORT|Mux6~2clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CUPORT|Mux6~2_combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X24_Y9_N6
\ULAA|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~16_combout\ = (\CUPORT|Mux1~1_combout\ & ((\InstMemo|mem~11_combout\ & ((\ULAA|Add1~15_cout\) # (GND))) # (!\InstMemo|mem~11_combout\ & (!\ULAA|Add1~15_cout\)))) # (!\CUPORT|Mux1~1_combout\ & (((!\ULAA|Add1~15_cout\))))
-- \ULAA|Add1~17\ = CARRY(((\CUPORT|Mux1~1_combout\ & \InstMemo|mem~11_combout\)) # (!\ULAA|Add1~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CUPORT|Mux1~1_combout\,
	datab => \InstMemo|mem~11_combout\,
	datad => VCC,
	cin => \ULAA|Add1~15_cout\,
	combout => \ULAA|Add1~16_combout\,
	cout => \ULAA|Add1~17\);

-- Location: LCCOMB_X24_Y9_N10
\ULAA|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~21_combout\ = (\InstMemo|mem~16_combout\ & ((\CUPORT|Mux1~1_combout\ & ((\ULAA|Add1~19\) # (GND))) # (!\CUPORT|Mux1~1_combout\ & (!\ULAA|Add1~19\)))) # (!\InstMemo|mem~16_combout\ & (((!\ULAA|Add1~19\))))
-- \ULAA|Add1~22\ = CARRY(((\InstMemo|mem~16_combout\ & \CUPORT|Mux1~1_combout\)) # (!\ULAA|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~16_combout\,
	datab => \CUPORT|Mux1~1_combout\,
	datad => VCC,
	cin => \ULAA|Add1~19\,
	combout => \ULAA|Add1~21_combout\,
	cout => \ULAA|Add1~22\);

-- Location: LCCOMB_X24_Y9_N12
\ULAA|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~26_combout\ = (\ULAA|Add1~22\ & (((!\CUPORT|Mux1~1_combout\) # (!\InstMemo|mem~19_combout\)))) # (!\ULAA|Add1~22\ & ((((!\CUPORT|Mux1~1_combout\) # (!\InstMemo|mem~19_combout\)))))
-- \ULAA|Add1~27\ = CARRY((!\ULAA|Add1~22\ & ((!\CUPORT|Mux1~1_combout\) # (!\InstMemo|mem~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~19_combout\,
	datab => \CUPORT|Mux1~1_combout\,
	datad => VCC,
	cin => \ULAA|Add1~22\,
	combout => \ULAA|Add1~26_combout\,
	cout => \ULAA|Add1~27\);

-- Location: LCCOMB_X24_Y10_N6
\ADDPC|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDPC|Add0~2_combout\ = (\MUXPC|R[4]~16_combout\ & (!\ADDPC|Add0~1\)) # (!\MUXPC|R[4]~16_combout\ & ((\ADDPC|Add0~1\) # (GND)))
-- \ADDPC|Add0~3\ = CARRY((!\ADDPC|Add0~1\) # (!\MUXPC|R[4]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[4]~16_combout\,
	datad => VCC,
	cin => \ADDPC|Add0~1\,
	combout => \ADDPC|Add0~2_combout\,
	cout => \ADDPC|Add0~3\);

-- Location: LCCOMB_X24_Y10_N8
\ADDPC|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDPC|Add0~4_combout\ = (\MUXPC|R[5]~18_combout\ & (\ADDPC|Add0~3\ $ (GND))) # (!\MUXPC|R[5]~18_combout\ & (!\ADDPC|Add0~3\ & VCC))
-- \ADDPC|Add0~5\ = CARRY((\MUXPC|R[5]~18_combout\ & !\ADDPC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datad => VCC,
	cin => \ADDPC|Add0~3\,
	combout => \ADDPC|Add0~4_combout\,
	cout => \ADDPC|Add0~5\);

-- Location: LCCOMB_X24_Y10_N10
\ADDPC|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDPC|Add0~6_combout\ = \MUXPC|R[6]~14_combout\ $ (\ADDPC|Add0~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	cin => \ADDPC|Add0~5\,
	combout => \ADDPC|Add0~6_combout\);

-- Location: LCFF_X25_Y8_N13
\DataMemo|mem~744\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~744_regout\);

-- Location: LCFF_X25_Y8_N15
\DataMemo|mem~936\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~936_regout\);

-- Location: LCFF_X22_Y8_N1
\DataMemo|mem~360\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~360_regout\);

-- Location: LCFF_X22_Y8_N3
\DataMemo|mem~328\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~328_regout\);

-- Location: LCFF_X22_Y8_N25
\DataMemo|mem~296\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~296_regout\);

-- Location: LCCOMB_X22_Y8_N14
\DataMemo|mem~4146\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4146_combout\ = (\DataSw~combout\(0) & (((\DataSw~combout\(1))) # (!\DataMemo|mem~328_regout\))) # (!\DataSw~combout\(0) & (((!\DataMemo|mem~296_regout\ & !\DataSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(0),
	datab => \DataMemo|mem~328_regout\,
	datac => \DataMemo|mem~296_regout\,
	datad => \DataSw~combout\(1),
	combout => \DataMemo|mem~4146_combout\);

-- Location: LCFF_X22_Y8_N29
\DataMemo|mem~392\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~392_regout\);

-- Location: LCCOMB_X22_Y8_N22
\DataMemo|mem~4147\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4147_combout\ = (\DataSw~combout\(1) & ((\DataMemo|mem~4146_combout\ & (!\DataMemo|mem~392_regout\)) # (!\DataMemo|mem~4146_combout\ & ((!\DataMemo|mem~360_regout\))))) # (!\DataSw~combout\(1) & (((\DataMemo|mem~4146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(1),
	datab => \DataMemo|mem~392_regout\,
	datac => \DataMemo|mem~4146_combout\,
	datad => \DataMemo|mem~360_regout\,
	combout => \DataMemo|mem~4147_combout\);

-- Location: LCFF_X27_Y8_N7
\DataMemo|mem~232\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~232_regout\);

-- Location: LCFF_X27_Y8_N17
\DataMemo|mem~168\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~168_regout\);

-- Location: LCCOMB_X27_Y8_N18
\DataMemo|mem~4148\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4148_combout\ = (\DataSw~combout\(0) & (((\DataSw~combout\(1))))) # (!\DataSw~combout\(0) & ((\DataSw~combout\(1) & ((!\DataMemo|mem~232_regout\))) # (!\DataSw~combout\(1) & (!\DataMemo|mem~168_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~168_regout\,
	datab => \DataSw~combout\(0),
	datac => \DataSw~combout\(1),
	datad => \DataMemo|mem~232_regout\,
	combout => \DataMemo|mem~4148_combout\);

-- Location: LCCOMB_X27_Y8_N2
\DataMemo|mem~4149\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4149_combout\ = (\DataMemo|mem~4148_combout\ & (((!\DataSw~combout\(0))) # (!\DataMemo|mem~264_regout\))) # (!\DataMemo|mem~4148_combout\ & (((\DataSw~combout\(0) & !\DataMemo|mem~200_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~264_regout\,
	datab => \DataMemo|mem~4148_combout\,
	datac => \DataSw~combout\(0),
	datad => \DataMemo|mem~200_regout\,
	combout => \DataMemo|mem~4149_combout\);

-- Location: LCFF_X22_Y8_N13
\DataMemo|mem~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4203_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~104_regout\);

-- Location: LCFF_X27_Y8_N21
\DataMemo|mem~456\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~456_regout\);

-- Location: LCFF_X27_Y8_N13
\DataMemo|mem~424\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~424_regout\);

-- Location: LCCOMB_X27_Y1_N12
\DataMemo|mem~4156\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4156_combout\ = (!\DataSw~combout\(5) & !\DataSw~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataSw~combout\(5),
	datad => \DataSw~combout\(6),
	combout => \DataMemo|mem~4156_combout\);

-- Location: LCCOMB_X26_Y11_N20
\InstMemo|mem~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~3_combout\ = (\MUXPC|R[2]~21_combout\ & ((\MUXPC|R[6]~14_combout\ $ (!\MUXPC|R[5]~18_combout\)))) # (!\MUXPC|R[2]~21_combout\ & ((\MUXPC|R[4]~16_combout\ & ((!\MUXPC|R[5]~18_combout\))) # (!\MUXPC|R[4]~16_combout\ & (!\MUXPC|R[6]~14_combout\ 
-- & \MUXPC|R[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[4]~16_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[5]~18_combout\,
	combout => \InstMemo|mem~3_combout\);

-- Location: LCCOMB_X22_Y8_N8
\DataMemo|mem~4170\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4170_combout\ = (\DataSw~combout\(0) & (((\DataSw~combout\(1))))) # (!\DataSw~combout\(0) & ((\DataSw~combout\(1) & (!\DataMemo|mem~360_regout\)) # (!\DataSw~combout\(1) & ((!\DataMemo|mem~296_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(0),
	datab => \DataMemo|mem~360_regout\,
	datac => \DataMemo|mem~296_regout\,
	datad => \DataSw~combout\(1),
	combout => \DataMemo|mem~4170_combout\);

-- Location: LCCOMB_X22_Y8_N6
\DataMemo|mem~4171\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4171_combout\ = (\DataSw~combout\(0) & ((\DataMemo|mem~4170_combout\ & ((!\DataMemo|mem~392_regout\))) # (!\DataMemo|mem~4170_combout\ & (!\DataMemo|mem~328_regout\)))) # (!\DataSw~combout\(0) & (((\DataMemo|mem~4170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(0),
	datab => \DataMemo|mem~328_regout\,
	datac => \DataMemo|mem~4170_combout\,
	datad => \DataMemo|mem~392_regout\,
	combout => \DataMemo|mem~4171_combout\);

-- Location: LCCOMB_X22_Y8_N16
\DataMemo|mem~4172\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4172_combout\ = (\DataSw~combout\(0) & (((\DataSw~combout\(1))))) # (!\DataSw~combout\(0) & ((\DataSw~combout\(1) & (!\DataMemo|mem~104_regout\)) # (!\DataSw~combout\(1) & ((!\DataMemo|mem~40_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(0),
	datab => \DataMemo|mem~104_regout\,
	datac => \DataMemo|mem~40_regout\,
	datad => \DataSw~combout\(1),
	combout => \DataMemo|mem~4172_combout\);

-- Location: LCCOMB_X22_Y8_N30
\DataMemo|mem~4173\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4173_combout\ = (\DataSw~combout\(0) & ((\DataMemo|mem~4172_combout\ & (!\DataMemo|mem~136_regout\)) # (!\DataMemo|mem~4172_combout\ & ((!\DataMemo|mem~72_regout\))))) # (!\DataSw~combout\(0) & (((\DataMemo|mem~4172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(0),
	datab => \DataMemo|mem~136_regout\,
	datac => \DataMemo|mem~4172_combout\,
	datad => \DataMemo|mem~72_regout\,
	combout => \DataMemo|mem~4173_combout\);

-- Location: LCCOMB_X27_Y9_N12
\DataMemo|mem~4174\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4174_combout\ = (\DataSw~combout\(3) & (((\DataSw~combout\(2)) # (\DataMemo|mem~4171_combout\)))) # (!\DataSw~combout\(3) & (\DataMemo|mem~4173_combout\ & (!\DataSw~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4173_combout\,
	datab => \DataSw~combout\(3),
	datac => \DataSw~combout\(2),
	datad => \DataMemo|mem~4171_combout\,
	combout => \DataMemo|mem~4174_combout\);

-- Location: LCCOMB_X27_Y8_N24
\DataMemo|mem~4175\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4175_combout\ = (\DataSw~combout\(0) & (((\DataSw~combout\(1))) # (!\DataMemo|mem~456_regout\))) # (!\DataSw~combout\(0) & (((!\DataSw~combout\(1) & !\DataMemo|mem~424_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~456_regout\,
	datab => \DataSw~combout\(0),
	datac => \DataSw~combout\(1),
	datad => \DataMemo|mem~424_regout\,
	combout => \DataMemo|mem~4175_combout\);

-- Location: LCCOMB_X27_Y11_N24
\InstMemo|mem~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~26_combout\ = (\MUXPC|R[5]~18_combout\) # (\MUXPC|R[3]~20_combout\ $ (((\MUXPC|R[2]~21_combout\ & !\MUXPC|R[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~21_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~26_combout\);

-- Location: LCCOMB_X27_Y9_N16
\InstMemo|mem~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~38_combout\ = (\MUXPC|R[5]~18_combout\ & (((\MUXPC|R[3]~20_combout\) # (!\MUXPC|R[2]~21_combout\)))) # (!\MUXPC|R[5]~18_combout\ & ((\MUXPC|R[4]~16_combout\) # ((\MUXPC|R[3]~20_combout\ & \MUXPC|R[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~38_combout\);

-- Location: LCCOMB_X25_Y11_N20
\InstMemo|mem~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~41_combout\ = (\MUXPC|R[5]~18_combout\ & (\MUXPC|R[6]~14_combout\ $ (((!\MUXPC|R[4]~16_combout\))))) # (!\MUXPC|R[5]~18_combout\ & (!\MUXPC|R[6]~14_combout\ & (\MUXPC|R[3]~20_combout\ & \MUXPC|R[4]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~41_combout\);

-- Location: LCCOMB_X25_Y11_N6
\InstMemo|mem~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~44_combout\ = (\MUXPC|R[5]~18_combout\ & (\MUXPC|R[6]~14_combout\ $ ((\MUXPC|R[2]~21_combout\)))) # (!\MUXPC|R[5]~18_combout\ & (\MUXPC|R[2]~21_combout\ & (\MUXPC|R[6]~14_combout\ $ (\MUXPC|R[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~44_combout\);

-- Location: LCCOMB_X24_Y9_N24
\ULAA|Add1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~13_combout\ = ((!\CUPORT|Mux1~0_combout\ & !\InstMemo|mem~47_combout\)) # (!\InstMemo|mem~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CUPORT|Mux1~0_combout\,
	datac => \InstMemo|mem~14_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \ULAA|Add1~13_combout\);

-- Location: LCCOMB_X25_Y9_N4
\MUXORIGULA|R[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXORIGULA|R[1]~0_combout\ = (\InstMemo|mem~8_combout\ & ((\CUPORT|Mux1~0_combout\) # (\InstMemo|mem~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~8_combout\,
	datac => \CUPORT|Mux1~0_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \MUXORIGULA|R[1]~0_combout\);

-- Location: LCCOMB_X24_Y8_N2
\rtl~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~34_combout\ = (\ULAA|Add1~31_combout\ & (!\ULAA|Add1~33_combout\ & !\ULAA|Add1~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~31_combout\,
	datac => \ULAA|Add1~33_combout\,
	datad => \ULAA|Add1~39_combout\,
	combout => \rtl~34_combout\);

-- Location: LCCOMB_X25_Y8_N12
\DataMemo|mem~4179\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4179_combout\ = (\DataMemo|mem~744_regout\) # ((\rtl~32_combout\ & (\rtl~33_combout\ & \rtl~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~32_combout\,
	datab => \rtl~33_combout\,
	datac => \DataMemo|mem~744_regout\,
	datad => \rtl~34_combout\,
	combout => \DataMemo|mem~4179_combout\);

-- Location: LCCOMB_X24_Y8_N14
\rtl~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~42_combout\ = (!\ULAA|Add1~35_combout\ & (\rtl~33_combout\ & ((\ULAA|Add1~23_combout\) # (\ULAA|Add1~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~35_combout\,
	datab => \ULAA|Add1~23_combout\,
	datac => \rtl~33_combout\,
	datad => \ULAA|Add1~37_combout\,
	combout => \rtl~42_combout\);

-- Location: LCCOMB_X25_Y8_N14
\DataMemo|mem~4190\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4190_combout\ = (\DataMemo|mem~936_regout\) # ((\rtl~42_combout\ & (\ULAA|Add1~31_combout\ & \ULAA|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~42_combout\,
	datab => \ULAA|Add1~31_combout\,
	datac => \DataMemo|mem~936_regout\,
	datad => \ULAA|Add1~34_combout\,
	combout => \DataMemo|mem~4190_combout\);

-- Location: LCCOMB_X22_Y8_N0
\DataMemo|mem~4195\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4195_combout\ = (\DataMemo|mem~360_regout\) # ((\rtl~43_combout\ & (\ULAA|Add1~35_combout\ & \rtl~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~43_combout\,
	datab => \ULAA|Add1~35_combout\,
	datac => \DataMemo|mem~360_regout\,
	datad => \rtl~36_combout\,
	combout => \DataMemo|mem~4195_combout\);

-- Location: LCCOMB_X24_Y8_N10
\rtl~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~44_combout\ = (\rtl~39_combout\ & !\ULAA|Add1~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~39_combout\,
	datad => \ULAA|Add1~31_combout\,
	combout => \rtl~44_combout\);

-- Location: LCCOMB_X22_Y8_N2
\DataMemo|mem~4196\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4196_combout\ = (\DataMemo|mem~328_regout\) # ((\rtl~36_combout\ & (!\ULAA|Add1~35_combout\ & \rtl~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~36_combout\,
	datab => \ULAA|Add1~35_combout\,
	datac => \DataMemo|mem~328_regout\,
	datad => \rtl~44_combout\,
	combout => \DataMemo|mem~4196_combout\);

-- Location: LCCOMB_X22_Y8_N24
\DataMemo|mem~4197\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4197_combout\ = (\DataMemo|mem~296_regout\) # ((\rtl~43_combout\ & (!\ULAA|Add1~35_combout\ & \rtl~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~43_combout\,
	datab => \ULAA|Add1~35_combout\,
	datac => \DataMemo|mem~296_regout\,
	datad => \rtl~36_combout\,
	combout => \DataMemo|mem~4197_combout\);

-- Location: LCCOMB_X22_Y8_N28
\DataMemo|mem~4198\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4198_combout\ = (\DataMemo|mem~392_regout\) # ((\rtl~36_combout\ & (\ULAA|Add1~35_combout\ & \rtl~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~36_combout\,
	datab => \ULAA|Add1~35_combout\,
	datac => \DataMemo|mem~392_regout\,
	datad => \rtl~44_combout\,
	combout => \DataMemo|mem~4198_combout\);

-- Location: LCCOMB_X27_Y8_N6
\DataMemo|mem~4200\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4200_combout\ = (\DataMemo|mem~232_regout\) # ((!\ULAA|Add1~34_combout\ & (\rtl~32_combout\ & \rtl~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~34_combout\,
	datab => \rtl~32_combout\,
	datac => \DataMemo|mem~232_regout\,
	datad => \rtl~43_combout\,
	combout => \DataMemo|mem~4200_combout\);

-- Location: LCCOMB_X27_Y8_N16
\DataMemo|mem~4201\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4201_combout\ = (\DataMemo|mem~168_regout\) # ((\rtl~41_combout\ & (\rtl~43_combout\ & !\ULAA|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~41_combout\,
	datab => \rtl~43_combout\,
	datac => \DataMemo|mem~168_regout\,
	datad => \ULAA|Add1~34_combout\,
	combout => \DataMemo|mem~4201_combout\);

-- Location: LCCOMB_X22_Y8_N12
\DataMemo|mem~4203\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4203_combout\ = (\DataMemo|mem~104_regout\) # ((\rtl~43_combout\ & (\ULAA|Add1~35_combout\ & \rtl~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~43_combout\,
	datab => \ULAA|Add1~35_combout\,
	datac => \DataMemo|mem~104_regout\,
	datad => \rtl~37_combout\,
	combout => \DataMemo|mem~4203_combout\);

-- Location: LCCOMB_X27_Y8_N20
\DataMemo|mem~4207\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4207_combout\ = (\DataMemo|mem~456_regout\) # ((\rtl~44_combout\ & (\ULAA|Add1~34_combout\ & \rtl~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~44_combout\,
	datab => \ULAA|Add1~34_combout\,
	datac => \DataMemo|mem~456_regout\,
	datad => \rtl~41_combout\,
	combout => \DataMemo|mem~4207_combout\);

-- Location: LCCOMB_X27_Y8_N12
\DataMemo|mem~4209\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4209_combout\ = (\DataMemo|mem~424_regout\) # ((\rtl~41_combout\ & (\rtl~43_combout\ & \ULAA|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~41_combout\,
	datab => \rtl~43_combout\,
	datac => \DataMemo|mem~424_regout\,
	datad => \ULAA|Add1~34_combout\,
	combout => \DataMemo|mem~4209_combout\);

-- Location: LCCOMB_X26_Y9_N22
\ULAC|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|Mux2~0_combout\ = (\InstMemo|mem~5_combout\) # ((\InstMemo|mem~8_combout\ & ((!\InstMemo|mem~19_combout\))) # (!\InstMemo|mem~8_combout\ & (\InstMemo|mem~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~11_combout\,
	datab => \InstMemo|mem~19_combout\,
	datac => \InstMemo|mem~8_combout\,
	datad => \InstMemo|mem~5_combout\,
	combout => \ULAC|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y9_N24
\ULAC|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|Mux2~1_combout\ = (\ULAC|Mux2~0_combout\) # (!\ULAC|Mux0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAC|Mux0~5_combout\,
	datad => \ULAC|Mux2~0_combout\,
	combout => \ULAC|Mux2~1_combout\);

-- Location: LCCOMB_X26_Y9_N6
\ULAC|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|Mux1~0_combout\ = (\InstMemo|mem~19_combout\ & ((\InstMemo|mem~8_combout\ & (!\InstMemo|mem~14_combout\)) # (!\InstMemo|mem~8_combout\ & ((!\InstMemo|mem~11_combout\))))) # (!\InstMemo|mem~19_combout\ & (!\InstMemo|mem~11_combout\ & 
-- ((\InstMemo|mem~14_combout\) # (\InstMemo|mem~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~14_combout\,
	datab => \InstMemo|mem~19_combout\,
	datac => \InstMemo|mem~8_combout\,
	datad => \InstMemo|mem~11_combout\,
	combout => \ULAC|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y9_N8
\ULAC|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|Mux1~1_combout\ = (!\InstMemo|mem~16_combout\ & ((\ULAC|Mux1~0_combout\ & (\InstMemo|mem~11_combout\)) # (!\ULAC|Mux1~0_combout\ & (!\InstMemo|mem~11_combout\ & !\InstMemo|mem~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAC|Mux1~0_combout\,
	datab => \InstMemo|mem~16_combout\,
	datac => \InstMemo|mem~11_combout\,
	datad => \InstMemo|mem~5_combout\,
	combout => \ULAC|Mux1~1_combout\);

-- Location: LCCOMB_X26_Y9_N2
\ULAC|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|Mux0~4_combout\ = (!\InstMemo|mem~11_combout\ & (!\InstMemo|mem~19_combout\ & (\InstMemo|mem~8_combout\ & \ULAC|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~11_combout\,
	datab => \InstMemo|mem~19_combout\,
	datac => \InstMemo|mem~8_combout\,
	datad => \ULAC|Mux0~5_combout\,
	combout => \ULAC|Mux0~4_combout\);

-- Location: LCCOMB_X25_Y10_N10
\MUXPC|R[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|R[2]~9_combout\ = ((\MUXPC|R[6]~14_combout\) # (!\MUXPC|R[4]~16_combout\)) # (!\MUXPC|R[5]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \MUXPC|R[2]~9_combout\);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataSw[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataSw(5),
	combout => \DataSw~combout\(5));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataSw[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataSw(6),
	combout => \DataSw~combout\(6));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y10_N4
\ADDPC|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDPC|Add0~0_combout\ = (\MUXPC|R[2]~21_combout\ & (\MUXPC|R[3]~20_combout\ $ (VCC))) # (!\MUXPC|R[2]~21_combout\ & (\MUXPC|R[3]~20_combout\ & VCC))
-- \ADDPC|Add0~1\ = CARRY((\MUXPC|R[2]~21_combout\ & \MUXPC|R[3]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~21_combout\,
	datab => \MUXPC|R[3]~20_combout\,
	datad => VCC,
	combout => \ADDPC|Add0~0_combout\,
	cout => \ADDPC|Add0~1\);

-- Location: LCCOMB_X24_Y10_N22
\ADDBRANCH|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDBRANCH|Add0~4_combout\ = (\MUXPC|R[2]~21_combout\ & (\InstMemo|mem~5_combout\ & VCC)) # (!\MUXPC|R[2]~21_combout\ & (\InstMemo|mem~5_combout\ $ (VCC)))
-- \ADDBRANCH|Add0~5\ = CARRY((!\MUXPC|R[2]~21_combout\ & \InstMemo|mem~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~21_combout\,
	datab => \InstMemo|mem~5_combout\,
	datad => VCC,
	combout => \ADDBRANCH|Add0~4_combout\,
	cout => \ADDBRANCH|Add0~5\);

-- Location: LCCOMB_X24_Y10_N24
\ADDBRANCH|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDBRANCH|Add0~6_combout\ = (\ADDPC|Add0~0_combout\ & ((\InstMemo|mem~8_combout\ & (\ADDBRANCH|Add0~5\ & VCC)) # (!\InstMemo|mem~8_combout\ & (!\ADDBRANCH|Add0~5\)))) # (!\ADDPC|Add0~0_combout\ & ((\InstMemo|mem~8_combout\ & (!\ADDBRANCH|Add0~5\)) # 
-- (!\InstMemo|mem~8_combout\ & ((\ADDBRANCH|Add0~5\) # (GND)))))
-- \ADDBRANCH|Add0~7\ = CARRY((\ADDPC|Add0~0_combout\ & (!\InstMemo|mem~8_combout\ & !\ADDBRANCH|Add0~5\)) # (!\ADDPC|Add0~0_combout\ & ((!\ADDBRANCH|Add0~5\) # (!\InstMemo|mem~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADDPC|Add0~0_combout\,
	datab => \InstMemo|mem~8_combout\,
	datad => VCC,
	cin => \ADDBRANCH|Add0~5\,
	combout => \ADDBRANCH|Add0~6_combout\,
	cout => \ADDBRANCH|Add0~7\);

-- Location: LCCOMB_X24_Y10_N26
\ADDBRANCH|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDBRANCH|Add0~8_combout\ = ((\ADDPC|Add0~2_combout\ $ (\InstMemo|mem~11_combout\ $ (!\ADDBRANCH|Add0~7\)))) # (GND)
-- \ADDBRANCH|Add0~9\ = CARRY((\ADDPC|Add0~2_combout\ & ((\InstMemo|mem~11_combout\) # (!\ADDBRANCH|Add0~7\))) # (!\ADDPC|Add0~2_combout\ & (\InstMemo|mem~11_combout\ & !\ADDBRANCH|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADDPC|Add0~2_combout\,
	datab => \InstMemo|mem~11_combout\,
	datad => VCC,
	cin => \ADDBRANCH|Add0~7\,
	combout => \ADDBRANCH|Add0~8_combout\,
	cout => \ADDBRANCH|Add0~9\);

-- Location: LCCOMB_X24_Y10_N28
\ADDBRANCH|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDBRANCH|Add0~10_combout\ = (\InstMemo|mem~14_combout\ & ((\ADDPC|Add0~4_combout\ & (\ADDBRANCH|Add0~9\ & VCC)) # (!\ADDPC|Add0~4_combout\ & (!\ADDBRANCH|Add0~9\)))) # (!\InstMemo|mem~14_combout\ & ((\ADDPC|Add0~4_combout\ & (!\ADDBRANCH|Add0~9\)) # 
-- (!\ADDPC|Add0~4_combout\ & ((\ADDBRANCH|Add0~9\) # (GND)))))
-- \ADDBRANCH|Add0~11\ = CARRY((\InstMemo|mem~14_combout\ & (!\ADDPC|Add0~4_combout\ & !\ADDBRANCH|Add0~9\)) # (!\InstMemo|mem~14_combout\ & ((!\ADDBRANCH|Add0~9\) # (!\ADDPC|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~14_combout\,
	datab => \ADDPC|Add0~4_combout\,
	datad => VCC,
	cin => \ADDBRANCH|Add0~9\,
	combout => \ADDBRANCH|Add0~10_combout\,
	cout => \ADDBRANCH|Add0~11\);

-- Location: LCCOMB_X25_Y11_N12
\InstMemo|mem~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~48_combout\ = (\MUXPC|R[6]~14_combout\ & (!\MUXPC|R[2]~21_combout\ & ((\MUXPC|R[5]~18_combout\) # (!\MUXPC|R[4]~16_combout\)))) # (!\MUXPC|R[6]~14_combout\ & (\MUXPC|R[4]~16_combout\ & ((\MUXPC|R[5]~18_combout\) # 
-- (!\MUXPC|R[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~48_combout\);

-- Location: LCCOMB_X25_Y11_N14
\InstMemo|mem~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~49_combout\ = (\InstMemo|mem~48_combout\ & (\MUXPC|R[6]~14_combout\ $ (((\MUXPC|R[3]~20_combout\) # (\MUXPC|R[2]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[2]~21_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	datad => \InstMemo|mem~48_combout\,
	combout => \InstMemo|mem~49_combout\);

-- Location: LCCOMB_X27_Y11_N28
\InstMemo|mem~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~46_combout\ = (\MUXPC|R[5]~18_combout\ & (\MUXPC|R[4]~16_combout\ & ((\MUXPC|R[2]~21_combout\) # (\MUXPC|R[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~21_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~46_combout\);

-- Location: LCCOMB_X27_Y11_N2
\InstMemo|mem~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~35_combout\ = (!\MUXPC|R[2]~21_combout\ & (\MUXPC|R[6]~14_combout\ & (!\MUXPC|R[5]~18_combout\ & !\MUXPC|R[4]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~21_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \MUXPC|R[5]~18_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~35_combout\);

-- Location: LCCOMB_X27_Y11_N10
\InstMemo|mem~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~47_combout\ = (\MUXPC|R[3]~20_combout\ & (\InstMemo|mem~46_combout\ & (!\MUXPC|R[6]~14_combout\))) # (!\MUXPC|R[3]~20_combout\ & ((\InstMemo|mem~35_combout\) # ((\InstMemo|mem~46_combout\ & !\MUXPC|R[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \InstMemo|mem~46_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	datad => \InstMemo|mem~35_combout\,
	combout => \InstMemo|mem~47_combout\);

-- Location: LCCOMB_X26_Y11_N12
\InstMemo|mem~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~39_combout\ = (\MUXPC|R[6]~14_combout\ & (((!\MUXPC|R[4]~16_combout\ & !\MUXPC|R[2]~21_combout\)))) # (!\MUXPC|R[6]~14_combout\ & ((\MUXPC|R[2]~21_combout\ & ((\MUXPC|R[4]~16_combout\))) # (!\MUXPC|R[2]~21_combout\ & 
-- (\MUXPC|R[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \MUXPC|R[4]~16_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~39_combout\);

-- Location: LCCOMB_X26_Y11_N6
\InstMemo|mem~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~40_combout\ = (\InstMemo|mem~39_combout\ & ((\MUXPC|R[5]~18_combout\) # (\MUXPC|R[6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	datad => \InstMemo|mem~39_combout\,
	combout => \InstMemo|mem~40_combout\);

-- Location: LCCOMB_X25_Y11_N4
\CUPORT|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUPORT|Mux9~2_combout\ = (!\InstMemo|mem~47_combout\ & ((\InstMemo|mem~45_combout\ & (!\InstMemo|mem~49_combout\ & !\InstMemo|mem~40_combout\)) # (!\InstMemo|mem~45_combout\ & ((\InstMemo|mem~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~45_combout\,
	datab => \InstMemo|mem~49_combout\,
	datac => \InstMemo|mem~47_combout\,
	datad => \InstMemo|mem~40_combout\,
	combout => \CUPORT|Mux9~2_combout\);

-- Location: LCCOMB_X25_Y11_N16
\CUPORT|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUPORT|Mux9~3_combout\ = (\CUPORT|Mux9~2_combout\ & ((\MUXPC|R[2]~21_combout\) # (!\InstMemo|mem~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~41_combout\,
	datab => \CUPORT|Mux9~2_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	combout => \CUPORT|Mux9~3_combout\);

-- Location: LCCOMB_X24_Y10_N18
\MUXPC|R[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|R[5]~17_combout\ = (!\CUPORT|Mux9~3_combout\ & ((\CUPORT|Mux6~2_combout\ & (\ADDBRANCH|Add0~10_combout\)) # (!\CUPORT|Mux6~2_combout\ & ((\ADDPC|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUPORT|Mux6~2_combout\,
	datab => \ADDBRANCH|Add0~10_combout\,
	datac => \ADDPC|Add0~4_combout\,
	datad => \CUPORT|Mux9~3_combout\,
	combout => \MUXPC|R[5]~17_combout\);

-- Location: LCCOMB_X27_Y9_N20
\InstMemo|mem~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~12_combout\ = (!\MUXPC|R[4]~16_combout\ & ((\MUXPC|R[6]~14_combout\ & (!\MUXPC|R[3]~20_combout\ & \MUXPC|R[2]~21_combout\)) # (!\MUXPC|R[6]~14_combout\ & (\MUXPC|R[3]~20_combout\ & !\MUXPC|R[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~12_combout\);

-- Location: LCCOMB_X27_Y9_N30
\InstMemo|mem~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~13_combout\ = (\MUXPC|R[4]~16_combout\ & (((\MUXPC|R[3]~20_combout\)) # (!\MUXPC|R[6]~14_combout\))) # (!\MUXPC|R[4]~16_combout\ & (((\MUXPC|R[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~13_combout\);

-- Location: LCCOMB_X26_Y9_N16
\InstMemo|mem~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~14_combout\ = (\MUXPC|R[5]~18_combout\ & ((!\InstMemo|mem~13_combout\))) # (!\MUXPC|R[5]~18_combout\ & (\InstMemo|mem~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXPC|R[5]~18_combout\,
	datac => \InstMemo|mem~12_combout\,
	datad => \InstMemo|mem~13_combout\,
	combout => \InstMemo|mem~14_combout\);

-- Location: LCCOMB_X25_Y11_N28
\InstMemo|mem~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~43_combout\ = (\MUXPC|R[5]~18_combout\ & (\MUXPC|R[6]~14_combout\ $ (((\MUXPC|R[4]~16_combout\) # (!\MUXPC|R[2]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~43_combout\);

-- Location: LCCOMB_X25_Y11_N30
\InstMemo|mem~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~42_combout\ = (\InstMemo|mem~41_combout\ & !\MUXPC|R[2]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~41_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~42_combout\);

-- Location: LCCOMB_X25_Y11_N2
\CUPORT|Mux11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUPORT|Mux11~6_combout\ = (!\InstMemo|mem~42_combout\ & ((\MUXPC|R[3]~20_combout\ & (!\InstMemo|mem~44_combout\)) # (!\MUXPC|R[3]~20_combout\ & ((\InstMemo|mem~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~44_combout\,
	datab => \InstMemo|mem~43_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \InstMemo|mem~42_combout\,
	combout => \CUPORT|Mux11~6_combout\);

-- Location: LCCOMB_X25_Y11_N26
\CUPORT|Mux11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUPORT|Mux11~7_combout\ = (!\InstMemo|mem~40_combout\ & (!\InstMemo|mem~49_combout\ & (!\InstMemo|mem~47_combout\ & \CUPORT|Mux11~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~40_combout\,
	datab => \InstMemo|mem~49_combout\,
	datac => \InstMemo|mem~47_combout\,
	datad => \CUPORT|Mux11~6_combout\,
	combout => \CUPORT|Mux11~7_combout\);

-- Location: LCCOMB_X24_Y10_N12
\MUXPC|R[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|R[5]~18_combout\ = (!\CUPORT|Mux11~7_combout\ & ((\MUXPC|R[5]~17_combout\) # ((\CUPORT|Mux9~3_combout\ & \InstMemo|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUPORT|Mux9~3_combout\,
	datab => \MUXPC|R[5]~17_combout\,
	datac => \InstMemo|mem~14_combout\,
	datad => \CUPORT|Mux11~7_combout\,
	combout => \MUXPC|R[5]~18_combout\);

-- Location: LCCOMB_X26_Y11_N2
\InstMemo|mem~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~4_combout\ = (\MUXPC|R[4]~16_combout\ & (!\MUXPC|R[5]~18_combout\ & (\MUXPC|R[6]~14_combout\ $ (!\MUXPC|R[2]~21_combout\)))) # (!\MUXPC|R[4]~16_combout\ & (\MUXPC|R[6]~14_combout\ & ((\MUXPC|R[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[4]~16_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[5]~18_combout\,
	combout => \InstMemo|mem~4_combout\);

-- Location: LCCOMB_X26_Y11_N24
\InstMemo|mem~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~5_combout\ = (\MUXPC|R[3]~20_combout\ & (\InstMemo|mem~3_combout\)) # (!\MUXPC|R[3]~20_combout\ & ((\InstMemo|mem~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~3_combout\,
	datab => \InstMemo|mem~4_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	combout => \InstMemo|mem~5_combout\);

-- Location: LCCOMB_X25_Y10_N28
\MUXPC|R[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|R[2]~10_combout\ = (\MUXPC|R[5]~18_combout\ & (((\ADDBRANCH|Add0~4_combout\ & \MUXPC|R[4]~16_combout\)) # (!\MUXPC|R[6]~14_combout\))) # (!\MUXPC|R[5]~18_combout\ & ((\MUXPC|R[6]~14_combout\ $ (\MUXPC|R[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datab => \ADDBRANCH|Add0~4_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \MUXPC|R[2]~10_combout\);

-- Location: LCCOMB_X25_Y10_N18
\MUXPC|R[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|R[2]~21_combout\ = (!\MUXPC|R[2]~21_combout\ & ((\MUXPC|R[3]~20_combout\ & ((\MUXPC|R[2]~10_combout\))) # (!\MUXPC|R[3]~20_combout\ & (\MUXPC|R[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~9_combout\,
	datab => \MUXPC|R[2]~10_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \MUXPC|R[2]~21_combout\);

-- Location: LCCOMB_X26_Y11_N8
\InstMemo|mem~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~7_combout\ = (\MUXPC|R[6]~14_combout\ & (\MUXPC|R[2]~21_combout\ $ (((!\MUXPC|R[4]~16_combout\ & !\MUXPC|R[5]~18_combout\))))) # (!\MUXPC|R[6]~14_combout\ & ((\MUXPC|R[4]~16_combout\ & ((\MUXPC|R[5]~18_combout\))) # (!\MUXPC|R[4]~16_combout\ 
-- & (\MUXPC|R[2]~21_combout\ & !\MUXPC|R[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[4]~16_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[5]~18_combout\,
	combout => \InstMemo|mem~7_combout\);

-- Location: LCCOMB_X26_Y11_N26
\InstMemo|mem~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~6_combout\ = (\MUXPC|R[6]~14_combout\ & ((\MUXPC|R[2]~21_combout\ $ (\MUXPC|R[5]~18_combout\)))) # (!\MUXPC|R[6]~14_combout\ & (!\MUXPC|R[4]~16_combout\ & (\MUXPC|R[2]~21_combout\ & \MUXPC|R[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[4]~16_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[5]~18_combout\,
	combout => \InstMemo|mem~6_combout\);

-- Location: LCCOMB_X26_Y11_N18
\InstMemo|mem~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~8_combout\ = (\MUXPC|R[3]~20_combout\ & (!\InstMemo|mem~7_combout\)) # (!\MUXPC|R[3]~20_combout\ & ((\InstMemo|mem~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMemo|mem~7_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \InstMemo|mem~6_combout\,
	combout => \InstMemo|mem~8_combout\);

-- Location: LCCOMB_X24_Y10_N2
\MUXPC|R[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|R[3]~19_combout\ = (!\CUPORT|Mux9~3_combout\ & ((\CUPORT|Mux6~2_combout\ & ((\ADDBRANCH|Add0~6_combout\))) # (!\CUPORT|Mux6~2_combout\ & (\ADDPC|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUPORT|Mux6~2_combout\,
	datab => \ADDPC|Add0~0_combout\,
	datac => \ADDBRANCH|Add0~6_combout\,
	datad => \CUPORT|Mux9~3_combout\,
	combout => \MUXPC|R[3]~19_combout\);

-- Location: LCCOMB_X24_Y10_N0
\MUXPC|R[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|R[3]~20_combout\ = (!\CUPORT|Mux11~7_combout\ & ((\MUXPC|R[3]~19_combout\) # ((\InstMemo|mem~8_combout\ & \CUPORT|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUPORT|Mux11~7_combout\,
	datab => \MUXPC|R[3]~19_combout\,
	datac => \InstMemo|mem~8_combout\,
	datad => \CUPORT|Mux9~3_combout\,
	combout => \MUXPC|R[3]~20_combout\);

-- Location: LCCOMB_X25_Y10_N30
\InstMemo|mem~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~10_combout\ = (\MUXPC|R[2]~21_combout\) # ((\MUXPC|R[5]~18_combout\ & (\MUXPC|R[4]~16_combout\ $ (!\MUXPC|R[3]~20_combout\))) # (!\MUXPC|R[5]~18_combout\ & ((\MUXPC|R[4]~16_combout\) # (\MUXPC|R[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~10_combout\);

-- Location: LCCOMB_X25_Y10_N12
\InstMemo|mem~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~9_combout\ = (\MUXPC|R[4]~16_combout\ & (\MUXPC|R[5]~18_combout\ $ (((\MUXPC|R[2]~21_combout\) # (!\MUXPC|R[3]~20_combout\))))) # (!\MUXPC|R[4]~16_combout\ & (\MUXPC|R[2]~21_combout\ & (\MUXPC|R[5]~18_combout\ $ (\MUXPC|R[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~9_combout\);

-- Location: LCCOMB_X25_Y10_N16
\InstMemo|mem~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~11_combout\ = (\MUXPC|R[6]~14_combout\ & (!\InstMemo|mem~10_combout\)) # (!\MUXPC|R[6]~14_combout\ & ((\InstMemo|mem~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMemo|mem~10_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	datad => \InstMemo|mem~9_combout\,
	combout => \InstMemo|mem~11_combout\);

-- Location: LCCOMB_X25_Y11_N18
\CUPORT|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUPORT|Mux6~1_combout\ = (\InstMemo|mem~40_combout\ & (!\InstMemo|mem~45_combout\ & (!\InstMemo|mem~42_combout\))) # (!\InstMemo|mem~40_combout\ & (!\InstMemo|mem~49_combout\ & (\InstMemo|mem~45_combout\ $ (\InstMemo|mem~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~45_combout\,
	datab => \InstMemo|mem~42_combout\,
	datac => \InstMemo|mem~49_combout\,
	datad => \InstMemo|mem~40_combout\,
	combout => \CUPORT|Mux6~1_combout\);

-- Location: LCCOMB_X25_Y10_N24
\CUPORT|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUPORT|Mux6~2_combout\ = (\CUPORT|Mux6~1_combout\ & !\InstMemo|mem~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CUPORT|Mux6~1_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \CUPORT|Mux6~2_combout\);

-- Location: LCCOMB_X24_Y10_N14
\MUXPC|R[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|R[4]~15_combout\ = (!\CUPORT|Mux9~3_combout\ & ((\CUPORT|Mux6~2_combout\ & ((\ADDBRANCH|Add0~8_combout\))) # (!\CUPORT|Mux6~2_combout\ & (\ADDPC|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDPC|Add0~2_combout\,
	datab => \ADDBRANCH|Add0~8_combout\,
	datac => \CUPORT|Mux6~2_combout\,
	datad => \CUPORT|Mux9~3_combout\,
	combout => \MUXPC|R[4]~15_combout\);

-- Location: LCCOMB_X24_Y10_N16
\MUXPC|R[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|R[4]~16_combout\ = (!\CUPORT|Mux11~7_combout\ & ((\MUXPC|R[4]~15_combout\) # ((\InstMemo|mem~11_combout\ & \CUPORT|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUPORT|Mux11~7_combout\,
	datab => \InstMemo|mem~11_combout\,
	datac => \MUXPC|R[4]~15_combout\,
	datad => \CUPORT|Mux9~3_combout\,
	combout => \MUXPC|R[4]~16_combout\);

-- Location: LCCOMB_X26_Y9_N26
\InstMemo|mem~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~15_combout\ = (!\MUXPC|R[2]~21_combout\ & (\MUXPC|R[5]~18_combout\ & ((!\MUXPC|R[4]~16_combout\) # (!\MUXPC|R[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[5]~18_combout\,
	combout => \InstMemo|mem~15_combout\);

-- Location: LCCOMB_X25_Y9_N24
\InstMemo|mem~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~16_combout\ = (\MUXPC|R[6]~14_combout\ & \InstMemo|mem~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXPC|R[6]~14_combout\,
	datac => \InstMemo|mem~15_combout\,
	combout => \InstMemo|mem~16_combout\);

-- Location: LCCOMB_X24_Y10_N30
\ADDBRANCH|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ADDBRANCH|Add0~12_combout\ = \ADDPC|Add0~6_combout\ $ (\ADDBRANCH|Add0~11\ $ (!\InstMemo|mem~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ADDPC|Add0~6_combout\,
	datad => \InstMemo|mem~16_combout\,
	cin => \ADDBRANCH|Add0~11\,
	combout => \ADDBRANCH|Add0~12_combout\);

-- Location: LCCOMB_X25_Y10_N14
\MUXPC|R[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|R[6]~13_combout\ = (\CUPORT|Mux6~1_combout\ & ((\InstMemo|mem~47_combout\ & (\ADDPC|Add0~6_combout\)) # (!\InstMemo|mem~47_combout\ & ((\ADDBRANCH|Add0~12_combout\))))) # (!\CUPORT|Mux6~1_combout\ & (\ADDPC|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADDPC|Add0~6_combout\,
	datab => \CUPORT|Mux6~1_combout\,
	datac => \ADDBRANCH|Add0~12_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \MUXPC|R[6]~13_combout\);

-- Location: LCCOMB_X24_Y10_N20
\MUXPC|R[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXPC|R[6]~14_combout\ = (!\CUPORT|Mux11~7_combout\ & ((\CUPORT|Mux9~3_combout\ & (\InstMemo|mem~16_combout\)) # (!\CUPORT|Mux9~3_combout\ & ((\MUXPC|R[6]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CUPORT|Mux11~7_combout\,
	datab => \InstMemo|mem~16_combout\,
	datac => \MUXPC|R[6]~13_combout\,
	datad => \CUPORT|Mux9~3_combout\,
	combout => \MUXPC|R[6]~14_combout\);

-- Location: LCCOMB_X25_Y11_N22
\CUPORT|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUPORT|Mux1~0_combout\ = (\InstMemo|mem~40_combout\ & ((\InstMemo|mem~45_combout\) # ((\InstMemo|mem~42_combout\)))) # (!\InstMemo|mem~40_combout\ & ((\InstMemo|mem~49_combout\) # ((\InstMemo|mem~45_combout\ & \InstMemo|mem~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~45_combout\,
	datab => \InstMemo|mem~42_combout\,
	datac => \InstMemo|mem~49_combout\,
	datad => \InstMemo|mem~40_combout\,
	combout => \CUPORT|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y9_N18
\ULAA|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~38_combout\ = (((!\CUPORT|Mux1~0_combout\ & !\InstMemo|mem~47_combout\)) # (!\MUXPC|R[6]~14_combout\)) # (!\InstMemo|mem~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~15_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \CUPORT|Mux1~0_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \ULAA|Add1~38_combout\);

-- Location: LCCOMB_X25_Y11_N8
\CUPORT|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUPORT|Mux0~0_combout\ = (\InstMemo|mem~42_combout\ & (!\InstMemo|mem~45_combout\ & (!\InstMemo|mem~47_combout\ & !\InstMemo|mem~40_combout\))) # (!\InstMemo|mem~42_combout\ & (\InstMemo|mem~40_combout\ $ (((\InstMemo|mem~45_combout\ & 
-- !\InstMemo|mem~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~45_combout\,
	datab => \InstMemo|mem~42_combout\,
	datac => \InstMemo|mem~47_combout\,
	datad => \InstMemo|mem~40_combout\,
	combout => \CUPORT|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y11_N10
\CUPORT|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUPORT|Mux0~1_combout\ = (\CUPORT|Mux0~0_combout\ & ((\InstMemo|mem~49_combout\ & (\InstMemo|mem~40_combout\)) # (!\InstMemo|mem~49_combout\ & ((!\InstMemo|mem~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~40_combout\,
	datab => \InstMemo|mem~49_combout\,
	datac => \InstMemo|mem~47_combout\,
	datad => \CUPORT|Mux0~0_combout\,
	combout => \CUPORT|Mux0~1_combout\);

-- Location: CLKCTRL_G6
\CUPORT|Mux6~2clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CUPORT|Mux6~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CUPORT|Mux6~2clkctrl_outclk\);

-- Location: LCCOMB_X25_Y9_N12
\ULAC|ulaop[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|ulaop\(2) = (!\CUPORT|Mux0~1_combout\ & ((GLOBAL(\CUPORT|Mux6~2clkctrl_outclk\) & ((\ULAC|ulaop\(2)))) # (!GLOBAL(\CUPORT|Mux6~2clkctrl_outclk\) & (\ULAC|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAC|Mux1~1_combout\,
	datab => \CUPORT|Mux0~1_combout\,
	datac => \CUPORT|Mux6~2clkctrl_outclk\,
	datad => \ULAC|ulaop\(2),
	combout => \ULAC|ulaop\(2));

-- Location: LCCOMB_X25_Y9_N22
\ULAC|ulaop[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|ulaop\(1) = (\CUPORT|Mux0~1_combout\) # ((GLOBAL(\CUPORT|Mux6~2clkctrl_outclk\) & ((\ULAC|ulaop\(1)))) # (!GLOBAL(\CUPORT|Mux6~2clkctrl_outclk\) & (!\ULAC|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAC|Mux2~1_combout\,
	datab => \CUPORT|Mux0~1_combout\,
	datac => \CUPORT|Mux6~2clkctrl_outclk\,
	datad => \ULAC|ulaop\(1),
	combout => \ULAC|ulaop\(1));

-- Location: LCCOMB_X26_Y9_N14
\ULAC|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|Equal0~8_combout\ = (\CUPORT|Mux6~1_combout\ & (\CUPORT|Mux0~1_combout\ & !\InstMemo|mem~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CUPORT|Mux6~1_combout\,
	datac => \CUPORT|Mux0~1_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \ULAC|Equal0~8_combout\);

-- Location: LCCOMB_X26_Y9_N20
\ULAC|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|Equal0~7_combout\ = (\CUPORT|Mux0~1_combout\ & ((\InstMemo|mem~47_combout\) # (!\CUPORT|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CUPORT|Mux6~1_combout\,
	datac => \CUPORT|Mux0~1_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \ULAC|Equal0~7_combout\);

-- Location: LCCOMB_X26_Y9_N30
\ULAC|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|Equal0~6_combout\ = (\CUPORT|Mux0~1_combout\) # ((\CUPORT|Mux6~1_combout\ & !\InstMemo|mem~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CUPORT|Mux6~1_combout\,
	datac => \CUPORT|Mux0~1_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \ULAC|Equal0~6_combout\);

-- Location: LCCOMB_X26_Y9_N28
\ULAC|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|Mux0~5_combout\ = (!\InstMemo|mem~16_combout\ & ((\MUXPC|R[5]~18_combout\ & ((\InstMemo|mem~13_combout\))) # (!\MUXPC|R[5]~18_combout\ & (!\InstMemo|mem~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datab => \InstMemo|mem~16_combout\,
	datac => \InstMemo|mem~12_combout\,
	datad => \InstMemo|mem~13_combout\,
	combout => \ULAC|Mux0~5_combout\);

-- Location: LCCOMB_X25_Y10_N6
\InstMemo|mem~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~17_combout\ = (!\MUXPC|R[3]~20_combout\ & ((\MUXPC|R[5]~18_combout\ & (\MUXPC|R[4]~16_combout\ & !\MUXPC|R[2]~21_combout\)) # (!\MUXPC|R[5]~18_combout\ & (!\MUXPC|R[4]~16_combout\ & \MUXPC|R[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~17_combout\);

-- Location: LCCOMB_X26_Y9_N4
\InstMemo|mem~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~18_combout\ = (\MUXPC|R[5]~18_combout\ & (((\MUXPC|R[4]~16_combout\) # (!\MUXPC|R[2]~21_combout\)))) # (!\MUXPC|R[5]~18_combout\ & (\MUXPC|R[3]~20_combout\ & ((!\MUXPC|R[2]~21_combout\) # (!\MUXPC|R[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[5]~18_combout\,
	combout => \InstMemo|mem~18_combout\);

-- Location: LCCOMB_X25_Y9_N26
\InstMemo|mem~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~19_combout\ = (\MUXPC|R[6]~14_combout\ & (\InstMemo|mem~17_combout\)) # (!\MUXPC|R[6]~14_combout\ & ((!\InstMemo|mem~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUXPC|R[6]~14_combout\,
	datac => \InstMemo|mem~17_combout\,
	datad => \InstMemo|mem~18_combout\,
	combout => \InstMemo|mem~19_combout\);

-- Location: LCCOMB_X26_Y9_N18
\ULAC|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|Mux3~0_combout\ = (\InstMemo|mem~11_combout\ & (((!\InstMemo|mem~5_combout\)) # (!\InstMemo|mem~19_combout\))) # (!\InstMemo|mem~11_combout\ & ((\InstMemo|mem~19_combout\ & ((\InstMemo|mem~5_combout\) # (!\InstMemo|mem~8_combout\))) # 
-- (!\InstMemo|mem~19_combout\ & (\InstMemo|mem~8_combout\ $ (\InstMemo|mem~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~11_combout\,
	datab => \InstMemo|mem~19_combout\,
	datac => \InstMemo|mem~8_combout\,
	datad => \InstMemo|mem~5_combout\,
	combout => \ULAC|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y9_N0
\ULAC|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|Mux3~1_combout\ = (\ULAC|Mux3~0_combout\) # (!\ULAC|Mux0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAC|Mux0~5_combout\,
	datad => \ULAC|Mux3~0_combout\,
	combout => \ULAC|Mux3~1_combout\);

-- Location: LCCOMB_X26_Y9_N10
\ULAC|ulaop[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|ulaop[0]~0_combout\ = (\ULAC|Equal0~6_combout\ & ((\ULAC|ulaop\(0)))) # (!\ULAC|Equal0~6_combout\ & (!\ULAC|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAC|Equal0~6_combout\,
	datac => \ULAC|Mux3~1_combout\,
	datad => \ULAC|ulaop\(0),
	combout => \ULAC|ulaop[0]~0_combout\);

-- Location: LCCOMB_X26_Y9_N12
\ULAC|ulaop[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|ulaop\(0) = (!\ULAC|Equal0~7_combout\ & ((\ULAC|Equal0~8_combout\) # (\ULAC|ulaop[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULAC|Equal0~8_combout\,
	datac => \ULAC|Equal0~7_combout\,
	datad => \ULAC|ulaop[0]~0_combout\,
	combout => \ULAC|ulaop\(0));

-- Location: LCCOMB_X25_Y9_N2
\ULAC|ulaop[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAC|ulaop\(3) = (!\CUPORT|Mux0~1_combout\ & ((GLOBAL(\CUPORT|Mux6~2clkctrl_outclk\) & ((\ULAC|ulaop\(3)))) # (!GLOBAL(\CUPORT|Mux6~2clkctrl_outclk\) & (\ULAC|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAC|Mux0~4_combout\,
	datab => \CUPORT|Mux0~1_combout\,
	datac => \CUPORT|Mux6~2clkctrl_outclk\,
	datad => \ULAC|ulaop\(3),
	combout => \ULAC|ulaop\(3));

-- Location: LCCOMB_X25_Y9_N30
\ULAA|Mux34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Mux34~1_combout\ = (\ULAC|ulaop\(0) & (!\ULAC|ulaop\(3) & (\ULAC|ulaop\(2) $ (\ULAC|ulaop\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAC|ulaop\(2),
	datab => \ULAC|ulaop\(1),
	datac => \ULAC|ulaop\(0),
	datad => \ULAC|ulaop\(3),
	combout => \ULAA|Mux34~1_combout\);

-- Location: LCCOMB_X24_Y9_N20
\ULAA|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~23_combout\ = (\ULAA|Mux34~1_combout\ & ((\ULAC|ulaop\(2) & ((\ULAA|Add1~38_combout\))) # (!\ULAC|ulaop\(2) & (\ULAA|Add1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~21_combout\,
	datab => \ULAA|Add1~38_combout\,
	datac => \ULAC|ulaop\(2),
	datad => \ULAA|Mux34~1_combout\,
	combout => \ULAA|Add1~23_combout\);

-- Location: LCCOMB_X25_Y9_N0
\ULAA|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~32_combout\ = ((!\CUPORT|Mux1~0_combout\ & !\InstMemo|mem~47_combout\)) # (!\InstMemo|mem~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMemo|mem~19_combout\,
	datac => \CUPORT|Mux1~0_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \ULAA|Add1~32_combout\);

-- Location: LCCOMB_X24_Y9_N16
\ULAA|Add1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~33_combout\ = (\ULAA|Mux34~1_combout\ & ((\ULAC|ulaop\(2) & ((\ULAA|Add1~32_combout\))) # (!\ULAC|ulaop\(2) & (\ULAA|Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~26_combout\,
	datab => \ULAA|Add1~32_combout\,
	datac => \ULAC|ulaop\(2),
	datad => \ULAA|Mux34~1_combout\,
	combout => \ULAA|Add1~33_combout\);

-- Location: LCCOMB_X25_Y9_N20
\ULAA|Add1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~37_combout\ = (\ULAA|Add1~12_combout\ & (\MUXPC|R[6]~14_combout\ & \InstMemo|mem~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~12_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \InstMemo|mem~15_combout\,
	combout => \ULAA|Add1~37_combout\);

-- Location: LCCOMB_X24_Y8_N22
\rtl~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~36_combout\ = (!\ULAA|Add1~23_combout\ & (!\ULAA|Add1~37_combout\ & ((\ULAA|Add1~39_combout\) # (\ULAA|Add1~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~39_combout\,
	datab => \ULAA|Add1~23_combout\,
	datac => \ULAA|Add1~33_combout\,
	datad => \ULAA|Add1~37_combout\,
	combout => \rtl~36_combout\);

-- Location: LCCOMB_X25_Y11_N0
\CUPORT|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUPORT|Mux5~0_combout\ = (\InstMemo|mem~40_combout\ & (\InstMemo|mem~49_combout\ & (\InstMemo|mem~47_combout\ & \CUPORT|Mux11~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~40_combout\,
	datab => \InstMemo|mem~49_combout\,
	datac => \InstMemo|mem~47_combout\,
	datad => \CUPORT|Mux11~6_combout\,
	combout => \CUPORT|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y9_N30
\ULAA|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~24_combout\ = ((!\CUPORT|Mux1~0_combout\ & !\InstMemo|mem~47_combout\)) # (!\InstMemo|mem~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CUPORT|Mux1~0_combout\,
	datac => \InstMemo|mem~11_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \ULAA|Add1~24_combout\);

-- Location: LCCOMB_X24_Y9_N28
\ULAA|Add1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~25_combout\ = (\ULAA|Mux34~1_combout\ & ((\ULAC|ulaop\(2) & ((\ULAA|Add1~24_combout\))) # (!\ULAC|ulaop\(2) & (\ULAA|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~16_combout\,
	datab => \ULAA|Add1~24_combout\,
	datac => \ULAC|ulaop\(2),
	datad => \ULAA|Mux34~1_combout\,
	combout => \ULAA|Add1~25_combout\);

-- Location: LCCOMB_X24_Y9_N2
\rtl~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~39_combout\ = (\CUPORT|Mux5~0_combout\ & ((\ULAA|Add1~25_combout\) # ((\ULAA|Add1~12_combout\ & \InstMemo|mem~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~12_combout\,
	datab => \InstMemo|mem~11_combout\,
	datac => \CUPORT|Mux5~0_combout\,
	datad => \ULAA|Add1~25_combout\,
	combout => \rtl~39_combout\);

-- Location: LCCOMB_X24_Y8_N26
\DataMemo|mem~4191\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4191_combout\ = (\DataMemo|mem~904_regout\) # ((\rtl~35_combout\ & (\rtl~36_combout\ & \rtl~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~35_combout\,
	datab => \rtl~36_combout\,
	datac => \DataMemo|mem~904_regout\,
	datad => \rtl~39_combout\,
	combout => \DataMemo|mem~4191_combout\);

-- Location: LCFF_X24_Y8_N27
\DataMemo|mem~904\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~904_regout\);

-- Location: LCCOMB_X25_Y9_N10
\ULAA|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~36_combout\ = (\ULAA|Add1~12_combout\ & ((\MUXPC|R[5]~18_combout\ & (!\InstMemo|mem~13_combout\)) # (!\MUXPC|R[5]~18_combout\ & ((\InstMemo|mem~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~12_combout\,
	datab => \InstMemo|mem~13_combout\,
	datac => \MUXPC|R[5]~18_combout\,
	datad => \InstMemo|mem~12_combout\,
	combout => \ULAA|Add1~36_combout\);

-- Location: LCCOMB_X24_Y8_N28
\rtl~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~32_combout\ = (\ULAA|Add1~20_combout\ & ((\ULAA|Add1~37_combout\) # ((\ULAA|Add1~23_combout\)))) # (!\ULAA|Add1~20_combout\ & (\ULAA|Add1~36_combout\ & ((\ULAA|Add1~37_combout\) # (\ULAA|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~20_combout\,
	datab => \ULAA|Add1~37_combout\,
	datac => \ULAA|Add1~23_combout\,
	datad => \ULAA|Add1~36_combout\,
	combout => \rtl~32_combout\);

-- Location: LCCOMB_X25_Y9_N16
\ULAA|Add1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~39_combout\ = (\ULAA|Add1~12_combout\ & ((\MUXPC|R[6]~14_combout\ & (\InstMemo|mem~17_combout\)) # (!\MUXPC|R[6]~14_combout\ & ((!\InstMemo|mem~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~12_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \InstMemo|mem~17_combout\,
	datad => \InstMemo|mem~18_combout\,
	combout => \ULAA|Add1~39_combout\);

-- Location: LCCOMB_X24_Y8_N18
\ULAA|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~34_combout\ = (\ULAA|Add1~33_combout\) # (\ULAA|Add1~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULAA|Add1~33_combout\,
	datad => \ULAA|Add1~39_combout\,
	combout => \ULAA|Add1~34_combout\);

-- Location: LCCOMB_X24_Y8_N12
\DataMemo|mem~4192\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4192_combout\ = (\DataMemo|mem~776_regout\) # ((\rtl~40_combout\ & (\rtl~32_combout\ & !\ULAA|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~40_combout\,
	datab => \rtl~32_combout\,
	datac => \DataMemo|mem~776_regout\,
	datad => \ULAA|Add1~34_combout\,
	combout => \DataMemo|mem~4192_combout\);

-- Location: LCFF_X24_Y8_N13
\DataMemo|mem~776\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~776_regout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataSw[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataSw(3),
	combout => \DataSw~combout\(3));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataSw[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataSw(2),
	combout => \DataSw~combout\(2));

-- Location: LCCOMB_X25_Y8_N24
\DataMemo|mem~4143\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4143_combout\ = (\DataSw~combout\(3) & (((\DataSw~combout\(2))))) # (!\DataSw~combout\(3) & ((\DataSw~combout\(2) & ((!\DataMemo|mem~776_regout\))) # (!\DataSw~combout\(2) & (!\DataMemo|mem~648_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~648_regout\,
	datab => \DataMemo|mem~776_regout\,
	datac => \DataSw~combout\(3),
	datad => \DataSw~combout\(2),
	combout => \DataMemo|mem~4143_combout\);

-- Location: LCCOMB_X26_Y10_N14
\InstMemo|mem~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~20_combout\ = (\MUXPC|R[2]~21_combout\ & (!\MUXPC|R[5]~18_combout\ & (\MUXPC|R[4]~16_combout\ $ (\MUXPC|R[3]~20_combout\)))) # (!\MUXPC|R[2]~21_combout\ & (\MUXPC|R[4]~16_combout\ & (!\MUXPC|R[3]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~21_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[5]~18_combout\,
	combout => \InstMemo|mem~20_combout\);

-- Location: LCCOMB_X26_Y10_N16
\InstMemo|mem~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~21_combout\ = (\InstMemo|mem~20_combout\ & \MUXPC|R[6]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMemo|mem~20_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	combout => \InstMemo|mem~21_combout\);

-- Location: LCCOMB_X25_Y9_N28
\CUPORT|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CUPORT|Mux1~1_combout\ = (\CUPORT|Mux1~0_combout\) # (\InstMemo|mem~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CUPORT|Mux1~0_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \CUPORT|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y9_N14
\MUXORIGULA|R[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXORIGULA|R[0]~1_combout\ = (\InstMemo|mem~5_combout\ & ((\CUPORT|Mux1~0_combout\) # (\InstMemo|mem~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMemo|mem~5_combout\,
	datac => \CUPORT|Mux1~0_combout\,
	datad => \InstMemo|mem~47_combout\,
	combout => \MUXORIGULA|R[0]~1_combout\);

-- Location: LCCOMB_X24_Y9_N4
\ULAA|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~15_cout\ = CARRY((!\MUXORIGULA|R[1]~0_combout\ & !\MUXORIGULA|R[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXORIGULA|R[1]~0_combout\,
	datab => \MUXORIGULA|R[0]~1_combout\,
	datad => VCC,
	cout => \ULAA|Add1~15_cout\);

-- Location: LCCOMB_X24_Y9_N8
\ULAA|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~18_combout\ = (\ULAA|Add1~17\ & (((!\CUPORT|Mux1~1_combout\) # (!\InstMemo|mem~14_combout\)))) # (!\ULAA|Add1~17\ & ((((!\CUPORT|Mux1~1_combout\) # (!\InstMemo|mem~14_combout\)))))
-- \ULAA|Add1~19\ = CARRY((!\ULAA|Add1~17\ & ((!\CUPORT|Mux1~1_combout\) # (!\InstMemo|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~14_combout\,
	datab => \CUPORT|Mux1~1_combout\,
	datad => VCC,
	cin => \ULAA|Add1~17\,
	combout => \ULAA|Add1~18_combout\,
	cout => \ULAA|Add1~19\);

-- Location: LCCOMB_X24_Y9_N14
\ULAA|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~28_combout\ = \ULAA|Add1~27\ $ (((!\CUPORT|Mux1~1_combout\) # (!\InstMemo|mem~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \InstMemo|mem~21_combout\,
	datad => \CUPORT|Mux1~1_combout\,
	cin => \ULAA|Add1~27\,
	combout => \ULAA|Add1~28_combout\);

-- Location: LCCOMB_X24_Y9_N0
\ULAA|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~30_combout\ = (\ULAC|ulaop\(2) & (((!\CUPORT|Mux1~1_combout\)) # (!\InstMemo|mem~21_combout\))) # (!\ULAC|ulaop\(2) & (((\ULAA|Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~21_combout\,
	datab => \ULAA|Add1~28_combout\,
	datac => \ULAC|ulaop\(2),
	datad => \CUPORT|Mux1~1_combout\,
	combout => \ULAA|Add1~30_combout\);

-- Location: LCCOMB_X24_Y9_N22
\ULAA|Add1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~31_combout\ = (\ULAA|Add1~12_combout\ & ((\InstMemo|mem~21_combout\) # ((\ULAA|Add1~30_combout\ & \ULAA|Mux34~1_combout\)))) # (!\ULAA|Add1~12_combout\ & (\ULAA|Add1~30_combout\ & ((\ULAA|Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~12_combout\,
	datab => \ULAA|Add1~30_combout\,
	datac => \InstMemo|mem~21_combout\,
	datad => \ULAA|Mux34~1_combout\,
	combout => \ULAA|Add1~31_combout\);

-- Location: LCCOMB_X24_Y8_N24
\rtl~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~40_combout\ = (\rtl~39_combout\ & \ULAA|Add1~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~39_combout\,
	datad => \ULAA|Add1~31_combout\,
	combout => \rtl~40_combout\);

-- Location: LCCOMB_X25_Y8_N22
\DataMemo|mem~4194\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4194_combout\ = (\DataMemo|mem~1032_regout\) # ((\rtl~32_combout\ & (\rtl~40_combout\ & \ULAA|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~32_combout\,
	datab => \rtl~40_combout\,
	datac => \DataMemo|mem~1032_regout\,
	datad => \ULAA|Add1~34_combout\,
	combout => \DataMemo|mem~4194_combout\);

-- Location: LCFF_X25_Y8_N23
\DataMemo|mem~1032\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~1032_regout\);

-- Location: LCCOMB_X25_Y8_N16
\DataMemo|mem~4144\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4144_combout\ = (\DataSw~combout\(3) & ((\DataMemo|mem~4143_combout\ & ((!\DataMemo|mem~1032_regout\))) # (!\DataMemo|mem~4143_combout\ & (!\DataMemo|mem~904_regout\)))) # (!\DataSw~combout\(3) & (((\DataMemo|mem~4143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(3),
	datab => \DataMemo|mem~904_regout\,
	datac => \DataMemo|mem~4143_combout\,
	datad => \DataMemo|mem~1032_regout\,
	combout => \DataMemo|mem~4144_combout\);

-- Location: LCCOMB_X24_Y8_N8
\rtl~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~37_combout\ = (!\ULAA|Add1~39_combout\ & (!\ULAA|Add1~23_combout\ & (!\ULAA|Add1~33_combout\ & !\ULAA|Add1~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~39_combout\,
	datab => \ULAA|Add1~23_combout\,
	datac => \ULAA|Add1~33_combout\,
	datad => \ULAA|Add1~37_combout\,
	combout => \rtl~37_combout\);

-- Location: LCCOMB_X24_Y9_N26
\rtl~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~33_combout\ = (\CUPORT|Mux5~0_combout\ & (!\ULAA|Add1~25_combout\ & ((!\InstMemo|mem~11_combout\) # (!\ULAA|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~12_combout\,
	datab => \InstMemo|mem~11_combout\,
	datac => \CUPORT|Mux5~0_combout\,
	datad => \ULAA|Add1~25_combout\,
	combout => \rtl~33_combout\);

-- Location: LCCOMB_X25_Y8_N18
\DataMemo|mem~4181\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4181_combout\ = (\DataMemo|mem~616_regout\) # ((\rtl~35_combout\ & (\rtl~37_combout\ & \rtl~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~35_combout\,
	datab => \rtl~37_combout\,
	datac => \DataMemo|mem~616_regout\,
	datad => \rtl~33_combout\,
	combout => \DataMemo|mem~4181_combout\);

-- Location: LCFF_X25_Y8_N19
\DataMemo|mem~616\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~616_regout\);

-- Location: LCCOMB_X24_Y9_N18
\ULAA|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~20_combout\ = (\ULAA|Mux34~1_combout\ & ((\ULAC|ulaop\(2) & (\ULAA|Add1~13_combout\)) # (!\ULAC|ulaop\(2) & ((\ULAA|Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~13_combout\,
	datab => \ULAC|ulaop\(2),
	datac => \ULAA|Add1~18_combout\,
	datad => \ULAA|Mux34~1_combout\,
	combout => \ULAA|Add1~20_combout\);

-- Location: LCCOMB_X24_Y8_N16
\rtl~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~35_combout\ = (\ULAA|Add1~31_combout\ & ((\ULAA|Add1~20_combout\) # (\ULAA|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~31_combout\,
	datac => \ULAA|Add1~20_combout\,
	datad => \ULAA|Add1~36_combout\,
	combout => \rtl~35_combout\);

-- Location: LCCOMB_X24_Y8_N0
\DataMemo|mem~4180\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4180_combout\ = (\DataMemo|mem~872_regout\) # ((\rtl~33_combout\ & (\rtl~35_combout\ & \rtl~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~33_combout\,
	datab => \rtl~35_combout\,
	datac => \DataMemo|mem~872_regout\,
	datad => \rtl~36_combout\,
	combout => \DataMemo|mem~4180_combout\);

-- Location: LCFF_X24_Y8_N1
\DataMemo|mem~872\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~872_regout\);

-- Location: LCCOMB_X25_Y8_N8
\DataMemo|mem~4136\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4136_combout\ = (\DataSw~combout\(3) & (((\DataSw~combout\(2)) # (!\DataMemo|mem~872_regout\)))) # (!\DataSw~combout\(3) & (!\DataMemo|mem~616_regout\ & ((!\DataSw~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(3),
	datab => \DataMemo|mem~616_regout\,
	datac => \DataMemo|mem~872_regout\,
	datad => \DataSw~combout\(2),
	combout => \DataMemo|mem~4136_combout\);

-- Location: LCCOMB_X25_Y8_N26
\rtl~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~38_combout\ = (\ULAA|Add1~31_combout\ & \rtl~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULAA|Add1~31_combout\,
	datad => \rtl~33_combout\,
	combout => \rtl~38_combout\);

-- Location: LCCOMB_X25_Y8_N6
\DataMemo|mem~4182\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4182_combout\ = (\DataMemo|mem~1000_regout\) # ((\rtl~32_combout\ & (\ULAA|Add1~34_combout\ & \rtl~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~32_combout\,
	datab => \ULAA|Add1~34_combout\,
	datac => \DataMemo|mem~1000_regout\,
	datad => \rtl~38_combout\,
	combout => \DataMemo|mem~4182_combout\);

-- Location: LCFF_X25_Y8_N7
\DataMemo|mem~1000\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~1000_regout\);

-- Location: LCCOMB_X25_Y8_N0
\DataMemo|mem~4137\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4137_combout\ = (\DataMemo|mem~4136_combout\ & (((!\DataMemo|mem~1000_regout\) # (!\DataSw~combout\(2))))) # (!\DataMemo|mem~4136_combout\ & (!\DataMemo|mem~744_regout\ & (\DataSw~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~744_regout\,
	datab => \DataMemo|mem~4136_combout\,
	datac => \DataSw~combout\(2),
	datad => \DataMemo|mem~1000_regout\,
	combout => \DataMemo|mem~4137_combout\);

-- Location: LCCOMB_X26_Y8_N2
\DataMemo|mem~4185\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4185_combout\ = (\DataMemo|mem~584_regout\) # ((!\ULAA|Add1~35_combout\ & (\rtl~40_combout\ & \rtl~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~35_combout\,
	datab => \rtl~40_combout\,
	datac => \DataMemo|mem~584_regout\,
	datad => \rtl~37_combout\,
	combout => \DataMemo|mem~4185_combout\);

-- Location: LCFF_X26_Y8_N3
\DataMemo|mem~584\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~584_regout\);

-- Location: LCCOMB_X24_Y8_N4
\rtl~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~41_combout\ = (!\ULAA|Add1~20_combout\ & (!\ULAA|Add1~36_combout\ & ((\ULAA|Add1~37_combout\) # (\ULAA|Add1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~20_combout\,
	datab => \ULAA|Add1~37_combout\,
	datac => \ULAA|Add1~23_combout\,
	datad => \ULAA|Add1~36_combout\,
	combout => \rtl~41_combout\);

-- Location: LCCOMB_X25_Y8_N30
\DataMemo|mem~4184\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4184_combout\ = (\DataMemo|mem~712_regout\) # ((\rtl~40_combout\ & (\rtl~41_combout\ & !\ULAA|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~40_combout\,
	datab => \rtl~41_combout\,
	datac => \DataMemo|mem~712_regout\,
	datad => \ULAA|Add1~34_combout\,
	combout => \DataMemo|mem~4184_combout\);

-- Location: LCFF_X25_Y8_N31
\DataMemo|mem~712\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~712_regout\);

-- Location: LCCOMB_X26_Y8_N0
\DataMemo|mem~4138\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4138_combout\ = (\DataSw~combout\(3) & (((\DataSw~combout\(2))))) # (!\DataSw~combout\(3) & ((\DataSw~combout\(2) & ((!\DataMemo|mem~712_regout\))) # (!\DataSw~combout\(2) & (!\DataMemo|mem~584_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(3),
	datab => \DataMemo|mem~584_regout\,
	datac => \DataMemo|mem~712_regout\,
	datad => \DataSw~combout\(2),
	combout => \DataMemo|mem~4138_combout\);

-- Location: LCCOMB_X26_Y8_N10
\DataMemo|mem~4186\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4186_combout\ = (\DataMemo|mem~968_regout\) # ((\ULAA|Add1~34_combout\ & (\rtl~41_combout\ & \rtl~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~34_combout\,
	datab => \rtl~41_combout\,
	datac => \DataMemo|mem~968_regout\,
	datad => \rtl~40_combout\,
	combout => \DataMemo|mem~4186_combout\);

-- Location: LCFF_X26_Y8_N11
\DataMemo|mem~968\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~968_regout\);

-- Location: LCCOMB_X26_Y8_N20
\DataMemo|mem~4139\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4139_combout\ = (\DataMemo|mem~4138_combout\ & (((!\DataMemo|mem~968_regout\) # (!\DataSw~combout\(3))))) # (!\DataMemo|mem~4138_combout\ & (!\DataMemo|mem~840_regout\ & (\DataSw~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~840_regout\,
	datab => \DataMemo|mem~4138_combout\,
	datac => \DataSw~combout\(3),
	datad => \DataMemo|mem~968_regout\,
	combout => \DataMemo|mem~4139_combout\);

-- Location: LCCOMB_X26_Y8_N30
\DataMemo|mem~4188\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4188_combout\ = (\DataMemo|mem~808_regout\) # ((!\ULAA|Add1~35_combout\ & (\rtl~36_combout\ & \rtl~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~35_combout\,
	datab => \rtl~36_combout\,
	datac => \DataMemo|mem~808_regout\,
	datad => \rtl~38_combout\,
	combout => \DataMemo|mem~4188_combout\);

-- Location: LCFF_X26_Y8_N31
\DataMemo|mem~808\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~808_regout\);

-- Location: LCCOMB_X26_Y8_N4
\DataMemo|mem~4189\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4189_combout\ = (\DataMemo|mem~552_regout\) # ((!\ULAA|Add1~35_combout\ & (\rtl~38_combout\ & \rtl~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~35_combout\,
	datab => \rtl~38_combout\,
	datac => \DataMemo|mem~552_regout\,
	datad => \rtl~37_combout\,
	combout => \DataMemo|mem~4189_combout\);

-- Location: LCFF_X26_Y8_N5
\DataMemo|mem~552\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~552_regout\);

-- Location: LCCOMB_X26_Y8_N18
\DataMemo|mem~4140\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4140_combout\ = (\DataSw~combout\(3) & (((\DataSw~combout\(2))) # (!\DataMemo|mem~808_regout\))) # (!\DataSw~combout\(3) & (((!\DataMemo|mem~552_regout\ & !\DataSw~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(3),
	datab => \DataMemo|mem~808_regout\,
	datac => \DataMemo|mem~552_regout\,
	datad => \DataSw~combout\(2),
	combout => \DataMemo|mem~4140_combout\);

-- Location: LCCOMB_X25_Y8_N4
\DataMemo|mem~4187\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4187_combout\ = (\DataMemo|mem~680_regout\) # ((\rtl~34_combout\ & (\rtl~41_combout\ & \rtl~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~34_combout\,
	datab => \rtl~41_combout\,
	datac => \DataMemo|mem~680_regout\,
	datad => \rtl~33_combout\,
	combout => \DataMemo|mem~4187_combout\);

-- Location: LCFF_X25_Y8_N5
\DataMemo|mem~680\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~680_regout\);

-- Location: LCCOMB_X26_Y8_N24
\DataMemo|mem~4141\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4141_combout\ = (\DataMemo|mem~4140_combout\ & (((!\DataSw~combout\(2))) # (!\DataMemo|mem~936_regout\))) # (!\DataMemo|mem~4140_combout\ & (((!\DataMemo|mem~680_regout\ & \DataSw~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~936_regout\,
	datab => \DataMemo|mem~4140_combout\,
	datac => \DataMemo|mem~680_regout\,
	datad => \DataSw~combout\(2),
	combout => \DataMemo|mem~4141_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataSw[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataSw(1),
	combout => \DataSw~combout\(1));

-- Location: LCCOMB_X26_Y8_N22
\DataMemo|mem~4142\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4142_combout\ = (\DataSw~combout\(0) & ((\DataMemo|mem~4139_combout\) # ((\DataSw~combout\(1))))) # (!\DataSw~combout\(0) & (((\DataMemo|mem~4141_combout\ & !\DataSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(0),
	datab => \DataMemo|mem~4139_combout\,
	datac => \DataMemo|mem~4141_combout\,
	datad => \DataSw~combout\(1),
	combout => \DataMemo|mem~4142_combout\);

-- Location: LCCOMB_X26_Y8_N28
\DataMemo|mem~4145\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4145_combout\ = (\DataSw~combout\(1) & ((\DataMemo|mem~4142_combout\ & (\DataMemo|mem~4144_combout\)) # (!\DataMemo|mem~4142_combout\ & ((\DataMemo|mem~4137_combout\))))) # (!\DataSw~combout\(1) & (((\DataMemo|mem~4142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(1),
	datab => \DataMemo|mem~4144_combout\,
	datac => \DataMemo|mem~4137_combout\,
	datad => \DataMemo|mem~4142_combout\,
	combout => \DataMemo|mem~4145_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataSw[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataSw(4),
	combout => \DataSw~combout\(4));

-- Location: LCCOMB_X27_Y8_N4
\DataMemo|mem~4210\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4210_combout\ = (\DataMemo|mem~520_regout\) # ((\rtl~44_combout\ & (\rtl~32_combout\ & \ULAA|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~44_combout\,
	datab => \rtl~32_combout\,
	datac => \DataMemo|mem~520_regout\,
	datad => \ULAA|Add1~34_combout\,
	combout => \DataMemo|mem~4210_combout\);

-- Location: LCFF_X27_Y8_N5
\DataMemo|mem~520\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4210_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~520_regout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DataSw[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DataSw(0),
	combout => \DataSw~combout\(0));

-- Location: LCCOMB_X24_Y8_N20
\rtl~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~43_combout\ = (\rtl~33_combout\ & !\ULAA|Add1~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rtl~33_combout\,
	datad => \ULAA|Add1~31_combout\,
	combout => \rtl~43_combout\);

-- Location: LCCOMB_X27_Y8_N22
\DataMemo|mem~4208\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4208_combout\ = (\DataMemo|mem~488_regout\) # ((\ULAA|Add1~34_combout\ & (\rtl~32_combout\ & \rtl~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~34_combout\,
	datab => \rtl~32_combout\,
	datac => \DataMemo|mem~488_regout\,
	datad => \rtl~43_combout\,
	combout => \DataMemo|mem~4208_combout\);

-- Location: LCFF_X27_Y8_N23
\DataMemo|mem~488\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~488_regout\);

-- Location: LCCOMB_X27_Y8_N10
\DataMemo|mem~4153\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4153_combout\ = (\DataSw~combout\(0) & (((\DataSw~combout\(1))))) # (!\DataSw~combout\(0) & ((\DataSw~combout\(1) & ((!\DataMemo|mem~488_regout\))) # (!\DataSw~combout\(1) & (!\DataMemo|mem~424_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~424_regout\,
	datab => \DataSw~combout\(0),
	datac => \DataSw~combout\(1),
	datad => \DataMemo|mem~488_regout\,
	combout => \DataMemo|mem~4153_combout\);

-- Location: LCCOMB_X27_Y8_N30
\DataMemo|mem~4154\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4154_combout\ = (\DataSw~combout\(0) & ((\DataMemo|mem~4153_combout\ & ((!\DataMemo|mem~520_regout\))) # (!\DataMemo|mem~4153_combout\ & (!\DataMemo|mem~456_regout\)))) # (!\DataSw~combout\(0) & (((\DataMemo|mem~4153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~456_regout\,
	datab => \DataMemo|mem~520_regout\,
	datac => \DataSw~combout\(0),
	datad => \DataMemo|mem~4153_combout\,
	combout => \DataMemo|mem~4154_combout\);

-- Location: LCCOMB_X25_Y9_N8
\ULAA|Mux34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Mux34~0_combout\ = (\ULAC|ulaop\(1) & ((!\ULAC|ulaop\(0)))) # (!\ULAC|ulaop\(1) & (!\ULAC|ulaop\(2) & \ULAC|ulaop\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAC|ulaop\(2),
	datab => \ULAC|ulaop\(1),
	datac => \ULAC|ulaop\(0),
	combout => \ULAA|Mux34~0_combout\);

-- Location: LCCOMB_X25_Y9_N6
\ULAA|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~12_combout\ = (\ULAA|Mux34~0_combout\ & ((\ULAA|Mux34~1_combout\) # ((\CUPORT|Mux1~1_combout\ & !\ULAC|ulaop\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Mux34~1_combout\,
	datab => \CUPORT|Mux1~1_combout\,
	datac => \ULAA|Mux34~0_combout\,
	datad => \ULAC|ulaop\(3),
	combout => \ULAA|Add1~12_combout\);

-- Location: LCCOMB_X24_Y8_N6
\ULAA|Add1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULAA|Add1~35_combout\ = (\ULAA|Add1~20_combout\) # ((\InstMemo|mem~14_combout\ & \ULAA|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~20_combout\,
	datac => \InstMemo|mem~14_combout\,
	datad => \ULAA|Add1~12_combout\,
	combout => \ULAA|Add1~35_combout\);

-- Location: LCCOMB_X22_Y8_N18
\DataMemo|mem~4204\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4204_combout\ = (\DataMemo|mem~72_regout\) # ((\rtl~44_combout\ & (!\ULAA|Add1~35_combout\ & \rtl~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~44_combout\,
	datab => \ULAA|Add1~35_combout\,
	datac => \DataMemo|mem~72_regout\,
	datad => \rtl~37_combout\,
	combout => \DataMemo|mem~4204_combout\);

-- Location: LCFF_X22_Y8_N19
\DataMemo|mem~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~72_regout\);

-- Location: LCCOMB_X22_Y8_N20
\DataMemo|mem~4205\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4205_combout\ = (\DataMemo|mem~40_regout\) # ((\rtl~43_combout\ & (!\ULAA|Add1~35_combout\ & \rtl~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~43_combout\,
	datab => \ULAA|Add1~35_combout\,
	datac => \DataMemo|mem~40_regout\,
	datad => \rtl~37_combout\,
	combout => \DataMemo|mem~4205_combout\);

-- Location: LCFF_X22_Y8_N21
\DataMemo|mem~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4205_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~40_regout\);

-- Location: LCCOMB_X22_Y8_N26
\DataMemo|mem~4150\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4150_combout\ = (\DataSw~combout\(0) & (((\DataSw~combout\(1))) # (!\DataMemo|mem~72_regout\))) # (!\DataSw~combout\(0) & (((!\DataMemo|mem~40_regout\ & !\DataSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(0),
	datab => \DataMemo|mem~72_regout\,
	datac => \DataMemo|mem~40_regout\,
	datad => \DataSw~combout\(1),
	combout => \DataMemo|mem~4150_combout\);

-- Location: LCCOMB_X22_Y8_N4
\DataMemo|mem~4206\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4206_combout\ = (\DataMemo|mem~136_regout\) # ((\rtl~44_combout\ & (\ULAA|Add1~35_combout\ & \rtl~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~44_combout\,
	datab => \ULAA|Add1~35_combout\,
	datac => \DataMemo|mem~136_regout\,
	datad => \rtl~37_combout\,
	combout => \DataMemo|mem~4206_combout\);

-- Location: LCFF_X22_Y8_N5
\DataMemo|mem~136\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4206_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~136_regout\);

-- Location: LCCOMB_X22_Y8_N10
\DataMemo|mem~4151\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4151_combout\ = (\DataMemo|mem~4150_combout\ & (((!\DataSw~combout\(1)) # (!\DataMemo|mem~136_regout\)))) # (!\DataMemo|mem~4150_combout\ & (!\DataMemo|mem~104_regout\ & ((\DataSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~104_regout\,
	datab => \DataMemo|mem~4150_combout\,
	datac => \DataMemo|mem~136_regout\,
	datad => \DataSw~combout\(1),
	combout => \DataMemo|mem~4151_combout\);

-- Location: LCCOMB_X27_Y9_N28
\DataMemo|mem~4152\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4152_combout\ = (\DataSw~combout\(3) & (((\DataSw~combout\(2))))) # (!\DataSw~combout\(3) & ((\DataSw~combout\(2) & (\DataMemo|mem~4149_combout\)) # (!\DataSw~combout\(2) & ((\DataMemo|mem~4151_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4149_combout\,
	datab => \DataSw~combout\(3),
	datac => \DataSw~combout\(2),
	datad => \DataMemo|mem~4151_combout\,
	combout => \DataMemo|mem~4152_combout\);

-- Location: LCCOMB_X27_Y9_N2
\DataMemo|mem~4155\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4155_combout\ = (\DataSw~combout\(3) & ((\DataMemo|mem~4152_combout\ & ((\DataMemo|mem~4154_combout\))) # (!\DataMemo|mem~4152_combout\ & (\DataMemo|mem~4147_combout\)))) # (!\DataSw~combout\(3) & (((\DataMemo|mem~4152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4147_combout\,
	datab => \DataMemo|mem~4154_combout\,
	datac => \DataSw~combout\(3),
	datad => \DataMemo|mem~4152_combout\,
	combout => \DataMemo|mem~4155_combout\);

-- Location: LCCOMB_X27_Y9_N4
\DataMemo|mem~4157\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4157_combout\ = ((\DataSw~combout\(4) & (\DataMemo|mem~4145_combout\)) # (!\DataSw~combout\(4) & ((\DataMemo|mem~4155_combout\)))) # (!\DataMemo|mem~4156_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4156_combout\,
	datab => \DataMemo|mem~4145_combout\,
	datac => \DataSw~combout\(4),
	datad => \DataMemo|mem~4155_combout\,
	combout => \DataMemo|mem~4157_combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ShowSw[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ShowSw(0),
	combout => \ShowSw~combout\(0));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ShowSw[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ShowSw(1),
	combout => \ShowSw~combout\(1));

-- Location: LCCOMB_X27_Y11_N20
\ShowOut[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[0]~4_combout\ = (\ShowSw~combout\(0) & ((\ShowSw~combout\(1) & (\DataMemo|mem~4157_combout\)) # (!\ShowSw~combout\(1) & ((\InstMemo|mem~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4157_combout\,
	datab => \InstMemo|mem~5_combout\,
	datac => \ShowSw~combout\(0),
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[0]~4_combout\);

-- Location: LCCOMB_X25_Y8_N10
\DataMemo|mem~4160\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4160_combout\ = (\DataSw~combout\(3) & (((\DataSw~combout\(2))))) # (!\DataSw~combout\(3) & ((\DataSw~combout\(2) & (!\DataMemo|mem~744_regout\)) # (!\DataSw~combout\(2) & ((!\DataMemo|mem~616_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~744_regout\,
	datab => \DataMemo|mem~616_regout\,
	datac => \DataSw~combout\(3),
	datad => \DataSw~combout\(2),
	combout => \DataMemo|mem~4160_combout\);

-- Location: LCCOMB_X25_Y8_N28
\DataMemo|mem~4161\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4161_combout\ = (\DataSw~combout\(3) & ((\DataMemo|mem~4160_combout\ & (!\DataMemo|mem~1000_regout\)) # (!\DataMemo|mem~4160_combout\ & ((!\DataMemo|mem~872_regout\))))) # (!\DataSw~combout\(3) & (((\DataMemo|mem~4160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~1000_regout\,
	datab => \DataMemo|mem~872_regout\,
	datac => \DataSw~combout\(3),
	datad => \DataMemo|mem~4160_combout\,
	combout => \DataMemo|mem~4161_combout\);

-- Location: LCCOMB_X26_Y8_N12
\DataMemo|mem~4162\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4162_combout\ = (\DataSw~combout\(3) & (((\DataSw~combout\(2))))) # (!\DataSw~combout\(3) & ((\DataSw~combout\(2) & ((!\DataMemo|mem~680_regout\))) # (!\DataSw~combout\(2) & (!\DataMemo|mem~552_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(3),
	datab => \DataMemo|mem~552_regout\,
	datac => \DataMemo|mem~680_regout\,
	datad => \DataSw~combout\(2),
	combout => \DataMemo|mem~4162_combout\);

-- Location: LCCOMB_X26_Y8_N14
\DataMemo|mem~4163\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4163_combout\ = (\DataSw~combout\(3) & ((\DataMemo|mem~4162_combout\ & (!\DataMemo|mem~936_regout\)) # (!\DataMemo|mem~4162_combout\ & ((!\DataMemo|mem~808_regout\))))) # (!\DataSw~combout\(3) & (((\DataMemo|mem~4162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~936_regout\,
	datab => \DataMemo|mem~808_regout\,
	datac => \DataSw~combout\(3),
	datad => \DataMemo|mem~4162_combout\,
	combout => \DataMemo|mem~4163_combout\);

-- Location: LCCOMB_X26_Y8_N8
\DataMemo|mem~4164\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4164_combout\ = (\DataSw~combout\(0) & (((\DataSw~combout\(1))))) # (!\DataSw~combout\(0) & ((\DataSw~combout\(1) & (\DataMemo|mem~4161_combout\)) # (!\DataSw~combout\(1) & ((\DataMemo|mem~4163_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(0),
	datab => \DataMemo|mem~4161_combout\,
	datac => \DataMemo|mem~4163_combout\,
	datad => \DataSw~combout\(1),
	combout => \DataMemo|mem~4164_combout\);

-- Location: LCCOMB_X24_Y8_N30
\DataMemo|mem~4193\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4193_combout\ = (\DataMemo|mem~648_regout\) # ((\rtl~35_combout\ & (\rtl~37_combout\ & \rtl~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~35_combout\,
	datab => \rtl~37_combout\,
	datac => \DataMemo|mem~648_regout\,
	datad => \rtl~39_combout\,
	combout => \DataMemo|mem~4193_combout\);

-- Location: LCFF_X24_Y8_N31
\DataMemo|mem~648\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~648_regout\);

-- Location: LCCOMB_X25_Y8_N2
\DataMemo|mem~4165\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4165_combout\ = (\DataSw~combout\(3) & (((\DataSw~combout\(2))) # (!\DataMemo|mem~904_regout\))) # (!\DataSw~combout\(3) & (((!\DataMemo|mem~648_regout\ & !\DataSw~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(3),
	datab => \DataMemo|mem~904_regout\,
	datac => \DataMemo|mem~648_regout\,
	datad => \DataSw~combout\(2),
	combout => \DataMemo|mem~4165_combout\);

-- Location: LCCOMB_X25_Y8_N20
\DataMemo|mem~4166\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4166_combout\ = (\DataSw~combout\(2) & ((\DataMemo|mem~4165_combout\ & ((!\DataMemo|mem~1032_regout\))) # (!\DataMemo|mem~4165_combout\ & (!\DataMemo|mem~776_regout\)))) # (!\DataSw~combout\(2) & (\DataMemo|mem~4165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(2),
	datab => \DataMemo|mem~4165_combout\,
	datac => \DataMemo|mem~776_regout\,
	datad => \DataMemo|mem~1032_regout\,
	combout => \DataMemo|mem~4166_combout\);

-- Location: LCCOMB_X26_Y8_N16
\DataMemo|mem~4183\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4183_combout\ = (\DataMemo|mem~840_regout\) # ((!\ULAA|Add1~35_combout\ & (\rtl~40_combout\ & \rtl~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULAA|Add1~35_combout\,
	datab => \rtl~40_combout\,
	datac => \DataMemo|mem~840_regout\,
	datad => \rtl~36_combout\,
	combout => \DataMemo|mem~4183_combout\);

-- Location: LCFF_X26_Y8_N17
\DataMemo|mem~840\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~840_regout\);

-- Location: LCCOMB_X27_Y8_N8
\DataMemo|mem~4158\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4158_combout\ = (\DataSw~combout\(3) & (((\DataSw~combout\(2))) # (!\DataMemo|mem~840_regout\))) # (!\DataSw~combout\(3) & (((!\DataSw~combout\(2) & !\DataMemo|mem~584_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(3),
	datab => \DataMemo|mem~840_regout\,
	datac => \DataSw~combout\(2),
	datad => \DataMemo|mem~584_regout\,
	combout => \DataMemo|mem~4158_combout\);

-- Location: LCCOMB_X26_Y8_N26
\DataMemo|mem~4159\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4159_combout\ = (\DataMemo|mem~4158_combout\ & (((!\DataSw~combout\(2))) # (!\DataMemo|mem~968_regout\))) # (!\DataMemo|mem~4158_combout\ & (((!\DataMemo|mem~712_regout\ & \DataSw~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~968_regout\,
	datab => \DataMemo|mem~4158_combout\,
	datac => \DataMemo|mem~712_regout\,
	datad => \DataSw~combout\(2),
	combout => \DataMemo|mem~4159_combout\);

-- Location: LCCOMB_X26_Y8_N6
\DataMemo|mem~4167\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4167_combout\ = (\DataSw~combout\(0) & ((\DataMemo|mem~4164_combout\ & (\DataMemo|mem~4166_combout\)) # (!\DataMemo|mem~4164_combout\ & ((\DataMemo|mem~4159_combout\))))) # (!\DataSw~combout\(0) & (\DataMemo|mem~4164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataSw~combout\(0),
	datab => \DataMemo|mem~4164_combout\,
	datac => \DataMemo|mem~4166_combout\,
	datad => \DataMemo|mem~4159_combout\,
	combout => \DataMemo|mem~4167_combout\);

-- Location: LCCOMB_X27_Y8_N26
\DataMemo|mem~4176\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4176_combout\ = (\DataMemo|mem~4175_combout\ & (((!\DataSw~combout\(1))) # (!\DataMemo|mem~520_regout\))) # (!\DataMemo|mem~4175_combout\ & (((\DataSw~combout\(1) & !\DataMemo|mem~488_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4175_combout\,
	datab => \DataMemo|mem~520_regout\,
	datac => \DataSw~combout\(1),
	datad => \DataMemo|mem~488_regout\,
	combout => \DataMemo|mem~4176_combout\);

-- Location: LCCOMB_X27_Y8_N28
\DataMemo|mem~4199\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4199_combout\ = (\DataMemo|mem~200_regout\) # ((\rtl~44_combout\ & (!\ULAA|Add1~34_combout\ & \rtl~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~44_combout\,
	datab => \ULAA|Add1~34_combout\,
	datac => \DataMemo|mem~200_regout\,
	datad => \rtl~41_combout\,
	combout => \DataMemo|mem~4199_combout\);

-- Location: LCFF_X27_Y8_N29
\DataMemo|mem~200\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4199_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~200_regout\);

-- Location: LCCOMB_X27_Y8_N14
\DataMemo|mem~4168\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4168_combout\ = (\DataSw~combout\(0) & (((\DataSw~combout\(1)) # (!\DataMemo|mem~200_regout\)))) # (!\DataSw~combout\(0) & (!\DataMemo|mem~168_regout\ & (!\DataSw~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~168_regout\,
	datab => \DataSw~combout\(0),
	datac => \DataSw~combout\(1),
	datad => \DataMemo|mem~200_regout\,
	combout => \DataMemo|mem~4168_combout\);

-- Location: LCCOMB_X27_Y8_N0
\DataMemo|mem~4202\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4202_combout\ = (\DataMemo|mem~264_regout\) # ((\rtl~44_combout\ & (\rtl~32_combout\ & !\ULAA|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~44_combout\,
	datab => \rtl~32_combout\,
	datac => \DataMemo|mem~264_regout\,
	datad => \ULAA|Add1~34_combout\,
	combout => \DataMemo|mem~4202_combout\);

-- Location: LCFF_X27_Y8_N1
\DataMemo|mem~264\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \DataMemo|mem~4202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DataMemo|mem~264_regout\);

-- Location: LCCOMB_X27_Y9_N10
\DataMemo|mem~4169\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4169_combout\ = (\DataMemo|mem~4168_combout\ & (((!\DataMemo|mem~264_regout\) # (!\DataSw~combout\(1))))) # (!\DataMemo|mem~4168_combout\ & (!\DataMemo|mem~232_regout\ & (\DataSw~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~232_regout\,
	datab => \DataMemo|mem~4168_combout\,
	datac => \DataSw~combout\(1),
	datad => \DataMemo|mem~264_regout\,
	combout => \DataMemo|mem~4169_combout\);

-- Location: LCCOMB_X27_Y9_N26
\DataMemo|mem~4177\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4177_combout\ = (\DataMemo|mem~4174_combout\ & (((\DataMemo|mem~4176_combout\)) # (!\DataSw~combout\(2)))) # (!\DataMemo|mem~4174_combout\ & (\DataSw~combout\(2) & ((\DataMemo|mem~4169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4174_combout\,
	datab => \DataSw~combout\(2),
	datac => \DataMemo|mem~4176_combout\,
	datad => \DataMemo|mem~4169_combout\,
	combout => \DataMemo|mem~4177_combout\);

-- Location: LCCOMB_X27_Y9_N0
\DataMemo|mem~4178\ : cycloneii_lcell_comb
-- Equation(s):
-- \DataMemo|mem~4178_combout\ = ((\DataSw~combout\(4) & (\DataMemo|mem~4167_combout\)) # (!\DataSw~combout\(4) & ((\DataMemo|mem~4177_combout\)))) # (!\DataMemo|mem~4156_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4156_combout\,
	datab => \DataMemo|mem~4167_combout\,
	datac => \DataSw~combout\(4),
	datad => \DataMemo|mem~4177_combout\,
	combout => \DataMemo|mem~4178_combout\);

-- Location: LCCOMB_X27_Y9_N6
\ShowOut[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[1]~5_combout\ = (\ShowSw~combout\(0) & ((\ShowSw~combout\(1) & ((\DataMemo|mem~4178_combout\))) # (!\ShowSw~combout\(1) & (\InstMemo|mem~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~8_combout\,
	datab => \DataMemo|mem~4178_combout\,
	datac => \ShowSw~combout\(1),
	datad => \ShowSw~combout\(0),
	combout => \ShowOut[1]~5_combout\);

-- Location: LCCOMB_X26_Y11_N16
\ShowOut[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[2]~6_combout\ = (!\ShowSw~combout\(1) & ((\ShowSw~combout\(0) & (\InstMemo|mem~11_combout\)) # (!\ShowSw~combout\(0) & ((\MUXPC|R[2]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowSw~combout\(0),
	datab => \InstMemo|mem~11_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[2]~6_combout\);

-- Location: LCCOMB_X27_Y11_N14
\ShowOut[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[2]~7_combout\ = (\ShowOut[2]~6_combout\) # ((\DataMemo|mem~4157_combout\ & (\ShowSw~combout\(0) & \ShowSw~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4157_combout\,
	datab => \ShowOut[2]~6_combout\,
	datac => \ShowSw~combout\(0),
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[2]~7_combout\);

-- Location: LCCOMB_X26_Y10_N12
\ShowOut[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[3]~8_combout\ = (!\ShowSw~combout\(1) & ((\ShowSw~combout\(0) & (\InstMemo|mem~14_combout\)) # (!\ShowSw~combout\(0) & ((\MUXPC|R[3]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~14_combout\,
	datab => \ShowSw~combout\(0),
	datac => \MUXPC|R[3]~20_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[3]~8_combout\);

-- Location: LCCOMB_X26_Y10_N6
\ShowOut[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[3]~9_combout\ = (\ShowOut[3]~8_combout\) # ((\ShowSw~combout\(0) & (\DataMemo|mem~4178_combout\ & \ShowSw~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowOut[3]~8_combout\,
	datab => \ShowSw~combout\(0),
	datac => \DataMemo|mem~4178_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[3]~9_combout\);

-- Location: LCCOMB_X26_Y11_N14
\ShowOut[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[4]~10_combout\ = (!\ShowSw~combout\(1) & ((\ShowSw~combout\(0) & (\InstMemo|mem~16_combout\)) # (!\ShowSw~combout\(0) & ((\MUXPC|R[4]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowSw~combout\(0),
	datab => \InstMemo|mem~16_combout\,
	datac => \MUXPC|R[4]~16_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[4]~10_combout\);

-- Location: LCCOMB_X26_Y11_N28
\ShowOut[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[4]~11_combout\ = (\ShowOut[4]~10_combout\) # ((\ShowSw~combout\(0) & (\DataMemo|mem~4157_combout\ & \ShowSw~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowSw~combout\(0),
	datab => \DataMemo|mem~4157_combout\,
	datac => \ShowOut[4]~10_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[4]~11_combout\);

-- Location: LCCOMB_X26_Y10_N20
\ShowOut[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[5]~12_combout\ = (!\ShowSw~combout\(1) & ((\ShowSw~combout\(0) & (\InstMemo|mem~19_combout\)) # (!\ShowSw~combout\(0) & ((\MUXPC|R[5]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~19_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \ShowSw~combout\(0),
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[5]~12_combout\);

-- Location: LCCOMB_X27_Y10_N24
\ShowOut[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[5]~13_combout\ = (\ShowOut[5]~12_combout\) # ((\ShowSw~combout\(0) & (\DataMemo|mem~4178_combout\ & \ShowSw~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowSw~combout\(0),
	datab => \DataMemo|mem~4178_combout\,
	datac => \ShowOut[5]~12_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[5]~13_combout\);

-- Location: LCCOMB_X27_Y10_N6
\ShowOut[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[6]~15_combout\ = (\MUXPC|R[6]~14_combout\ & !\ShowSw~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[6]~15_combout\);

-- Location: LCCOMB_X27_Y9_N24
\ShowOut[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[2]~14_combout\ = (\ShowSw~combout\(1) & (\DataMemo|mem~4157_combout\ & \ShowSw~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShowSw~combout\(1),
	datac => \DataMemo|mem~4157_combout\,
	datad => \ShowSw~combout\(0),
	combout => \ShowOut[2]~14_combout\);

-- Location: LCCOMB_X27_Y10_N4
\ShowOut[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[6]~16_combout\ = (\ShowOut[2]~14_combout\) # ((\ShowOut[6]~15_combout\ & ((\InstMemo|mem~20_combout\) # (!\ShowSw~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowOut[6]~15_combout\,
	datab => \InstMemo|mem~20_combout\,
	datac => \ShowOut[2]~14_combout\,
	datad => \ShowSw~combout\(0),
	combout => \ShowOut[6]~16_combout\);

-- Location: LCCOMB_X26_Y10_N26
\ShowOut[7]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[7]~17_combout\ = (\ShowSw~combout\(0) & ((\ShowSw~combout\(1) & (\DataMemo|mem~4178_combout\)) # (!\ShowSw~combout\(1) & ((\InstMemo|mem~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4178_combout\,
	datab => \ShowSw~combout\(0),
	datac => \InstMemo|mem~21_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[7]~17_combout\);

-- Location: LCCOMB_X25_Y10_N0
\ShowOut[8]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[8]~18_combout\ = (\MUXPC|R[5]~18_combout\ & (\MUXPC|R[4]~16_combout\ & (!\MUXPC|R[3]~20_combout\ & !\MUXPC|R[2]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \ShowOut[8]~18_combout\);

-- Location: LCCOMB_X25_Y10_N20
\ShowOut[8]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[8]~50_combout\ = (\ShowOut[8]~18_combout\ & (\MUXPC|R[6]~14_combout\ & !\ShowSw~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShowOut[8]~18_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[8]~50_combout\);

-- Location: LCCOMB_X26_Y10_N4
\ShowOut[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[8]~19_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[8]~50_combout\) # ((\DataMemo|mem~4157_combout\ & \ShowSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowOut[8]~50_combout\,
	datab => \DataMemo|mem~4157_combout\,
	datac => \ShowSw~combout\(0),
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[8]~19_combout\);

-- Location: LCCOMB_X26_Y10_N10
\ShowOut[9]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[9]~20_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[8]~50_combout\) # ((\DataMemo|mem~4178_combout\ & \ShowSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4178_combout\,
	datab => \ShowSw~combout\(0),
	datac => \ShowOut[8]~50_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[9]~20_combout\);

-- Location: LCCOMB_X25_Y10_N2
\InstMemo|mem~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~22_combout\ = (\MUXPC|R[3]~20_combout\ & (\MUXPC|R[2]~21_combout\ & (\MUXPC|R[4]~16_combout\ $ (\MUXPC|R[6]~14_combout\)))) # (!\MUXPC|R[3]~20_combout\ & ((\MUXPC|R[4]~16_combout\) # ((!\MUXPC|R[6]~14_combout\ & \MUXPC|R[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~22_combout\);

-- Location: LCCOMB_X25_Y10_N4
\ShowOut[11]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[11]~21_combout\ = (\MUXPC|R[5]~18_combout\ & (\ShowOut[8]~18_combout\ & (\MUXPC|R[6]~14_combout\))) # (!\MUXPC|R[5]~18_combout\ & ((\InstMemo|mem~22_combout\) # ((\ShowOut[8]~18_combout\ & \MUXPC|R[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datab => \ShowOut[8]~18_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	datad => \InstMemo|mem~22_combout\,
	combout => \ShowOut[11]~21_combout\);

-- Location: LCCOMB_X26_Y10_N8
\ShowOut[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[11]~22_combout\ = (\ShowSw~combout\(0) & ((\ShowSw~combout\(1) & (\DataMemo|mem~4178_combout\)) # (!\ShowSw~combout\(1) & ((\ShowOut[11]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4178_combout\,
	datab => \ShowSw~combout\(0),
	datac => \ShowOut[11]~21_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[11]~22_combout\);

-- Location: LCCOMB_X26_Y11_N10
\InstMemo|mem~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~23_combout\ = (\MUXPC|R[6]~14_combout\ & (!\MUXPC|R[3]~20_combout\ & (\MUXPC|R[4]~16_combout\ & !\MUXPC|R[2]~21_combout\))) # (!\MUXPC|R[6]~14_combout\ & (((!\MUXPC|R[4]~16_combout\ & \MUXPC|R[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \MUXPC|R[4]~16_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~23_combout\);

-- Location: LCCOMB_X26_Y11_N4
\ShowOut[12]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[12]~23_combout\ = (\MUXPC|R[5]~18_combout\ & (\InstMemo|mem~23_combout\ & !\ShowSw~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datac => \InstMemo|mem~23_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[12]~23_combout\);

-- Location: LCCOMB_X27_Y11_N4
\ShowOut[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[12]~24_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[12]~23_combout\) # ((\DataMemo|mem~4157_combout\ & \ShowSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4157_combout\,
	datab => \ShowSw~combout\(0),
	datac => \ShowOut[12]~23_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[12]~24_combout\);

-- Location: LCCOMB_X26_Y10_N18
\InstMemo|mem~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~24_combout\ = (\MUXPC|R[2]~21_combout\ & (\MUXPC|R[3]~20_combout\ & (\MUXPC|R[6]~14_combout\ $ (!\MUXPC|R[4]~16_combout\)))) # (!\MUXPC|R[2]~21_combout\ & ((\MUXPC|R[3]~20_combout\) # ((\MUXPC|R[6]~14_combout\ & !\MUXPC|R[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~21_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~24_combout\);

-- Location: LCCOMB_X26_Y10_N24
\ShowOut[15]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[15]~25_combout\ = (!\ShowSw~combout\(1) & ((\MUXPC|R[5]~18_combout\ & (\InstMemo|mem~23_combout\)) # (!\MUXPC|R[5]~18_combout\ & ((!\InstMemo|mem~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~23_combout\,
	datab => \InstMemo|mem~24_combout\,
	datac => \MUXPC|R[5]~18_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[15]~25_combout\);

-- Location: LCCOMB_X26_Y10_N2
\ShowOut[15]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[15]~26_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[15]~25_combout\) # ((\DataMemo|mem~4178_combout\ & \ShowSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4178_combout\,
	datab => \ShowSw~combout\(0),
	datac => \ShowOut[15]~25_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[15]~26_combout\);

-- Location: LCCOMB_X27_Y11_N30
\InstMemo|mem~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~25_combout\ = (\MUXPC|R[5]~18_combout\ & (\MUXPC|R[3]~20_combout\ $ (((\MUXPC|R[4]~16_combout\) # (!\MUXPC|R[2]~21_combout\))))) # (!\MUXPC|R[5]~18_combout\ & ((\MUXPC|R[3]~20_combout\ & (!\MUXPC|R[2]~21_combout\)) # 
-- (!\MUXPC|R[3]~20_combout\ & ((\MUXPC|R[4]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~21_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~25_combout\);

-- Location: LCCOMB_X27_Y11_N18
\ShowOut[16]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[16]~27_combout\ = (!\ShowSw~combout\(1) & ((\MUXPC|R[6]~14_combout\ & (!\InstMemo|mem~26_combout\)) # (!\MUXPC|R[6]~14_combout\ & ((\InstMemo|mem~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~26_combout\,
	datab => \InstMemo|mem~25_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[16]~27_combout\);

-- Location: LCCOMB_X27_Y11_N0
\ShowOut[16]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[16]~28_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[16]~27_combout\) # ((\DataMemo|mem~4157_combout\ & \ShowSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4157_combout\,
	datab => \ShowOut[16]~27_combout\,
	datac => \ShowSw~combout\(0),
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[16]~28_combout\);

-- Location: LCCOMB_X27_Y10_N18
\InstMemo|mem~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~27_combout\ = (\MUXPC|R[5]~18_combout\ & ((\MUXPC|R[3]~20_combout\ & ((\MUXPC|R[4]~16_combout\) # (!\MUXPC|R[2]~21_combout\))) # (!\MUXPC|R[3]~20_combout\ & (!\MUXPC|R[2]~21_combout\ & \MUXPC|R[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~27_combout\);

-- Location: LCCOMB_X27_Y10_N8
\ShowOut[17]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[17]~29_combout\ = (!\MUXPC|R[6]~14_combout\ & (\InstMemo|mem~27_combout\ & !\ShowSw~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	datab => \InstMemo|mem~27_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[17]~29_combout\);

-- Location: LCCOMB_X27_Y10_N10
\ShowOut[17]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[17]~30_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[17]~29_combout\) # ((\DataMemo|mem~4178_combout\ & \ShowSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowSw~combout\(0),
	datab => \DataMemo|mem~4178_combout\,
	datac => \ShowOut[17]~29_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[17]~30_combout\);

-- Location: LCCOMB_X27_Y10_N28
\ShowOut[0]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[0]~31_combout\ = (\DataMemo|mem~4157_combout\ & \ShowSw~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataMemo|mem~4157_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[0]~31_combout\);

-- Location: LCCOMB_X27_Y10_N14
\InstMemo|mem~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~28_combout\ = (\MUXPC|R[3]~20_combout\ & (((!\MUXPC|R[2]~21_combout\ & \MUXPC|R[4]~16_combout\)))) # (!\MUXPC|R[3]~20_combout\ & (\MUXPC|R[5]~18_combout\ & (\MUXPC|R[2]~21_combout\ $ (\MUXPC|R[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~28_combout\);

-- Location: LCCOMB_X27_Y10_N12
\ShowOut[18]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[18]~32_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[0]~31_combout\) # ((\ShowOut[6]~15_combout\ & \InstMemo|mem~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowOut[6]~15_combout\,
	datab => \ShowOut[0]~31_combout\,
	datac => \InstMemo|mem~28_combout\,
	datad => \ShowSw~combout\(0),
	combout => \ShowOut[18]~32_combout\);

-- Location: LCCOMB_X26_Y10_N0
\InstMemo|mem~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~29_combout\ = (\MUXPC|R[2]~21_combout\ & (\MUXPC|R[3]~20_combout\ & ((\MUXPC|R[4]~16_combout\) # (\MUXPC|R[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~21_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[5]~18_combout\,
	combout => \InstMemo|mem~29_combout\);

-- Location: LCCOMB_X26_Y10_N30
\ShowOut[19]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[19]~51_combout\ = (\InstMemo|mem~29_combout\ & (\MUXPC|R[6]~14_combout\ & !\ShowSw~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstMemo|mem~29_combout\,
	datac => \MUXPC|R[6]~14_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[19]~51_combout\);

-- Location: LCCOMB_X26_Y10_N22
\ShowOut[19]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[19]~33_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[19]~51_combout\) # ((\DataMemo|mem~4178_combout\ & \ShowSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4178_combout\,
	datab => \ShowOut[19]~51_combout\,
	datac => \ShowSw~combout\(0),
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[19]~33_combout\);

-- Location: LCCOMB_X25_Y10_N26
\InstMemo|mem~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~30_combout\ = (\MUXPC|R[4]~16_combout\ & (\MUXPC|R[2]~21_combout\ & ((\MUXPC|R[5]~18_combout\) # (\MUXPC|R[3]~20_combout\)))) # (!\MUXPC|R[4]~16_combout\ & (\MUXPC|R[5]~18_combout\ $ (((!\MUXPC|R[3]~20_combout\ & \MUXPC|R[2]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~30_combout\);

-- Location: LCCOMB_X25_Y10_N8
\InstMemo|mem~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~31_combout\ = (!\MUXPC|R[6]~14_combout\ & (!\MUXPC|R[4]~16_combout\ & (!\MUXPC|R[3]~20_combout\ & !\MUXPC|R[5]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[5]~18_combout\,
	combout => \InstMemo|mem~31_combout\);

-- Location: LCCOMB_X25_Y10_N22
\ShowOut[20]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[20]~34_combout\ = (!\InstMemo|mem~31_combout\ & (!\ShowSw~combout\(1) & ((!\InstMemo|mem~30_combout\) # (!\MUXPC|R[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	datab => \InstMemo|mem~30_combout\,
	datac => \InstMemo|mem~31_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[20]~34_combout\);

-- Location: LCCOMB_X27_Y11_N6
\ShowOut[20]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[20]~35_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[20]~34_combout\) # ((\DataMemo|mem~4157_combout\ & \ShowSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4157_combout\,
	datab => \ShowSw~combout\(0),
	datac => \ShowOut[20]~34_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[20]~35_combout\);

-- Location: LCCOMB_X27_Y10_N0
\InstMemo|mem~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~33_combout\ = (\MUXPC|R[3]~20_combout\) # ((\MUXPC|R[5]~18_combout\ & ((!\MUXPC|R[4]~16_combout\) # (!\MUXPC|R[2]~21_combout\))) # (!\MUXPC|R[5]~18_combout\ & ((\MUXPC|R[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~33_combout\);

-- Location: LCCOMB_X27_Y10_N2
\InstMemo|mem~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~32_combout\ = (\MUXPC|R[3]~20_combout\ & ((\MUXPC|R[4]~16_combout\) # ((!\MUXPC|R[5]~18_combout\ & !\MUXPC|R[2]~21_combout\)))) # (!\MUXPC|R[3]~20_combout\ & (\MUXPC|R[5]~18_combout\ & ((\MUXPC|R[2]~21_combout\) # 
-- (!\MUXPC|R[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~32_combout\);

-- Location: LCCOMB_X27_Y10_N30
\ShowOut[21]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[21]~36_combout\ = (!\ShowSw~combout\(1) & ((\MUXPC|R[6]~14_combout\ & (!\InstMemo|mem~33_combout\)) # (!\MUXPC|R[6]~14_combout\ & ((\InstMemo|mem~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[6]~14_combout\,
	datab => \InstMemo|mem~33_combout\,
	datac => \InstMemo|mem~32_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[21]~36_combout\);

-- Location: LCCOMB_X26_Y10_N28
\ShowOut[21]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[21]~37_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[21]~36_combout\) # ((\DataMemo|mem~4178_combout\ & \ShowSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMemo|mem~4178_combout\,
	datab => \ShowOut[21]~36_combout\,
	datac => \ShowSw~combout\(0),
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[21]~37_combout\);

-- Location: LCCOMB_X27_Y11_N8
\InstMemo|mem~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~34_combout\ = (\MUXPC|R[3]~20_combout\ & (((!\MUXPC|R[6]~14_combout\)))) # (!\MUXPC|R[3]~20_combout\ & (\MUXPC|R[2]~21_combout\ & ((\MUXPC|R[4]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~21_combout\,
	datab => \MUXPC|R[6]~14_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~34_combout\);

-- Location: LCCOMB_X27_Y11_N16
\ShowOut[22]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[22]~38_combout\ = (\MUXPC|R[3]~20_combout\ & (\MUXPC|R[5]~18_combout\ & (\InstMemo|mem~34_combout\))) # (!\MUXPC|R[3]~20_combout\ & ((\InstMemo|mem~35_combout\) # ((\MUXPC|R[5]~18_combout\ & \InstMemo|mem~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \InstMemo|mem~34_combout\,
	datad => \InstMemo|mem~35_combout\,
	combout => \ShowOut[22]~38_combout\);

-- Location: LCCOMB_X27_Y11_N22
\ShowOut[22]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[22]~39_combout\ = (\ShowSw~combout\(0) & ((\ShowSw~combout\(1) & ((\DataMemo|mem~4157_combout\))) # (!\ShowSw~combout\(1) & (\ShowOut[22]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowOut[22]~38_combout\,
	datab => \ShowSw~combout\(0),
	datac => \DataMemo|mem~4157_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[22]~39_combout\);

-- Location: LCCOMB_X27_Y10_N16
\ShowOut[23]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[23]~40_combout\ = (\MUXPC|R[2]~21_combout\ & (\MUXPC|R[5]~18_combout\ & (!\MUXPC|R[3]~20_combout\ & \ShowOut[6]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[2]~21_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \ShowOut[6]~15_combout\,
	combout => \ShowOut[23]~40_combout\);

-- Location: LCCOMB_X27_Y10_N22
\ShowOut[23]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[23]~41_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[23]~40_combout\) # ((\DataMemo|mem~4178_combout\ & \ShowSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowSw~combout\(0),
	datab => \DataMemo|mem~4178_combout\,
	datac => \ShowOut[23]~40_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[23]~41_combout\);

-- Location: LCCOMB_X27_Y10_N20
\InstMemo|mem~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~36_combout\ = (\MUXPC|R[5]~18_combout\ & ((\MUXPC|R[4]~16_combout\) # ((\MUXPC|R[3]~20_combout\ & \MUXPC|R[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[3]~20_combout\,
	datab => \MUXPC|R[5]~18_combout\,
	datac => \MUXPC|R[2]~21_combout\,
	datad => \MUXPC|R[4]~16_combout\,
	combout => \InstMemo|mem~36_combout\);

-- Location: LCCOMB_X27_Y10_N26
\ShowOut[24]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[24]~42_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[0]~31_combout\) # ((\ShowOut[6]~15_combout\ & \InstMemo|mem~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowOut[6]~15_combout\,
	datab => \ShowOut[0]~31_combout\,
	datac => \InstMemo|mem~36_combout\,
	datad => \ShowSw~combout\(0),
	combout => \ShowOut[24]~42_combout\);

-- Location: LCCOMB_X27_Y9_N14
\InstMemo|mem~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~37_combout\ = (\MUXPC|R[3]~20_combout\) # ((\MUXPC|R[5]~18_combout\ & ((\MUXPC|R[2]~21_combout\) # (!\MUXPC|R[4]~16_combout\))) # (!\MUXPC|R[5]~18_combout\ & (\MUXPC|R[4]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUXPC|R[5]~18_combout\,
	datab => \MUXPC|R[4]~16_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \MUXPC|R[2]~21_combout\,
	combout => \InstMemo|mem~37_combout\);

-- Location: LCCOMB_X27_Y9_N22
\ShowOut[25]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[25]~43_combout\ = (!\ShowSw~combout\(1) & ((\MUXPC|R[6]~14_combout\ & (!\InstMemo|mem~38_combout\)) # (!\MUXPC|R[6]~14_combout\ & ((\InstMemo|mem~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~38_combout\,
	datab => \InstMemo|mem~37_combout\,
	datac => \ShowSw~combout\(1),
	datad => \MUXPC|R[6]~14_combout\,
	combout => \ShowOut[25]~43_combout\);

-- Location: LCCOMB_X27_Y9_N8
\ShowOut[25]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[25]~44_combout\ = (\ShowSw~combout\(0) & ((\ShowOut[25]~43_combout\) # ((\DataMemo|mem~4178_combout\ & \ShowSw~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowSw~combout\(0),
	datab => \DataMemo|mem~4178_combout\,
	datac => \ShowSw~combout\(1),
	datad => \ShowOut[25]~43_combout\,
	combout => \ShowOut[25]~44_combout\);

-- Location: LCCOMB_X26_Y11_N30
\ShowOut[26]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[26]~45_combout\ = (\ShowSw~combout\(0) & ((\ShowSw~combout\(1) & (\DataMemo|mem~4157_combout\)) # (!\ShowSw~combout\(1) & ((\InstMemo|mem~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowSw~combout\(0),
	datab => \DataMemo|mem~4157_combout\,
	datac => \InstMemo|mem~49_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[26]~45_combout\);

-- Location: LCCOMB_X26_Y11_N0
\ShowOut[27]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[27]~46_combout\ = (\ShowSw~combout\(0) & ((\ShowSw~combout\(1) & (\DataMemo|mem~4178_combout\)) # (!\ShowSw~combout\(1) & ((\InstMemo|mem~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowSw~combout\(0),
	datab => \DataMemo|mem~4178_combout\,
	datac => \InstMemo|mem~40_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[27]~46_combout\);

-- Location: LCCOMB_X26_Y11_N22
\ShowOut[28]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[28]~47_combout\ = (\ShowSw~combout\(0) & ((\ShowSw~combout\(1) & (\DataMemo|mem~4157_combout\)) # (!\ShowSw~combout\(1) & ((\InstMemo|mem~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowSw~combout\(0),
	datab => \DataMemo|mem~4157_combout\,
	datac => \InstMemo|mem~42_combout\,
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[28]~47_combout\);

-- Location: LCCOMB_X25_Y11_N24
\InstMemo|mem~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \InstMemo|mem~45_combout\ = (\MUXPC|R[3]~20_combout\ & (!\InstMemo|mem~44_combout\)) # (!\MUXPC|R[3]~20_combout\ & ((\InstMemo|mem~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~44_combout\,
	datac => \MUXPC|R[3]~20_combout\,
	datad => \InstMemo|mem~43_combout\,
	combout => \InstMemo|mem~45_combout\);

-- Location: LCCOMB_X27_Y9_N18
\ShowOut[29]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[29]~48_combout\ = (\ShowSw~combout\(0) & ((\ShowSw~combout\(1) & (\DataMemo|mem~4178_combout\)) # (!\ShowSw~combout\(1) & ((\InstMemo|mem~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShowSw~combout\(0),
	datab => \DataMemo|mem~4178_combout\,
	datac => \ShowSw~combout\(1),
	datad => \InstMemo|mem~45_combout\,
	combout => \ShowOut[29]~48_combout\);

-- Location: LCCOMB_X27_Y11_N12
\ShowOut[31]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShowOut[31]~49_combout\ = (\ShowSw~combout\(0) & ((\ShowSw~combout\(1) & ((\DataMemo|mem~4178_combout\))) # (!\ShowSw~combout\(1) & (\InstMemo|mem~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstMemo|mem~47_combout\,
	datab => \DataMemo|mem~4178_combout\,
	datac => \ShowSw~combout\(0),
	datad => \ShowSw~combout\(1),
	combout => \ShowOut[31]~49_combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegSw[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegSw(0));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegSw[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegSw(1));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegSw[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegSw(2));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegSw[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegSw(3));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RegSw[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RegSw(4));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(0));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(1));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(2));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(3));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(4));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(5));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(6));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[7]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(7));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(8));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(9));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(10));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[11]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(11));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[12]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(12));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[9]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(13));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[8]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(14));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(15));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[16]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(16));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[17]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(17));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[18]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(18));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[19]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(19));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[20]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(20));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[21]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(21));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[22]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(22));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[23]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(23));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[24]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(24));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[25]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(25));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[26]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(26));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[27]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(27));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[28]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(28));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[29]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(29));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(30));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ShowOut[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ShowOut[31]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ShowOut(31));
END structure;


