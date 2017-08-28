library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity Counter is
   port( clk: in std_logic;
		address: out STD_LOGIC_VECTOR (3 DOWNTO 0);
		load: out std_logic
		);
end Counter;
 
architecture Behavioral of Counter is
   signal temp: std_logic_vector(3 DOWNTO 0);
   signal bandera : integer := 0;
begin   process(clk)
   begin
	if rising_edge(clk) then
        if temp="1111" then
	       temp<="0000";
	    else
	       temp <= temp + 1;
	    end if;
	 end if;
	 --if clk = '0' then
		load <= not clk;
	 --bandera <= bandera + 1;
	 --if bandera = 2 then
		--load <= '1';
		--bandera <= 0;
	 --else
		--load <= '0';
	 --end if;		
   end process;
   address <= temp;
end Behavioral;