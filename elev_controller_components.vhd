-- 

-- Elevator Controller Components 

-- 

 

library IEEE; 

use IEEE.STD_LOGIC_1164.all; 

 

package elev_controller_components is 

 

component ControllerController 

port ( SYSCLK:		in		std_logic; 

 POC:			in		std_logic; 

 ECOMP:		in		std_logic; 

 DROPEN:		in		std_logic; 

 DRCLOSE:	in		std_logic; 

 EMVUP:		out	std_logic; 

 EMVDN:		out	std_logic; 

 EOPEN:		out	std_logic; 

 ECLOSE:		out	std_logic; 

  

 DirUp:		in		std_logic; 

 DirDn:		in		std_logic; 

 ReqHere:	in		std_logic; 

 ReqUp:		in		std_logic; 

 ReqDn:		in		std_logic; 

 RcoPC:		in		std_logic; 

  

 UpDir:		out	std_logic; 

 DnDir:		out	std_logic; 

 ClrDir:		out	std_logic; 

 DelaySel:	out	std_logic; 

 LoadPC:		out	std_logic; 

 EnPC:		out	std_logic; 

 ClrHere:	out	std_logic; 

 ClrAll:		out	std_logic	); 

end component; 

 

component DirReg 

port ( SYSCLK:	in		std_logic; 

 SetUp:	in		std_logic; 

 SetDn:	in		std_logic; 

 Clr:		in		std_logic; 

 Up:		out	std_logic; 

 Dn:		out	std_logic	); 

end component; 

 

component ReqLatch 

generic (Max: integer := 4; Min: integer := 1); 

port ( SYSCLK:		in		std_logic; 

 Input:		in		std_logic_vector(Max downto Min); 

 Here:		in		std_logic_vector(4 downto 1); 

 ClrHere:	in		std_logic; 

 ClrAll:		in		std_logic; 

 Value:		out	std_logic_vector(Max downto Min)	); 

end component; 

 

component ReqProcessor 

port ( UpReq:		in		std_logic_vector(3 downto 1); 

 DnReq:		in		std_logic_vector(4 downto 2); 

 GoReq:		in		std_logic_vector(4 downto 1); 

 Here:		in		std_logic_vector(4 downto 1); 

 Up:			in		std_logic; 

 Dn:			in		std_logic; 

 ReqUp:		out	std_logic; 

 ReqDn:		out	std_logic; 

 ReqHere:	out	std_logic	); 

end component; 

end elev_controller_components; 
