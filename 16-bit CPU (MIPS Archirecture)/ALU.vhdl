library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity ALU is
    port (
        A, B : in std_logic_vector(15 downto 0);
        ALU_OUT : out std_logic_vector(15 downto 0);
	opcode  : in std_logic_vector (3 downto 0);
	func  	: in std_logic_vector (2 downto 0)
    );
end ALU;

architecture Arc_ALU of ALU is 
begin
	process(A, B, opcode, func)
	begin
	if opcode = "0001" then 
		case func is
 			when "000" =>
 				ALU_OUT(15 downto 0)<= A + B;

 			when "001" =>
 				ALU_OUT(15 downto 0)<= A - B;

 			when "010" =>
 				ALU_OUT(15 downto 0)<= std_logic_vector(unsigned(A(7 downto 0)) * unsigned(B(7 downto 0)));

 			when "011" =>
 				ALU_OUT(15 downto 0)<= std_logic_vector(unsigned(A) / unsigned(B));

			when "100" =>
 				ALU_OUT(15 downto 0)<= A and B;

 			when "101" =>
 				ALU_OUT(15 downto 0)<= A or B;

 			when "110" =>
 				ALU_OUT(15 downto 0)<= A xor B;

 			when others =>
 				ALU_OUT(15 downto 0)<= not A ;
		end case;
	else
		case opcode is
 			when "0010" =>
 				ALU_OUT(15 downto 0)<= A + B;

 			when "0011" =>
 				ALU_OUT(15 downto 0)<= A - B;

			when "0100" =>
 				ALU_OUT(15 downto 0)<= A and B;

 			when "0101" =>
 				ALU_OUT(15 downto 0)<= A or B;

 			when "0110" =>
 				ALU_OUT(15 downto 0)<= A xor B;

 			when others =>
 				NULL;
		end case;
	end if;
  
	end process;
 
end Arc_ALU;