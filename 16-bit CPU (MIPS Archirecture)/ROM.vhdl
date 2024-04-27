library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity ROM is
	port
	(
		addr : in  std_logic_vector (3 downto 0);
		CE   : in  std_logic;
		RE   : in  std_logic;
		OUTP : out std_logic_vector (15 downto 0)
	);
end ROM;

architecture behave of ROM is

type ROM_array is array (0 to 15) of std_logic_vector(15 downto 0);
constant ROM_data : ROM_array := (
	"0111001000000100",
	"0111000000001001",
	"0010000000001001",
	"0011001001000001",
	"1110000000000010",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000", 
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000"
    );

begin
	process(addr,CE,RE)
	begin
		if CE = '1' and RE = '1' then
        		OUTP <= ROM_data(to_integer(unsigned(addr)));
		end if;
	end process;
end behave;