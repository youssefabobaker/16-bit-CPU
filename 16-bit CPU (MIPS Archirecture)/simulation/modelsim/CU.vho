-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "12/25/2023 14:24:30"

-- 
-- Device: Altera EP4CE6E22C8L Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CU IS
    PORT (
	clk : IN std_logic;
	pc : BUFFER std_logic_vector(3 DOWNTO 0);
	result : BUFFER std_logic_vector(15 DOWNTO 0);
	reset : IN std_logic
	);
END CU;

-- Design Ports Information
-- result[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CU IS
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
SIGNAL ww_pc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc[0]~input_o\ : std_logic;
SIGNAL \pc[1]~input_o\ : std_logic;
SIGNAL \pc[2]~input_o\ : std_logic;
SIGNAL \pc[3]~input_o\ : std_logic;
SIGNAL \pc[0]~output_o\ : std_logic;
SIGNAL \pc[1]~output_o\ : std_logic;
SIGNAL \pc[2]~output_o\ : std_logic;
SIGNAL \pc[3]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \rom_block|Mux6~0_combout\ : std_logic;
SIGNAL \pc~13_combout\ : std_logic;
SIGNAL \pc[3]~reg0_q\ : std_logic;
SIGNAL \rom_block|Mux5~0_combout\ : std_logic;
SIGNAL \Register_file~1_combout\ : std_logic;
SIGNAL \rom_block|Mux8~0_combout\ : std_logic;
SIGNAL \rom_block|Mux7~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Register_file~2_combout\ : std_logic;
SIGNAL \Register_file~3_combout\ : std_logic;
SIGNAL \Register_file[1][0]~feeder_combout\ : std_logic;
SIGNAL \rom_block|Mux4~0_combout\ : std_logic;
SIGNAL \Register_file~6_combout\ : std_logic;
SIGNAL \Register_file[1][0]~q\ : std_logic;
SIGNAL \Register_file~4_combout\ : std_logic;
SIGNAL \Register_file[0][14]~5_combout\ : std_logic;
SIGNAL \Register_file[0][0]~q\ : std_logic;
SIGNAL \Mux159~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Register_file~7_combout\ : std_logic;
SIGNAL \Register_file[1][1]~q\ : std_logic;
SIGNAL \Register_file[0][1]~q\ : std_logic;
SIGNAL \Mux158~0_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \rom_block|Mux7~1_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Register_file~8_combout\ : std_logic;
SIGNAL \Register_file~9_combout\ : std_logic;
SIGNAL \Register_file[1][2]~q\ : std_logic;
SIGNAL \Register_file[0][2]~q\ : std_logic;
SIGNAL \Mux157~0_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Register_file~10_combout\ : std_logic;
SIGNAL \Register_file~11_combout\ : std_logic;
SIGNAL \Register_file[1][3]~q\ : std_logic;
SIGNAL \Register_file[0][3]~q\ : std_logic;
SIGNAL \Mux156~0_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \flag_register[0]~0_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Register_file~12_combout\ : std_logic;
SIGNAL \Register_file[1][4]~q\ : std_logic;
SIGNAL \Register_file[0][4]~q\ : std_logic;
SIGNAL \Mux155~0_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Register_file~13_combout\ : std_logic;
SIGNAL \Register_file[1][5]~q\ : std_logic;
SIGNAL \Register_file[0][5]~q\ : std_logic;
SIGNAL \Mux154~0_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Register_file~17_combout\ : std_logic;
SIGNAL \Register_file[1][6]~18_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Register_file[1][6]~19_combout\ : std_logic;
SIGNAL \Register_file[1][6]~q\ : std_logic;
SIGNAL \Register_file~14_combout\ : std_logic;
SIGNAL \Register_file[0][6]~15_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Register_file[0][6]~16_combout\ : std_logic;
SIGNAL \Register_file[0][6]~q\ : std_logic;
SIGNAL \Mux153~0_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Register_file~20_combout\ : std_logic;
SIGNAL \Register_file[1][13]~21_combout\ : std_logic;
SIGNAL \Register_file[1][7]~q\ : std_logic;
SIGNAL \Register_file[0][7]~q\ : std_logic;
SIGNAL \Mux152~0_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Register_file~22_combout\ : std_logic;
SIGNAL \Register_file[1][8]~q\ : std_logic;
SIGNAL \Register_file[0][8]~q\ : std_logic;
SIGNAL \Mux151~0_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \flag_register[0]~1_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Register_file~23_combout\ : std_logic;
SIGNAL \Register_file[1][9]~q\ : std_logic;
SIGNAL \Register_file[0][9]~q\ : std_logic;
SIGNAL \Mux150~0_combout\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Register_file~24_combout\ : std_logic;
SIGNAL \Register_file[1][10]~q\ : std_logic;
SIGNAL \Register_file[0][10]~q\ : std_logic;
SIGNAL \Mux149~0_combout\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Register_file~25_combout\ : std_logic;
SIGNAL \Register_file[1][11]~q\ : std_logic;
SIGNAL \Register_file[0][11]~q\ : std_logic;
SIGNAL \Mux148~0_combout\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \Add4~22_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~24_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Register_file~26_combout\ : std_logic;
SIGNAL \Register_file[1][12]~q\ : std_logic;
SIGNAL \Register_file[0][12]~q\ : std_logic;
SIGNAL \Mux147~0_combout\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Register_file~27_combout\ : std_logic;
SIGNAL \Register_file[1][13]~q\ : std_logic;
SIGNAL \Register_file[0][13]~q\ : std_logic;
SIGNAL \Mux146~0_combout\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~26_combout\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Register_file~28_combout\ : std_logic;
SIGNAL \Register_file[1][14]~q\ : std_logic;
SIGNAL \Register_file[0][14]~q\ : std_logic;
SIGNAL \Mux145~0_combout\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~28_combout\ : std_logic;
SIGNAL \flag_register[0]~2_combout\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Register_file~29_combout\ : std_logic;
SIGNAL \Register_file[1][15]~q\ : std_logic;
SIGNAL \Register_file[0][15]~q\ : std_logic;
SIGNAL \Mux144~0_combout\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \flag_register[0]~3_combout\ : std_logic;
SIGNAL \flag_register[0]~4_combout\ : std_logic;
SIGNAL \flag_register[0]~5_combout\ : std_logic;
SIGNAL \pc~9_combout\ : std_logic;
SIGNAL \pc~11_combout\ : std_logic;
SIGNAL \pc[1]~reg0_q\ : std_logic;
SIGNAL \pc~12_combout\ : std_logic;
SIGNAL \pc[2]~reg0_q\ : std_logic;
SIGNAL \rom_block|Mux0~0_combout\ : std_logic;
SIGNAL \pc~8_combout\ : std_logic;
SIGNAL \pc~10_combout\ : std_logic;
SIGNAL \pc[0]~reg0_q\ : std_logic;
SIGNAL \result~26_combout\ : std_logic;
SIGNAL \Register_file[0][14]~0_combout\ : std_logic;
SIGNAL \result[0]~reg0_q\ : std_logic;
SIGNAL \result~29_combout\ : std_logic;
SIGNAL \result[1]~reg0_q\ : std_logic;
SIGNAL \result~27_combout\ : std_logic;
SIGNAL \result[2]~reg0_q\ : std_logic;
SIGNAL \result~28_combout\ : std_logic;
SIGNAL \result[3]~reg0_q\ : std_logic;
SIGNAL \result~30_combout\ : std_logic;
SIGNAL \result[4]~reg0_q\ : std_logic;
SIGNAL \result~31_combout\ : std_logic;
SIGNAL \result[5]~reg0_q\ : std_logic;
SIGNAL \result~32_combout\ : std_logic;
SIGNAL \result[6]~reg0_q\ : std_logic;
SIGNAL \result~33_combout\ : std_logic;
SIGNAL \result[7]~reg0_q\ : std_logic;
SIGNAL \result~34_combout\ : std_logic;
SIGNAL \result[8]~reg0_q\ : std_logic;
SIGNAL \result~35_combout\ : std_logic;
SIGNAL \result[9]~reg0_q\ : std_logic;
SIGNAL \result~36_combout\ : std_logic;
SIGNAL \result[10]~reg0_q\ : std_logic;
SIGNAL \result~37_combout\ : std_logic;
SIGNAL \result[11]~reg0_q\ : std_logic;
SIGNAL \result~38_combout\ : std_logic;
SIGNAL \result[12]~reg0_q\ : std_logic;
SIGNAL \result~39_combout\ : std_logic;
SIGNAL \result[13]~reg0_q\ : std_logic;
SIGNAL \result~40_combout\ : std_logic;
SIGNAL \result[14]~reg0_q\ : std_logic;
SIGNAL \result~41_combout\ : std_logic;
SIGNAL \result[15]~reg0_q\ : std_logic;
SIGNAL flag_register : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_pc[1]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
pc <= ww_pc;
result <= ww_result;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_pc[1]~reg0_q\ <= NOT \pc[1]~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y0_N9
\pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \pc[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \pc[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \pc[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \pc[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[0]~reg0_q\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[1]~reg0_q\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[2]~reg0_q\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[3]~reg0_q\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[4]~reg0_q\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[5]~reg0_q\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[6]~reg0_q\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[7]~reg0_q\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[8]~reg0_q\,
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[9]~reg0_q\,
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[10]~reg0_q\,
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[11]~reg0_q\,
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[12]~reg0_q\,
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[13]~reg0_q\,
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[14]~reg0_q\,
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[15]~reg0_q\,
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOIBUF_X34_Y12_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G8
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X28_Y2_N24
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \pc[3]~reg0_q\ $ (((\pc[1]~reg0_q\ & (\pc[0]~reg0_q\ & \pc[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \pc[0]~reg0_q\,
	datad => \pc[2]~reg0_q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X24_Y2_N22
\rom_block|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_block|Mux6~0_combout\ = (!\pc[2]~reg0_q\ & (!\pc[3]~reg0_q\ & (\pc[1]~reg0_q\ $ (\pc[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[2]~reg0_q\,
	datab => \pc[1]~reg0_q\,
	datac => \pc[3]~reg0_q\,
	datad => \pc[0]~reg0_q\,
	combout => \rom_block|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y2_N30
\pc~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc~13_combout\ = (\Add0~0_combout\ & (((\rom_block|Mux6~0_combout\ & \pc~8_combout\)) # (!\pc~9_combout\))) # (!\Add0~0_combout\ & (\rom_block|Mux6~0_combout\ & (\pc~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \rom_block|Mux6~0_combout\,
	datac => \pc~8_combout\,
	datad => \pc~9_combout\,
	combout => \pc~13_combout\);

-- Location: FF_X24_Y2_N31
\pc[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[3]~reg0_q\);

-- Location: LCCOMB_X28_Y2_N22
\rom_block|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_block|Mux5~0_combout\ = (\pc[1]~reg0_q\ & (!\pc[3]~reg0_q\ & (\pc[0]~reg0_q\ & !\pc[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \pc[0]~reg0_q\,
	datad => \pc[2]~reg0_q\,
	combout => \rom_block|Mux5~0_combout\);

-- Location: LCCOMB_X28_Y2_N20
\Register_file~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~1_combout\ = (!\pc[2]~reg0_q\ & (!\pc[3]~reg0_q\ & (!\pc[0]~reg0_q\ & \pc[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[2]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \pc[0]~reg0_q\,
	datad => \pc[1]~reg0_q\,
	combout => \Register_file~1_combout\);

-- Location: LCCOMB_X24_Y2_N12
\rom_block|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_block|Mux8~0_combout\ = (!\pc[2]~reg0_q\ & (!\pc[3]~reg0_q\ & ((\pc[0]~reg0_q\) # (\pc[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datab => \pc[2]~reg0_q\,
	datac => \pc[3]~reg0_q\,
	datad => \pc[1]~reg0_q\,
	combout => \rom_block|Mux8~0_combout\);

-- Location: LCCOMB_X28_Y2_N0
\rom_block|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_block|Mux7~0_combout\ = (!\pc[1]~reg0_q\ & (!\pc[3]~reg0_q\ & !\pc[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \pc[2]~reg0_q\,
	combout => \rom_block|Mux7~0_combout\);

-- Location: LCCOMB_X26_Y2_N0
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = (\rom_block|Mux8~0_combout\ & (\Mux159~0_combout\ $ (VCC))) # (!\rom_block|Mux8~0_combout\ & ((\Mux159~0_combout\) # (GND)))
-- \Add4~1\ = CARRY((\Mux159~0_combout\) # (!\rom_block|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux8~0_combout\,
	datab => \Mux159~0_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X23_Y2_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\rom_block|Mux8~0_combout\ & (\Mux159~0_combout\ $ (VCC))) # (!\rom_block|Mux8~0_combout\ & (\Mux159~0_combout\ & VCC))
-- \Add3~1\ = CARRY((\rom_block|Mux8~0_combout\ & \Mux159~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux8~0_combout\,
	datab => \Mux159~0_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X25_Y2_N4
\Register_file~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~2_combout\ = (\rom_block|Mux5~0_combout\ & ((\Add4~0_combout\) # ((\Register_file~1_combout\ & \Add3~0_combout\)))) # (!\rom_block|Mux5~0_combout\ & (\Register_file~1_combout\ & ((\Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux5~0_combout\,
	datab => \Register_file~1_combout\,
	datac => \Add4~0_combout\,
	datad => \Add3~0_combout\,
	combout => \Register_file~2_combout\);

-- Location: LCCOMB_X24_Y3_N30
\Register_file~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~3_combout\ = (\Register_file~2_combout\) # ((\rom_block|Mux8~0_combout\ & \rom_block|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_block|Mux8~0_combout\,
	datac => \rom_block|Mux7~0_combout\,
	datad => \Register_file~2_combout\,
	combout => \Register_file~3_combout\);

-- Location: LCCOMB_X24_Y3_N24
\Register_file[1][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file[1][0]~feeder_combout\ = \Register_file~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Register_file~3_combout\,
	combout => \Register_file[1][0]~feeder_combout\);

-- Location: LCCOMB_X24_Y2_N8
\rom_block|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_block|Mux4~0_combout\ = (\pc[3]~reg0_q\) # ((\pc[2]~reg0_q\) # (\pc[0]~reg0_q\ $ (\pc[1]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[3]~reg0_q\,
	datab => \pc[2]~reg0_q\,
	datac => \pc[0]~reg0_q\,
	datad => \pc[1]~reg0_q\,
	combout => \rom_block|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y2_N8
\Register_file~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~6_combout\ = (\rom_block|Mux7~0_combout\ & (!\rom_block|Mux4~0_combout\)) # (!\rom_block|Mux7~0_combout\ & ((\rom_block|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux4~0_combout\,
	datac => \rom_block|Mux5~0_combout\,
	datad => \rom_block|Mux7~0_combout\,
	combout => \Register_file~6_combout\);

-- Location: FF_X24_Y3_N25
\Register_file[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file[1][0]~feeder_combout\,
	ena => \Register_file~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][0]~q\);

-- Location: LCCOMB_X28_Y2_N2
\Register_file~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~4_combout\ = (!\pc[2]~reg0_q\ & !\pc[3]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc[2]~reg0_q\,
	datad => \pc[3]~reg0_q\,
	combout => \Register_file~4_combout\);

-- Location: LCCOMB_X21_Y2_N26
\Register_file[0][14]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file[0][14]~5_combout\ = (\Register_file~4_combout\ & ((\pc[1]~reg0_q\ & (!\pc[0]~reg0_q\)) # (!\pc[1]~reg0_q\ & ((\rom_block|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datab => \pc[1]~reg0_q\,
	datac => \Register_file~4_combout\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Register_file[0][14]~5_combout\);

-- Location: FF_X24_Y2_N11
\Register_file[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~3_combout\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][0]~q\);

-- Location: LCCOMB_X24_Y2_N10
\Mux159~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux159~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][0]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Register_file[1][0]~q\,
	datac => \Register_file[0][0]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux159~0_combout\);

-- Location: LCCOMB_X23_Y2_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\rom_block|Mux0~0_combout\ & ((\Mux158~0_combout\ & (\Add3~1\ & VCC)) # (!\Mux158~0_combout\ & (!\Add3~1\)))) # (!\rom_block|Mux0~0_combout\ & ((\Mux158~0_combout\ & (!\Add3~1\)) # (!\Mux158~0_combout\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\rom_block|Mux0~0_combout\ & (!\Mux158~0_combout\ & !\Add3~1\)) # (!\rom_block|Mux0~0_combout\ & ((!\Add3~1\) # (!\Mux158~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux0~0_combout\,
	datab => \Mux158~0_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X25_Y2_N12
\Register_file~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~7_combout\ = (\rom_block|Mux5~0_combout\ & ((\Add4~2_combout\) # ((\Register_file~1_combout\ & \Add3~2_combout\)))) # (!\rom_block|Mux5~0_combout\ & (\Register_file~1_combout\ & (\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux5~0_combout\,
	datab => \Register_file~1_combout\,
	datac => \Add3~2_combout\,
	datad => \Add4~2_combout\,
	combout => \Register_file~7_combout\);

-- Location: FF_X25_Y2_N13
\Register_file[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~7_combout\,
	ena => \Register_file~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][1]~q\);

-- Location: FF_X24_Y2_N27
\Register_file[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~7_combout\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][1]~q\);

-- Location: LCCOMB_X24_Y2_N26
\Mux158~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux158~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][1]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Register_file[1][1]~q\,
	datac => \Register_file[0][1]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux158~0_combout\);

-- Location: LCCOMB_X26_Y2_N2
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Mux158~0_combout\ & ((\rom_block|Mux0~0_combout\ & (!\Add4~1\)) # (!\rom_block|Mux0~0_combout\ & (\Add4~1\ & VCC)))) # (!\Mux158~0_combout\ & ((\rom_block|Mux0~0_combout\ & ((\Add4~1\) # (GND))) # (!\rom_block|Mux0~0_combout\ & 
-- (!\Add4~1\))))
-- \Add4~3\ = CARRY((\Mux158~0_combout\ & (\rom_block|Mux0~0_combout\ & !\Add4~1\)) # (!\Mux158~0_combout\ & ((\rom_block|Mux0~0_combout\) # (!\Add4~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux158~0_combout\,
	datab => \rom_block|Mux0~0_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X24_Y2_N2
\rom_block|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_block|Mux7~1_combout\ = (!\pc[2]~reg0_q\ & (!\pc[1]~reg0_q\ & (!\pc[3]~reg0_q\ & !\pc[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[2]~reg0_q\,
	datab => \pc[1]~reg0_q\,
	datac => \pc[3]~reg0_q\,
	datad => \pc[0]~reg0_q\,
	combout => \rom_block|Mux7~1_combout\);

-- Location: LCCOMB_X23_Y2_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Mux157~0_combout\ $ (\rom_block|Mux7~1_combout\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Mux157~0_combout\ & ((\rom_block|Mux7~1_combout\) # (!\Add3~3\))) # (!\Mux157~0_combout\ & (\rom_block|Mux7~1_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux157~0_combout\,
	datab => \rom_block|Mux7~1_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X24_Y2_N18
\Register_file~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~8_combout\ = (!\pc[2]~reg0_q\ & (!\pc[3]~reg0_q\ & ((\Add3~4_combout\) # (!\pc[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[2]~reg0_q\,
	datab => \Add3~4_combout\,
	datac => \pc[1]~reg0_q\,
	datad => \pc[3]~reg0_q\,
	combout => \Register_file~8_combout\);

-- Location: LCCOMB_X25_Y2_N10
\Register_file~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~9_combout\ = (\rom_block|Mux5~0_combout\ & ((\Add4~4_combout\) # ((!\pc[0]~reg0_q\ & \Register_file~8_combout\)))) # (!\rom_block|Mux5~0_combout\ & (((!\pc[0]~reg0_q\ & \Register_file~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux5~0_combout\,
	datab => \Add4~4_combout\,
	datac => \pc[0]~reg0_q\,
	datad => \Register_file~8_combout\,
	combout => \Register_file~9_combout\);

-- Location: FF_X25_Y2_N11
\Register_file[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~9_combout\,
	ena => \Register_file~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][2]~q\);

-- Location: FF_X24_Y2_N21
\Register_file[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~9_combout\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][2]~q\);

-- Location: LCCOMB_X24_Y2_N20
\Mux157~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux157~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][2]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Register_file[1][2]~q\,
	datac => \Register_file[0][2]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux157~0_combout\);

-- Location: LCCOMB_X26_Y2_N4
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = ((\Mux157~0_combout\ $ (\rom_block|Mux7~1_combout\ $ (\Add4~3\)))) # (GND)
-- \Add4~5\ = CARRY((\Mux157~0_combout\ & ((!\Add4~3\) # (!\rom_block|Mux7~1_combout\))) # (!\Mux157~0_combout\ & (!\rom_block|Mux7~1_combout\ & !\Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux157~0_combout\,
	datab => \rom_block|Mux7~1_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X23_Y2_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\rom_block|Mux6~0_combout\ & ((\Mux156~0_combout\ & (\Add3~5\ & VCC)) # (!\Mux156~0_combout\ & (!\Add3~5\)))) # (!\rom_block|Mux6~0_combout\ & ((\Mux156~0_combout\ & (!\Add3~5\)) # (!\Mux156~0_combout\ & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((\rom_block|Mux6~0_combout\ & (!\Mux156~0_combout\ & !\Add3~5\)) # (!\rom_block|Mux6~0_combout\ & ((!\Add3~5\) # (!\Mux156~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux6~0_combout\,
	datab => \Mux156~0_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X25_Y2_N14
\Register_file~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~10_combout\ = (\rom_block|Mux5~0_combout\ & ((\Add4~6_combout\) # ((\Register_file~1_combout\ & \Add3~6_combout\)))) # (!\rom_block|Mux5~0_combout\ & (\Register_file~1_combout\ & (\Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux5~0_combout\,
	datab => \Register_file~1_combout\,
	datac => \Add3~6_combout\,
	datad => \Add4~6_combout\,
	combout => \Register_file~10_combout\);

-- Location: LCCOMB_X25_Y2_N20
\Register_file~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~11_combout\ = (\Register_file~10_combout\) # ((\rom_block|Mux7~0_combout\ & \rom_block|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux7~0_combout\,
	datac => \rom_block|Mux6~0_combout\,
	datad => \Register_file~10_combout\,
	combout => \Register_file~11_combout\);

-- Location: FF_X25_Y2_N21
\Register_file[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~11_combout\,
	ena => \Register_file~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][3]~q\);

-- Location: FF_X24_Y2_N25
\Register_file[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~11_combout\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][3]~q\);

-- Location: LCCOMB_X24_Y2_N24
\Mux156~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux156~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][3]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Register_file[1][3]~q\,
	datac => \Register_file[0][3]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux156~0_combout\);

-- Location: LCCOMB_X26_Y2_N6
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Mux156~0_combout\ & ((\rom_block|Mux6~0_combout\ & (!\Add4~5\)) # (!\rom_block|Mux6~0_combout\ & (\Add4~5\ & VCC)))) # (!\Mux156~0_combout\ & ((\rom_block|Mux6~0_combout\ & ((\Add4~5\) # (GND))) # (!\rom_block|Mux6~0_combout\ & 
-- (!\Add4~5\))))
-- \Add4~7\ = CARRY((\Mux156~0_combout\ & (\rom_block|Mux6~0_combout\ & !\Add4~5\)) # (!\Mux156~0_combout\ & ((\rom_block|Mux6~0_combout\) # (!\Add4~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux156~0_combout\,
	datab => \rom_block|Mux6~0_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X25_Y2_N22
\flag_register[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_register[0]~0_combout\ = (!\Add4~2_combout\ & (!\Add4~0_combout\ & (!\Add4~4_combout\ & !\Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Add4~0_combout\,
	datac => \Add4~4_combout\,
	datad => \Add4~6_combout\,
	combout => \flag_register[0]~0_combout\);

-- Location: LCCOMB_X23_Y2_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Mux155~0_combout\ & (\Add3~7\ $ (GND))) # (!\Mux155~0_combout\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\Mux155~0_combout\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux155~0_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X25_Y2_N6
\Register_file~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~12_combout\ = (\rom_block|Mux5~0_combout\ & ((\Add4~8_combout\) # ((\Add3~8_combout\ & \Register_file~1_combout\)))) # (!\rom_block|Mux5~0_combout\ & (((\Add3~8_combout\ & \Register_file~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux5~0_combout\,
	datab => \Add4~8_combout\,
	datac => \Add3~8_combout\,
	datad => \Register_file~1_combout\,
	combout => \Register_file~12_combout\);

-- Location: FF_X25_Y2_N7
\Register_file[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~12_combout\,
	ena => \Register_file~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][4]~q\);

-- Location: FF_X24_Y2_N15
\Register_file[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~12_combout\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][4]~q\);

-- Location: LCCOMB_X24_Y2_N14
\Mux155~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux155~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][4]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Register_file[1][4]~q\,
	datac => \Register_file[0][4]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux155~0_combout\);

-- Location: LCCOMB_X26_Y2_N8
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\Mux155~0_combout\ & ((GND) # (!\Add4~7\))) # (!\Mux155~0_combout\ & (\Add4~7\ $ (GND)))
-- \Add4~9\ = CARRY((\Mux155~0_combout\) # (!\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux155~0_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X23_Y2_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Mux154~0_combout\ & (!\Add3~9\)) # (!\Mux154~0_combout\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\Mux154~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux154~0_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X25_Y2_N0
\Register_file~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~13_combout\ = (\rom_block|Mux5~0_combout\ & ((\Add4~10_combout\) # ((\Register_file~1_combout\ & \Add3~10_combout\)))) # (!\rom_block|Mux5~0_combout\ & (\Register_file~1_combout\ & ((\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux5~0_combout\,
	datab => \Register_file~1_combout\,
	datac => \Add4~10_combout\,
	datad => \Add3~10_combout\,
	combout => \Register_file~13_combout\);

-- Location: FF_X25_Y2_N1
\Register_file[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~13_combout\,
	ena => \Register_file~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][5]~q\);

-- Location: FF_X24_Y2_N17
\Register_file[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~13_combout\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][5]~q\);

-- Location: LCCOMB_X24_Y2_N16
\Mux154~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux154~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][5]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Register_file[1][5]~q\,
	datac => \Register_file[0][5]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux154~0_combout\);

-- Location: LCCOMB_X26_Y2_N10
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Mux154~0_combout\ & (\Add4~9\ & VCC)) # (!\Mux154~0_combout\ & (!\Add4~9\))
-- \Add4~11\ = CARRY((!\Mux154~0_combout\ & !\Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux154~0_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X28_Y2_N14
\Register_file~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~17_combout\ = (\pc[3]~reg0_q\) # ((\pc[2]~reg0_q\) # ((\pc[1]~reg0_q\ & !\pc[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \pc[0]~reg0_q\,
	datad => \pc[2]~reg0_q\,
	combout => \Register_file~17_combout\);

-- Location: LCCOMB_X25_Y2_N28
\Register_file[1][6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file[1][6]~18_combout\ = (\Register_file[1][6]~q\ & ((\Register_file~17_combout\) # ((\rom_block|Mux7~0_combout\ & \rom_block|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux7~0_combout\,
	datab => \Register_file[1][6]~q\,
	datac => \rom_block|Mux4~0_combout\,
	datad => \Register_file~17_combout\,
	combout => \Register_file[1][6]~18_combout\);

-- Location: LCCOMB_X26_Y2_N12
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\Mux153~0_combout\ & ((GND) # (!\Add4~11\))) # (!\Mux153~0_combout\ & (\Add4~11\ $ (GND)))
-- \Add4~13\ = CARRY((\Mux153~0_combout\) # (!\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X25_Y2_N18
\Register_file[1][6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file[1][6]~19_combout\ = (\Register_file[1][6]~18_combout\) # ((\rom_block|Mux5~0_combout\ & (\Add4~12_combout\ & !\Register_file~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux5~0_combout\,
	datab => \Register_file[1][6]~18_combout\,
	datac => \Add4~12_combout\,
	datad => \Register_file~17_combout\,
	combout => \Register_file[1][6]~19_combout\);

-- Location: FF_X25_Y2_N19
\Register_file[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file[1][6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][6]~q\);

-- Location: LCCOMB_X28_Y2_N30
\Register_file~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~14_combout\ = (\pc[3]~reg0_q\) # ((\pc[2]~reg0_q\) # ((\pc[1]~reg0_q\ & \pc[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \pc[0]~reg0_q\,
	datad => \pc[2]~reg0_q\,
	combout => \Register_file~14_combout\);

-- Location: LCCOMB_X28_Y2_N4
\Register_file[0][6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file[0][6]~15_combout\ = (\Register_file[0][6]~q\ & ((\Register_file~14_combout\) # ((!\rom_block|Mux4~0_combout\ & \rom_block|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux4~0_combout\,
	datab => \rom_block|Mux7~0_combout\,
	datac => \Register_file~14_combout\,
	datad => \Register_file[0][6]~q\,
	combout => \Register_file[0][6]~15_combout\);

-- Location: LCCOMB_X23_Y2_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Mux153~0_combout\ & (\Add3~11\ $ (GND))) # (!\Mux153~0_combout\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\Mux153~0_combout\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux153~0_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X28_Y2_N18
\Register_file[0][6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file[0][6]~16_combout\ = (\Register_file[0][6]~15_combout\) # ((!\Register_file~14_combout\ & (\Register_file~1_combout\ & \Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Register_file~14_combout\,
	datab => \Register_file~1_combout\,
	datac => \Register_file[0][6]~15_combout\,
	datad => \Add3~12_combout\,
	combout => \Register_file[0][6]~16_combout\);

-- Location: FF_X28_Y2_N19
\Register_file[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file[0][6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][6]~q\);

-- Location: LCCOMB_X24_Y2_N6
\Mux153~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux153~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][6]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Register_file[1][6]~q\,
	datac => \Register_file[0][6]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux153~0_combout\);

-- Location: LCCOMB_X23_Y2_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Mux152~0_combout\ & (!\Add3~13\)) # (!\Mux152~0_combout\ & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!\Mux152~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux152~0_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X26_Y2_N14
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (\Mux152~0_combout\ & (\Add4~13\ & VCC)) # (!\Mux152~0_combout\ & (!\Add4~13\))
-- \Add4~15\ = CARRY((!\Mux152~0_combout\ & !\Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux152~0_combout\,
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X22_Y2_N16
\Register_file~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~20_combout\ = (\pc[0]~reg0_q\ & ((\Add4~14_combout\))) # (!\pc[0]~reg0_q\ & (\Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datac => \Add3~14_combout\,
	datad => \Add4~14_combout\,
	combout => \Register_file~20_combout\);

-- Location: LCCOMB_X28_Y2_N12
\Register_file[1][13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file[1][13]~21_combout\ = (\Register_file~4_combout\ & ((\pc[1]~reg0_q\ & ((\pc[0]~reg0_q\))) # (!\pc[1]~reg0_q\ & (!\rom_block|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux4~0_combout\,
	datab => \Register_file~4_combout\,
	datac => \pc[0]~reg0_q\,
	datad => \pc[1]~reg0_q\,
	combout => \Register_file[1][13]~21_combout\);

-- Location: FF_X22_Y2_N17
\Register_file[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~20_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	ena => \Register_file[1][13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][7]~q\);

-- Location: FF_X21_Y2_N25
\Register_file[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~20_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][7]~q\);

-- Location: LCCOMB_X21_Y2_N24
\Mux152~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux152~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][7]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Register_file[1][7]~q\,
	datac => \Register_file[0][7]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux152~0_combout\);

-- Location: LCCOMB_X23_Y2_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\Mux151~0_combout\ & (\Add3~15\ $ (GND))) # (!\Mux151~0_combout\ & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((\Mux151~0_combout\ & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux151~0_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X22_Y2_N26
\Register_file~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~22_combout\ = (\pc[0]~reg0_q\ & (\Add4~16_combout\)) # (!\pc[0]~reg0_q\ & ((\Add3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datac => \Add4~16_combout\,
	datad => \Add3~16_combout\,
	combout => \Register_file~22_combout\);

-- Location: FF_X22_Y2_N27
\Register_file[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~22_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	ena => \Register_file[1][13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][8]~q\);

-- Location: FF_X21_Y2_N31
\Register_file[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~22_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][8]~q\);

-- Location: LCCOMB_X21_Y2_N30
\Mux151~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux151~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][8]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Register_file[1][8]~q\,
	datac => \Register_file[0][8]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux151~0_combout\);

-- Location: LCCOMB_X26_Y2_N16
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (\Mux151~0_combout\ & ((GND) # (!\Add4~15\))) # (!\Mux151~0_combout\ & (\Add4~15\ $ (GND)))
-- \Add4~17\ = CARRY((\Mux151~0_combout\) # (!\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux151~0_combout\,
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X25_Y2_N24
\flag_register[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_register[0]~1_combout\ = (\flag_register[0]~0_combout\ & (!\Add4~8_combout\ & (!\Add4~10_combout\ & !\Add4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag_register[0]~0_combout\,
	datab => \Add4~8_combout\,
	datac => \Add4~10_combout\,
	datad => \Add4~16_combout\,
	combout => \flag_register[0]~1_combout\);

-- Location: LCCOMB_X26_Y2_N18
\Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = (\Mux150~0_combout\ & (\Add4~17\ & VCC)) # (!\Mux150~0_combout\ & (!\Add4~17\))
-- \Add4~19\ = CARRY((!\Mux150~0_combout\ & !\Add4~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux150~0_combout\,
	datad => VCC,
	cin => \Add4~17\,
	combout => \Add4~18_combout\,
	cout => \Add4~19\);

-- Location: LCCOMB_X23_Y2_N18
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\Mux150~0_combout\ & (!\Add3~17\)) # (!\Mux150~0_combout\ & ((\Add3~17\) # (GND)))
-- \Add3~19\ = CARRY((!\Add3~17\) # (!\Mux150~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux150~0_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X22_Y2_N20
\Register_file~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~23_combout\ = (\pc[0]~reg0_q\ & (\Add4~18_combout\)) # (!\pc[0]~reg0_q\ & ((\Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datac => \Add4~18_combout\,
	datad => \Add3~18_combout\,
	combout => \Register_file~23_combout\);

-- Location: FF_X22_Y2_N21
\Register_file[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~23_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	ena => \Register_file[1][13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][9]~q\);

-- Location: FF_X21_Y2_N21
\Register_file[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~23_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][9]~q\);

-- Location: LCCOMB_X21_Y2_N20
\Mux150~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux150~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][9]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Register_file[1][9]~q\,
	datac => \Register_file[0][9]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux150~0_combout\);

-- Location: LCCOMB_X23_Y2_N20
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\Mux149~0_combout\ & (\Add3~19\ $ (GND))) # (!\Mux149~0_combout\ & (!\Add3~19\ & VCC))
-- \Add3~21\ = CARRY((\Mux149~0_combout\ & !\Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux149~0_combout\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X22_Y2_N22
\Register_file~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~24_combout\ = (\pc[0]~reg0_q\ & ((\Add4~20_combout\))) # (!\pc[0]~reg0_q\ & (\Add3~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datac => \Add3~20_combout\,
	datad => \Add4~20_combout\,
	combout => \Register_file~24_combout\);

-- Location: FF_X22_Y2_N23
\Register_file[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~24_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	ena => \Register_file[1][13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][10]~q\);

-- Location: FF_X21_Y2_N7
\Register_file[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~24_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][10]~q\);

-- Location: LCCOMB_X21_Y2_N6
\Mux149~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux149~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][10]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Register_file[1][10]~q\,
	datac => \Register_file[0][10]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux149~0_combout\);

-- Location: LCCOMB_X26_Y2_N20
\Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~20_combout\ = (\Mux149~0_combout\ & ((GND) # (!\Add4~19\))) # (!\Mux149~0_combout\ & (\Add4~19\ $ (GND)))
-- \Add4~21\ = CARRY((\Mux149~0_combout\) # (!\Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux149~0_combout\,
	datad => VCC,
	cin => \Add4~19\,
	combout => \Add4~20_combout\,
	cout => \Add4~21\);

-- Location: LCCOMB_X23_Y2_N22
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\Mux148~0_combout\ & (!\Add3~21\)) # (!\Mux148~0_combout\ & ((\Add3~21\) # (GND)))
-- \Add3~23\ = CARRY((!\Add3~21\) # (!\Mux148~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux148~0_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X22_Y2_N12
\Register_file~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~25_combout\ = (\pc[0]~reg0_q\ & ((\Add4~22_combout\))) # (!\pc[0]~reg0_q\ & (\Add3~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datab => \Add3~22_combout\,
	datad => \Add4~22_combout\,
	combout => \Register_file~25_combout\);

-- Location: FF_X22_Y2_N13
\Register_file[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~25_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	ena => \Register_file[1][13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][11]~q\);

-- Location: FF_X21_Y2_N13
\Register_file[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~25_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][11]~q\);

-- Location: LCCOMB_X21_Y2_N12
\Mux148~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux148~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][11]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Register_file[1][11]~q\,
	datac => \Register_file[0][11]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux148~0_combout\);

-- Location: LCCOMB_X26_Y2_N22
\Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~22_combout\ = (\Mux148~0_combout\ & (\Add4~21\ & VCC)) # (!\Mux148~0_combout\ & (!\Add4~21\))
-- \Add4~23\ = CARRY((!\Mux148~0_combout\ & !\Add4~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux148~0_combout\,
	datad => VCC,
	cin => \Add4~21\,
	combout => \Add4~22_combout\,
	cout => \Add4~23\);

-- Location: LCCOMB_X26_Y2_N24
\Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~24_combout\ = (\Mux147~0_combout\ & ((GND) # (!\Add4~23\))) # (!\Mux147~0_combout\ & (\Add4~23\ $ (GND)))
-- \Add4~25\ = CARRY((\Mux147~0_combout\) # (!\Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux147~0_combout\,
	datad => VCC,
	cin => \Add4~23\,
	combout => \Add4~24_combout\,
	cout => \Add4~25\);

-- Location: LCCOMB_X23_Y2_N24
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\Mux147~0_combout\ & (\Add3~23\ $ (GND))) # (!\Mux147~0_combout\ & (!\Add3~23\ & VCC))
-- \Add3~25\ = CARRY((\Mux147~0_combout\ & !\Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux147~0_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X22_Y2_N14
\Register_file~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~26_combout\ = (\pc[0]~reg0_q\ & (\Add4~24_combout\)) # (!\pc[0]~reg0_q\ & ((\Add3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datac => \Add4~24_combout\,
	datad => \Add3~24_combout\,
	combout => \Register_file~26_combout\);

-- Location: FF_X22_Y2_N15
\Register_file[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~26_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	ena => \Register_file[1][13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][12]~q\);

-- Location: FF_X21_Y2_N23
\Register_file[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~26_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][12]~q\);

-- Location: LCCOMB_X21_Y2_N22
\Mux147~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux147~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][12]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Register_file[1][12]~q\,
	datac => \Register_file[0][12]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux147~0_combout\);

-- Location: LCCOMB_X23_Y2_N26
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\Mux146~0_combout\ & (!\Add3~25\)) # (!\Mux146~0_combout\ & ((\Add3~25\) # (GND)))
-- \Add3~27\ = CARRY((!\Add3~25\) # (!\Mux146~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux146~0_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X22_Y2_N0
\Register_file~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~27_combout\ = (\pc[0]~reg0_q\ & ((\Add4~26_combout\))) # (!\pc[0]~reg0_q\ & (\Add3~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datac => \Add3~26_combout\,
	datad => \Add4~26_combout\,
	combout => \Register_file~27_combout\);

-- Location: FF_X22_Y2_N1
\Register_file[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~27_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	ena => \Register_file[1][13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][13]~q\);

-- Location: FF_X21_Y2_N17
\Register_file[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~27_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][13]~q\);

-- Location: LCCOMB_X21_Y2_N16
\Mux146~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux146~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][13]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Register_file[1][13]~q\,
	datac => \Register_file[0][13]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux146~0_combout\);

-- Location: LCCOMB_X26_Y2_N26
\Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~26_combout\ = (\Mux146~0_combout\ & (\Add4~25\ & VCC)) # (!\Mux146~0_combout\ & (!\Add4~25\))
-- \Add4~27\ = CARRY((!\Mux146~0_combout\ & !\Add4~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mux146~0_combout\,
	datad => VCC,
	cin => \Add4~25\,
	combout => \Add4~26_combout\,
	cout => \Add4~27\);

-- Location: LCCOMB_X23_Y2_N28
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\Mux145~0_combout\ & (\Add3~27\ $ (GND))) # (!\Mux145~0_combout\ & (!\Add3~27\ & VCC))
-- \Add3~29\ = CARRY((\Mux145~0_combout\ & !\Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux145~0_combout\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X22_Y2_N30
\Register_file~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~28_combout\ = (\pc[0]~reg0_q\ & ((\Add4~28_combout\))) # (!\pc[0]~reg0_q\ & (\Add3~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datab => \Add3~28_combout\,
	datad => \Add4~28_combout\,
	combout => \Register_file~28_combout\);

-- Location: FF_X22_Y2_N31
\Register_file[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~28_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	ena => \Register_file[1][13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][14]~q\);

-- Location: FF_X21_Y2_N11
\Register_file[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~28_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][14]~q\);

-- Location: LCCOMB_X21_Y2_N10
\Mux145~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux145~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][14]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Register_file[1][14]~q\,
	datac => \Register_file[0][14]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux145~0_combout\);

-- Location: LCCOMB_X26_Y2_N28
\Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~28_combout\ = (\Mux145~0_combout\ & ((GND) # (!\Add4~27\))) # (!\Mux145~0_combout\ & (\Add4~27\ $ (GND)))
-- \Add4~29\ = CARRY((\Mux145~0_combout\) # (!\Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mux145~0_combout\,
	datad => VCC,
	cin => \Add4~27\,
	combout => \Add4~28_combout\,
	cout => \Add4~29\);

-- Location: LCCOMB_X25_Y2_N26
\flag_register[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_register[0]~2_combout\ = (!\Add4~26_combout\ & (!\Add4~24_combout\ & !\Add4~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add4~26_combout\,
	datac => \Add4~24_combout\,
	datad => \Add4~28_combout\,
	combout => \flag_register[0]~2_combout\);

-- Location: LCCOMB_X23_Y2_N30
\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = \Add3~29\ $ (\Mux144~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mux144~0_combout\,
	cin => \Add3~29\,
	combout => \Add3~30_combout\);

-- Location: LCCOMB_X22_Y2_N8
\Register_file~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file~29_combout\ = (\pc[0]~reg0_q\ & ((\Add4~30_combout\))) # (!\pc[0]~reg0_q\ & (\Add3~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datac => \Add3~30_combout\,
	datad => \Add4~30_combout\,
	combout => \Register_file~29_combout\);

-- Location: FF_X22_Y2_N9
\Register_file[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Register_file~29_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	ena => \Register_file[1][13]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[1][15]~q\);

-- Location: FF_X21_Y2_N29
\Register_file[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Register_file~29_combout\,
	sclr => \ALT_INV_pc[1]~reg0_q\,
	sload => VCC,
	ena => \Register_file[0][14]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Register_file[0][15]~q\);

-- Location: LCCOMB_X21_Y2_N28
\Mux144~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux144~0_combout\ = (\rom_block|Mux4~0_combout\ & ((\Register_file[0][15]~q\))) # (!\rom_block|Mux4~0_combout\ & (\Register_file[1][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Register_file[1][15]~q\,
	datac => \Register_file[0][15]~q\,
	datad => \rom_block|Mux4~0_combout\,
	combout => \Mux144~0_combout\);

-- Location: LCCOMB_X26_Y2_N30
\Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~30_combout\ = \Add4~29\ $ (!\Mux144~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mux144~0_combout\,
	cin => \Add4~29\,
	combout => \Add4~30_combout\);

-- Location: LCCOMB_X25_Y2_N16
\flag_register[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_register[0]~3_combout\ = (\Add4~14_combout\) # ((\Add4~12_combout\) # ((\Add4~30_combout\) # (\Add4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~14_combout\,
	datab => \Add4~12_combout\,
	datac => \Add4~30_combout\,
	datad => \Add4~18_combout\,
	combout => \flag_register[0]~3_combout\);

-- Location: LCCOMB_X25_Y2_N2
\flag_register[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_register[0]~4_combout\ = (!\Add4~20_combout\ & (!\Add4~22_combout\ & (\flag_register[0]~2_combout\ & !\flag_register[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~20_combout\,
	datab => \Add4~22_combout\,
	datac => \flag_register[0]~2_combout\,
	datad => \flag_register[0]~3_combout\,
	combout => \flag_register[0]~4_combout\);

-- Location: LCCOMB_X25_Y2_N8
\flag_register[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag_register[0]~5_combout\ = (\rom_block|Mux5~0_combout\ & (\flag_register[0]~1_combout\ & ((\flag_register[0]~4_combout\)))) # (!\rom_block|Mux5~0_combout\ & (((flag_register(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux5~0_combout\,
	datab => \flag_register[0]~1_combout\,
	datac => flag_register(0),
	datad => \flag_register[0]~4_combout\,
	combout => \flag_register[0]~5_combout\);

-- Location: FF_X25_Y2_N9
\flag_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \flag_register[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => flag_register(0));

-- Location: LCCOMB_X19_Y2_N10
\pc~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc~9_combout\ = (\reset~input_o\) # ((\rom_block|Mux0~0_combout\ & !flag_register(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \rom_block|Mux0~0_combout\,
	datad => flag_register(0),
	combout => \pc~9_combout\);

-- Location: LCCOMB_X25_Y2_N30
\pc~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc~11_combout\ = (\pc~8_combout\) # ((!\pc~9_combout\ & (\pc[0]~reg0_q\ $ (\pc[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[0]~reg0_q\,
	datab => \pc[1]~reg0_q\,
	datac => \pc~8_combout\,
	datad => \pc~9_combout\,
	combout => \pc~11_combout\);

-- Location: FF_X24_Y2_N19
\pc[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \pc~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[1]~reg0_q\);

-- Location: LCCOMB_X24_Y2_N28
\pc~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc~12_combout\ = (!\pc~9_combout\ & (\pc[2]~reg0_q\ $ (((\pc[1]~reg0_q\ & \pc[0]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[0]~reg0_q\,
	datac => \pc[2]~reg0_q\,
	datad => \pc~9_combout\,
	combout => \pc~12_combout\);

-- Location: FF_X24_Y2_N29
\pc[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[2]~reg0_q\);

-- Location: LCCOMB_X24_Y2_N0
\rom_block|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rom_block|Mux0~0_combout\ = (\pc[2]~reg0_q\ & (!\pc[1]~reg0_q\ & (!\pc[3]~reg0_q\ & !\pc[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[2]~reg0_q\,
	datab => \pc[1]~reg0_q\,
	datac => \pc[3]~reg0_q\,
	datad => \pc[0]~reg0_q\,
	combout => \rom_block|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y2_N16
\pc~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc~8_combout\ = (\rom_block|Mux0~0_combout\ & !flag_register(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rom_block|Mux0~0_combout\,
	datad => flag_register(0),
	combout => \pc~8_combout\);

-- Location: LCCOMB_X24_Y2_N4
\pc~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc~10_combout\ = (\pc~8_combout\ & ((\rom_block|Mux8~0_combout\) # ((!\pc[0]~reg0_q\ & !\pc~9_combout\)))) # (!\pc~8_combout\ & (((!\pc[0]~reg0_q\ & !\pc~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc~8_combout\,
	datab => \rom_block|Mux8~0_combout\,
	datac => \pc[0]~reg0_q\,
	datad => \pc~9_combout\,
	combout => \pc~10_combout\);

-- Location: FF_X24_Y2_N5
\pc[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[0]~reg0_q\);

-- Location: LCCOMB_X21_Y2_N18
\result~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~26_combout\ = (\rom_block|Mux7~0_combout\ & (\rom_block|Mux8~0_combout\)) # (!\rom_block|Mux7~0_combout\ & ((\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rom_block|Mux8~0_combout\,
	datab => \Add3~0_combout\,
	datad => \rom_block|Mux7~0_combout\,
	combout => \result~26_combout\);

-- Location: LCCOMB_X21_Y2_N0
\Register_file[0][14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Register_file[0][14]~0_combout\ = (!\pc[2]~reg0_q\ & (!\pc[3]~reg0_q\ & ((!\pc[0]~reg0_q\) # (!\pc[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[2]~reg0_q\,
	datab => \pc[1]~reg0_q\,
	datac => \pc[0]~reg0_q\,
	datad => \pc[3]~reg0_q\,
	combout => \Register_file[0][14]~0_combout\);

-- Location: FF_X21_Y2_N19
\result[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~26_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[0]~reg0_q\);

-- Location: LCCOMB_X21_Y2_N8
\result~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~29_combout\ = (\Add3~2_combout\ & ((\pc[1]~reg0_q\) # ((\pc[2]~reg0_q\) # (\pc[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[2]~reg0_q\,
	datac => \Add3~2_combout\,
	datad => \pc[3]~reg0_q\,
	combout => \result~29_combout\);

-- Location: FF_X21_Y2_N9
\result[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~29_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[1]~reg0_q\);

-- Location: LCCOMB_X28_Y2_N28
\result~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~27_combout\ = (\rom_block|Mux7~0_combout\ & ((\rom_block|Mux7~1_combout\))) # (!\rom_block|Mux7~0_combout\ & (\Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_block|Mux7~0_combout\,
	datac => \Add3~4_combout\,
	datad => \rom_block|Mux7~1_combout\,
	combout => \result~27_combout\);

-- Location: FF_X28_Y2_N29
\result[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~27_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[2]~reg0_q\);

-- Location: LCCOMB_X22_Y2_N6
\result~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~28_combout\ = (\rom_block|Mux7~0_combout\ & (\rom_block|Mux6~0_combout\)) # (!\rom_block|Mux7~0_combout\ & ((\Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rom_block|Mux6~0_combout\,
	datac => \rom_block|Mux7~0_combout\,
	datad => \Add3~6_combout\,
	combout => \result~28_combout\);

-- Location: FF_X22_Y2_N7
\result[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~28_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[3]~reg0_q\);

-- Location: LCCOMB_X21_Y2_N2
\result~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~30_combout\ = (\Add3~8_combout\ & ((\pc[1]~reg0_q\) # ((\pc[3]~reg0_q\) # (\pc[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \Add3~8_combout\,
	datad => \pc[2]~reg0_q\,
	combout => \result~30_combout\);

-- Location: FF_X21_Y2_N3
\result[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~30_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[4]~reg0_q\);

-- Location: LCCOMB_X21_Y2_N4
\result~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~31_combout\ = (\Add3~10_combout\ & ((\pc[1]~reg0_q\) # ((\pc[3]~reg0_q\) # (\pc[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \pc[2]~reg0_q\,
	datad => \Add3~10_combout\,
	combout => \result~31_combout\);

-- Location: FF_X21_Y2_N5
\result[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~31_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[5]~reg0_q\);

-- Location: LCCOMB_X21_Y2_N14
\result~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~32_combout\ = (\Add3~12_combout\ & ((\pc[1]~reg0_q\) # ((\pc[3]~reg0_q\) # (\pc[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \Add3~12_combout\,
	datad => \pc[2]~reg0_q\,
	combout => \result~32_combout\);

-- Location: FF_X21_Y2_N15
\result[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~32_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[6]~reg0_q\);

-- Location: LCCOMB_X22_Y2_N28
\result~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~33_combout\ = (\Add3~14_combout\ & ((\pc[3]~reg0_q\) # ((\pc[2]~reg0_q\) # (\pc[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[3]~reg0_q\,
	datab => \pc[2]~reg0_q\,
	datac => \Add3~14_combout\,
	datad => \pc[1]~reg0_q\,
	combout => \result~33_combout\);

-- Location: FF_X22_Y2_N29
\result[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~33_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[7]~reg0_q\);

-- Location: LCCOMB_X22_Y2_N2
\result~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~34_combout\ = (\Add3~16_combout\ & ((\pc[1]~reg0_q\) # ((\pc[2]~reg0_q\) # (\pc[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[2]~reg0_q\,
	datac => \pc[3]~reg0_q\,
	datad => \Add3~16_combout\,
	combout => \result~34_combout\);

-- Location: FF_X22_Y2_N3
\result[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~34_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[8]~reg0_q\);

-- Location: LCCOMB_X22_Y2_N4
\result~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~35_combout\ = (\Add3~18_combout\ & ((\pc[1]~reg0_q\) # ((\pc[2]~reg0_q\) # (\pc[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[2]~reg0_q\,
	datac => \pc[3]~reg0_q\,
	datad => \Add3~18_combout\,
	combout => \result~35_combout\);

-- Location: FF_X22_Y2_N5
\result[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~35_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[9]~reg0_q\);

-- Location: LCCOMB_X22_Y2_N18
\result~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~36_combout\ = (\Add3~20_combout\ & ((\pc[3]~reg0_q\) # ((\pc[2]~reg0_q\) # (\pc[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[3]~reg0_q\,
	datab => \pc[2]~reg0_q\,
	datac => \Add3~20_combout\,
	datad => \pc[1]~reg0_q\,
	combout => \result~36_combout\);

-- Location: FF_X22_Y2_N19
\result[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~36_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[10]~reg0_q\);

-- Location: LCCOMB_X28_Y2_N6
\result~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~37_combout\ = (\Add3~22_combout\ & ((\pc[1]~reg0_q\) # ((\pc[3]~reg0_q\) # (\pc[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \pc[2]~reg0_q\,
	datad => \Add3~22_combout\,
	combout => \result~37_combout\);

-- Location: FF_X28_Y2_N7
\result[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~37_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[11]~reg0_q\);

-- Location: LCCOMB_X22_Y2_N24
\result~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~38_combout\ = (\Add3~24_combout\ & ((\pc[1]~reg0_q\) # ((\pc[2]~reg0_q\) # (\pc[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[2]~reg0_q\,
	datac => \pc[3]~reg0_q\,
	datad => \Add3~24_combout\,
	combout => \result~38_combout\);

-- Location: FF_X22_Y2_N25
\result[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~38_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[12]~reg0_q\);

-- Location: LCCOMB_X28_Y2_N16
\result~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~39_combout\ = (\Add3~26_combout\ & ((\pc[1]~reg0_q\) # ((\pc[3]~reg0_q\) # (\pc[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \pc[2]~reg0_q\,
	datad => \Add3~26_combout\,
	combout => \result~39_combout\);

-- Location: FF_X28_Y2_N17
\result[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~39_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[13]~reg0_q\);

-- Location: LCCOMB_X22_Y2_N10
\result~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~40_combout\ = (\Add3~28_combout\ & ((\pc[1]~reg0_q\) # ((\pc[2]~reg0_q\) # (\pc[3]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[2]~reg0_q\,
	datac => \pc[3]~reg0_q\,
	datad => \Add3~28_combout\,
	combout => \result~40_combout\);

-- Location: FF_X22_Y2_N11
\result[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~40_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[14]~reg0_q\);

-- Location: LCCOMB_X28_Y2_N10
\result~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~41_combout\ = (\Add3~30_combout\ & ((\pc[1]~reg0_q\) # ((\pc[3]~reg0_q\) # (\pc[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc[1]~reg0_q\,
	datab => \pc[3]~reg0_q\,
	datac => \pc[2]~reg0_q\,
	datad => \Add3~30_combout\,
	combout => \result~41_combout\);

-- Location: FF_X28_Y2_N11
\result[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \result~41_combout\,
	ena => \Register_file[0][14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \result[15]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N8
\pc[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => pc(0),
	o => \pc[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\pc[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => pc(1),
	o => \pc[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\pc[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => pc(2),
	o => \pc[2]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\pc[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => pc(3),
	o => \pc[3]~input_o\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

pc(0) <= \pc[0]~output_o\;

pc(1) <= \pc[1]~output_o\;

pc(2) <= \pc[2]~output_o\;

pc(3) <= \pc[3]~output_o\;
END structure;


