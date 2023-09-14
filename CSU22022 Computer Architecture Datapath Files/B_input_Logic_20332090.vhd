----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2021 09:20:06 PM
-- Design Name: 
-- Module Name: B_input_Logic_20332090 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity B_input_Logic_20332090 is
  Port ( B : in std_logic_vector (31 downto 0);
        S0 : in std_logic;
        S1 : in std_logic;
        Goutput : out std_logic_vector (31 downto 0));
end B_input_Logic_20332090;

architecture Behavioral of B_input_Logic_20332090 is

constant Clk_period : time := 5 ns;

begin

--Y <= "00000000000000000000000000000000" after Clk_period when S0 = '0' and S1 = '0' else
--      B after Clk_period when S0 = '0' and S1 = '1' else
--      not(B) after Clk_period when S0 = '1' and S1 = '0' else
--      "11111111111111111111111111111111" when S0 = '1' and S1 = '1' else
--      "00000000000000000000000000000000" after Clk_period;

Goutput(0) <= (S0 AND B(0)) OR (S1 AND (NOT B(0)));
Goutput(1) <= (S0 AND B(1)) OR (S1 AND (NOT B(1)));
Goutput(2) <= (S0 AND B(2)) OR (S1 AND (NOT B(2)));
Goutput(3) <= (S0 AND B(3)) OR (S1 AND (NOT B(3)));
Goutput(4) <= (S0 AND B(4)) OR (S1 AND (NOT B(4)));
Goutput(5) <= (S0 AND B(5)) OR (S1 AND (NOT B(5)));
Goutput(6) <= (S0 AND B(6)) OR (S1 AND (NOT B(6)));
Goutput(7) <= (S0 AND B(7)) OR (S1 AND (NOT B(7)));
Goutput(8) <= (S0 AND B(8)) OR (S1 AND (NOT B(8)));
Goutput(9) <= (S0 AND B(9)) OR (S1 AND (NOT B(9)));
Goutput(10) <= (S0 AND B(10)) OR (S1 AND (NOT B(10)));
Goutput(11) <= (S0 AND B(11)) OR (S1 AND (NOT B(11)));
Goutput(12) <= (S0 AND B(12)) OR (S1 AND (NOT B(12)));
Goutput(13) <= (S0 AND B(13)) OR (S1 AND (NOT B(13)));
Goutput(14) <= (S0 AND B(14)) OR (S1 AND (NOT B(14)));
Goutput(15) <= (S0 AND B(15)) OR (S1 AND (NOT B(15)));
Goutput(16) <= (S0 AND B(16)) OR (S1 AND (NOT B(16)));
Goutput(17) <= (S0 AND B(17)) OR (S1 AND (NOT B(17)));
Goutput(18) <= (S0 AND B(18)) OR (S1 AND (NOT B(18)));
Goutput(19) <= (S0 AND B(19)) OR (S1 AND (NOT B(19)));
Goutput(20) <= (S0 AND B(20)) OR (S1 AND (NOT B(20)));
Goutput(21) <= (S0 AND B(21)) OR (S1 AND (NOT B(21)));
Goutput(22) <= (S0 AND B(22)) OR (S1 AND (NOT B(22)));
Goutput(23) <= (S0 AND B(23)) OR (S1 AND (NOT B(23)));
Goutput(24) <= (S0 AND B(24)) OR (S1 AND (NOT B(24)));
Goutput(25) <= (S0 AND B(25)) OR (S1 AND (NOT B(25)));
Goutput(26) <= (S0 AND B(26)) OR (S1 AND (NOT B(26)));
Goutput(27) <= (S0 AND B(27)) OR (S1 AND (NOT B(27)));
Goutput(28) <= (S0 AND B(28)) OR (S1 AND (NOT B(28)));
Goutput(29) <= (S0 AND B(29)) OR (S1 AND (NOT B(29)));
Goutput(30) <= (S0 AND B(30)) OR (S1 AND (NOT B(30)));
Goutput(31) <= (S0 AND B(31)) OR (S1 AND (NOT B(31)));

      
  


end Behavioral;
