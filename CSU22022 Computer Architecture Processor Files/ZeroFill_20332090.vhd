----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2022 02:51:45 PM
-- Design Name: 
-- Module Name: ZeroFill_20332090 - Behavioral
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

entity ZeroFill_20332090 is
  Port ( SB : in std_logic_vector (4 downto 0);
        ZeroFill_Out : out std_logic_vector (31 downto 0) );
end ZeroFill_20332090;

architecture Behavioral of ZeroFill_20332090 is

begin

ZeroFill_Out (4 downto 0) <= SB;
ZeroFill_Out (31 downto 5) <= "000000000000000000000000000";



end Behavioral;
