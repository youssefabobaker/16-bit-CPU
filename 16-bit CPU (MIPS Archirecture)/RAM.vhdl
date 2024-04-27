library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity RAM is
	port
	(
		Addr: in  std_logic_vector (3 downto 0);
		INP : in std_logic_vector (15 downto 0);
		OUTP: out std_logic_vector (15 downto 0);
		CE  : in  std_logic;
		RE  : in  std_logic;
		WE  : in  std_logic
	);
end RAM;

architecture behave of RAM is

type RAM_array is array (0 to 15) of std_logic_vector(15 downto 0);
signal RAM_data : RAM_array := (
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
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000",
	"0000000000000000"
);

begin
	process(Addr,CE,RE,WE)
	begin
		if    CE = '1' and RE = '1' then
        		OUTP <= RAM_data(to_integer(unsigned(Addr)));
		elsif CE = '1' and WE = '1' then
			RAM_data(to_integer(unsigned(Addr))) <= INP;
		end if;
	end process;
end behave;