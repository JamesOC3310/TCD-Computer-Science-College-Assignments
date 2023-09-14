----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2021 01:33:24 PM
-- Design Name: 
-- Module Name: Reg_file20332090 - Behavioral
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

entity Reg_file20332090 is
  Port ( 
         D : in std_logic_vector (31 downto 0);
         load, Clk : in std_logic;
         Q : out std_logic_vector (31 downto 0) );
end Reg_file20332090;

architecture Behavioral of Reg_file20332090 is

begin
process(Clk)
begin
    if (rising_edge(Clk)) then
        if load = '1' then
            Q<=D after 5 ns;
        end if;
    end if;    
end process;

end Behavioral;
