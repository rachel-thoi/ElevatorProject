-- 

--	Elevator Simulator Components 

-- 

 

library IEEE; 

use IEEE.STD_LOGIC_1164.all; 

 

package elev_sim_components is 

 

component SimController 

port ( SYSCLK:		in		std_logic; 

 POC:			in		std_logic; 

 EMVUP:		in		std_logic; 

 EMVDN:		in		std_logic; 

 EOPEN:		in		std_logic; 

 ECLOSE:		in		std_logic; 

 ECOMP:		out	std_logic; 

  

 RcoPC:		in		std_logic; 

 EFInt:		in		std_logic_vector(4 downto 1); 

 DelaySel:	out	std_logic; 

 LoadPC:		out	std_logic; 

 EnPC:		out	std_logic; 

 LoadCF:		out	std_logic; 

 LshCF:		out	std_logic; 

 RshCF:		out	std_logic); 

end component; 

 

-- Used to implement current floor 

component ShiftRegister 

generic (N: integer := 4); 

port ( SYSCLK:		in		std_logic; 

 ValueIn:	in		std_logic_vector(N downto 1); 

 Load:		in		std_logic; 

 Lsh:			in		std_logic; 

 Rsh:			in		std_logic; 

 ValueOut:	out	std_logic_vector(N downto 1)	); 

end component;			  

 

end elev_sim_components; 
