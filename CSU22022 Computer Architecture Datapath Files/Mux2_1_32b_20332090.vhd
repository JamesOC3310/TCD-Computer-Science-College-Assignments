----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2021 03:11:36 PM
-- Design Name: 
-- Module Name: Mux2_1_32b_20332090 - Behavioral
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

entity Mux2_1_32b_20332090 is
  Port ( in0 : in std_logic_vector (31 downto 0);
         in1 : in std_logic_vector (31 downto 0);
         s : in std_logic;
         z : out std_logic_vector (31 downto 0) );
end Mux2_1_32b_20332090;

architecture Behavioral of Mux2_1_32b_20332090 is

begin

Z <= in0 after 5 ns when S = '0' else
     in1 after 5 ns when S = '1' else
     x"69696969" after 5 ns;

end Behavioral;
