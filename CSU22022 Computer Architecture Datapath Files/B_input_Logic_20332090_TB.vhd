----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2021 09:26:12 PM
-- Design Name: 
-- Module Name: B_input_Logic_20332090_TB - Behavioral
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

entity B_input_Logic_20332090_TB is
--  Port ( );
end B_input_Logic_20332090_TB;

architecture Behavioral of B_input_Logic_20332090_TB is
            component B_input_Logic_20332090
    Port ( B : in std_logic_vector (31 downto 0);
          S0 : in std_logic;
          S1 : in std_logic;
          Goutput : out std_logic_vector (31 downto 0));
  end component;
  
signal B: std_logic_vector (31 downto 0) := (others => '0');
signal S0: std_logic := '0';
signal S1: std_logic := '0';
signal Goutput: std_logic_vector (31 downto 0);
    
    begin
    
      uut: B_input_Logic_20332090 port map ( B  => B,
                                             S0 => S0,
                                             S1 => S1,
                                             Goutput  => Goutput );

stim_proc : process
           
begin

--wait for 200 ns;
--B <= "00000000000000000000000000000001";
B <= x"20332090";
S0 <= '0';
S0 <= '0';


wait for 200 ns;
S0 <= '0';
S1 <= '1';


wait for 200 ns;
S0 <= '1';
S1 <= '0';


wait for 200 ns;
S0 <= '1';
S1 <= '1';




wait;
end process;


end Behavioral;
