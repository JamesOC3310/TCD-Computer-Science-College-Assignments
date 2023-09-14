----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 12:25:17 PM
-- Design Name: 
-- Module Name: ArithmeticBitsliceFullAdder_20332090 - Behavioral
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

entity ArithmeticBitsliceFullAdder_20332090 is
      Port (A : in std_logic;
          B : in std_logic;
          Carry_in : in std_logic;
          Sum : out std_logic;
          Carry_out : out std_logic);
end ArithmeticBitsliceFullAdder_20332090;

architecture Behavioral of ArithmeticBitsliceFullAdder_20332090 is

--signal z1, z2, z3, z4: std_logic;

begin

--z1 <= (A XOR B) after 5 ns;
--z2 <= (Carry_in AND z1) after 5 ns;
--z3 <= (A AND B) after 5 ns;
--z4 <= (A not B) after 5 ns;
--Sum <= (z1 XOR Carry_in) after 5ns;
--Carry_out <= (z2 OR z3) after 5ns;

Sum <= A XOR B XOR Carry_in;

Carry_out <= (A AND B) OR (Carry_in AND A) OR (Carry_in AND B);


end Behavioral;
