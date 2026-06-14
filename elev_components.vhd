-- 

--	Elevator Components Package 

-- (shared between simulator and controller) 

-- 

 

library IEEE; 

use IEEE.STD_LOGIC_1164.all; 

 

package elev_components is 

 

component DelayMemory 

generic (D0: std_logic_vector(4 downto 1); 

D1: std_logic_vector(4 downto 1)); 

port ( Sel:	in		std_logic; 

 Val:	out	std_logic_vector(4 downto 1)	); 

end component; 

 

-- Used to implement progress counter 

component DownCounter 

generic (N: integer := 4); 

port ( SYSCLK:		in		std_logic; 

 Load:		in		std_logic; 

 ValueIn:	in		std_logic_vector(N downto 1); 

 EN:			in		std_logic; 

 ValueOut:	out	std_logic_vector(N downto 1); 

 RCO:			out	std_logic); 

end component; 

end elev_components; 
