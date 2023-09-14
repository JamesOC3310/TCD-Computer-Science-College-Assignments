----------------------------------------------------------------------------------
-- Company: Trinity College
-- Engineer: Dr. Michael Manzke
-- 
-- Create Date:    11:42:30 02/23/2012 
-- Design Name: 
-- Module Name:    multiplexer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplexer_smaller20332090 is
    Port ( 
           in0 : in  STD_LOGIC_VECTOR (31 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           s: in STD_LOGIC;
           z : out  STD_LOGIC_VECTOR (31 downto 0));
end multiplexer_smaller20332090;

architecture Behavioral of multiplexer_smaller20332090 is

begin

Z <= in0 after 5 ns when S = '0' else
     in1 after 5 ns when S = '1' else
     "00000000000000000000000000000000" after 5 ns;
     
     
	
end Behavioral;

