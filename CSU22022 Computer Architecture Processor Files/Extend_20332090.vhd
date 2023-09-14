----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2022 02:27:25 PM
-- Design Name: 
-- Module Name: Extend_20332090 - Behavioral
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

entity Extend_20332090 is
  Port (DR : in std_logic_vector (4 downto 0);
        SB : in std_logic_vector (4 downto 0);
        Extend_out : out std_logic_vector (31 downto 0) );
end Extend_20332090;

architecture Behavioral of Extend_20332090 is

begin

Extend_out (31 downto 10) <= "0000000000000000000000" when (DR(4) = '0') else "1111111111111111111111";
Extend_out (9 downto 5) <= DR;
Extend_out (4 downto 0) <= SB;




end Behavioral;
