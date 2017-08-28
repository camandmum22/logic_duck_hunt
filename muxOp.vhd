LIBRARY ieee;
USE ieee.std_logic_1164.ALL;      -- can be different dependent on tool used.
USE ieee.std_logic_unsigned.ALL;  -- can be different dependent on tool used.

ENTITY  muxOp IS
   PORT (sel           : IN  STD_LOGIC;
         op            : IN  std_logic_vector(2 downto 0);
         opOut           : OUT std_logic_vector(2 downto 0)
        );
END muxOp;

ARCHITECTURE cases OF muxOp IS

-- =============================================================================
BEGIN 

mux:PROCESS(op)
  --VARIABLE  sel  :  STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
  --sel := s1 & s0;   -- concatenate s1 and s0  
  CASE sel IS
    WHEN  '0'  =>  opOut <= op;
    WHEN  '1'  =>  opOut <= "000";
    WHEN OTHERS =>  opOut <= "000";
  END CASE;

END PROCESS mux;
  
END cases;