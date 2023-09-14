----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2021 07:21:40 PM
-- Design Name: 
-- Module Name: FullAdder_20332090 - Behavioral
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

entity FullAdder_20332090 is
  Port (A : in std_logic;
        B : in std_logic;
        Carry_in : in std_logic;
        Carry_out : out std_logic;
        Sum : out std_logic );
end FullAdder_20332090;

architecture Behavioral of FullAdder_20332090 is

begin

    Sum <= A XOR B XOR Carry_in;
    Carry_out <= (A AND B) OR (Carry_in AND A) OR (Carry_in AND B);

end Behavioral;
