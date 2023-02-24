LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY Assignment is
	port (x,y : in STD_LOGIC_VECTOR (3 DOWNTO 0);
			Cin : in STD_LOGIC;
			Cout : out STD_LOGIC;
			Sum : Buffer STD_LOGIC_VECTOR (4 DOWNTO 0);
			led0 , led1 : out STD_LOGIC_VECTOR (0 TO 6));
	end Assignment;
	
ARCHITECTURE func OF Assignment is
	

	BEGIN
	sum <= ('0' & x ) + ('0' & y) + ("0000" & Cin);
	Cout <= sum(4);
	
	PROCESS (Sum)
	BEGIN
			IF Sum = "00000" THEN led1<= NOT "1111110"; led0<= NOT "1111110"; 	--0
			ELSIF Sum = "00001" THEN led1<= NOT "1111110"; led0<= NOT "0110000"; --1
			ELSIF Sum = "00010" THEN led1<= NOT "1111110"; led0<= NOT "1101101"; --2
			ELSIF Sum = "00011" THEN led1<= NOT "1111110"; led0<= NOT "1111001"; --3
			ELSIF Sum = "00100" THEN led1<= NOT "1111110"; led0<= NOT "0110011"; --4
			ELSIF Sum = "00101" THEN led1<= NOT "1111110"; led0<= NOT "1011011"; --5
			ELSIF Sum = "00110" THEN led1<= NOT "1111110"; led0<= NOT "1011111"; --6
			ELSIF Sum = "00111" THEN led1<= NOT "1111110"; led0<= NOT "1110000"; --7
			ELSIF Sum = "01000" THEN led1<= NOT "1111110"; led0<= NOT "1111111"; --8
			ELSIF Sum = "01001" THEN led1<= NOT "1111110"; led0<= NOT "1110011"; --9
			ELSIF Sum = "01010" THEN led1<= NOT "0110000"; led0<= NOT "1111110"; --10
			ELSIF Sum = "01011" THEN led1<= NOT "0110000"; led0<= NOT "0110000"; --11
			ELSIF Sum = "01100" THEN led1<= NOT "0110000"; led0<= NOT "1101101"; --12
			ELSIF Sum = "01101" THEN led1<= NOT "0110000"; led0<= NOT "1111001"; --13
			ELSIF Sum = "01110" THEN led1<= NOT "0110000"; led0<= NOT "0110011"; --14
			ELSIF Sum = "01111" THEN led1<= NOT "0110000"; led0<= NOT "1011011"; --15
			ELSIF Sum = "10000" THEN led1<= NOT "0110000"; led0<= NOT "1011111"; --16 
			ELSIF Sum = "10001" THEN led1<= NOT "0110000"; led0<= NOT "1110000"; --17 
			ELSIF Sum = "10010" THEN led1<= NOT "0110000"; led0<= NOT "1111111"; --18
			ELSIF Sum = "10011" THEN led1<= NOT "0110000"; led0<= NOT "1110011"; --19
			ELSIF Sum = "10100" THEN led1<= NOT "1101101"; led0<= NOT "1111110"; --20
			ELSIF Sum = "10101" THEN led1<= NOT "1101101"; led0<= NOT "0110000"; --21
			ELSIF Sum = "10110" THEN led1<= NOT "1101101"; led0<= NOT "1101101"; --22
			ELSIF Sum = "10111" THEN led1<= NOT "1101101"; led0<= NOT "1111001"; --23
			ELSIF Sum = "11000" THEN led1<= NOT "1101101"; led0<= NOT "0110011"; --24
			ELSIF Sum = "11001" THEN led1<= NOT "1101101"; led0<= NOT "1011011"; --25
			ELSIF Sum = "11010" THEN led1<= NOT "1101101"; led0<= NOT "1011111"; --26
			ELSIF Sum = "11011" THEN led1<= NOT "1101101"; led0<= NOT "1110000"; --27
			ELSIF Sum = "11100" THEN led1<= NOT "1101101"; led0<= NOT "1111111"; --28
			ELSIF Sum = "11101" THEN led1<= NOT "1101101"; led0<= NOT "1110011"; --29
			ELSIF Sum = "11110" THEN led1<= NOT "1111001"; led0<= NOT "1111110"; --30
			ELSIF Sum = "11111" THEN led1<= NOT "1111001"; led0<= NOT "0110000"; --31
			ELSE led1<= NOT "0000000"; led0<= NOT "0000000";
			END IF;
			END PROCESS;
	END func;