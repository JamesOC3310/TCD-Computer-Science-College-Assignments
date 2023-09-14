----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2021 10:41:53 PM
-- Design Name: 
-- Module Name: multiplexer_bigger - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplexer_bigger20332090 is
  Port ( --ln0, ln1, ln2, ln3: in STD_LOGIC_VECTOR (3 downto 0);
         --S0, S1: in STD_LOGIC;
         --Z: out STD_LOGIC_VECTOR (3 downto 0));
         in0 : in  STD_LOGIC_VECTOR (31 downto 0);
         in1 : in  STD_LOGIC_VECTOR (31 downto 0);
         in2: in STD_LOGIC_VECTOR (31 downto 0);
         in3: in STD_LOGIC_VECTOR (31 downto 0);
         in4: in STD_LOGIC_VECTOR (31 downto 0);
         in5: in STD_LOGIC_VECTOR (31 downto 0);
         in6: in STD_LOGIC_VECTOR (31 downto 0);
         in7: in STD_LOGIC_VECTOR (31 downto 0);
         in8: in STD_LOGIC_VECTOR (31 downto 0);
         in9: in STD_LOGIC_VECTOR (31 downto 0);
         in10: in STD_LOGIC_VECTOR (31 downto 0);
         in11: in STD_LOGIC_VECTOR (31 downto 0);
         in12: in STD_LOGIC_VECTOR (31 downto 0);
         in13: in STD_LOGIC_VECTOR (31 downto 0);
         in14: in STD_LOGIC_VECTOR (31 downto 0);
         in15: in STD_LOGIC_VECTOR (31 downto 0);
         in16: in STD_LOGIC_VECTOR (31 downto 0);
         in17: in STD_LOGIC_VECTOR (31 downto 0);
         in18: in STD_LOGIC_VECTOR (31 downto 0);
         in19: in STD_LOGIC_VECTOR (31 downto 0);
         in20: in STD_LOGIC_VECTOR (31 downto 0);
         in21: in STD_LOGIC_VECTOR (31 downto 0);
         in22: in STD_LOGIC_VECTOR (31 downto 0);
         in23: in STD_LOGIC_VECTOR (31 downto 0);
         in24: in STD_LOGIC_VECTOR (31 downto 0);
         in25: in STD_LOGIC_VECTOR (31 downto 0);
         in26: in STD_LOGIC_VECTOR (31 downto 0);
         in27: in STD_LOGIC_VECTOR (31 downto 0);
         in28: in STD_LOGIC_VECTOR (31 downto 0);
         in29: in STD_LOGIC_VECTOR (31 downto 0);
         in30: in STD_LOGIC_VECTOR (31 downto 0);
         in31: in STD_LOGIC_VECTOR (31 downto 0);
         s0: in STD_LOGIC_VECTOR (4 downto 0);
         z : out  STD_LOGIC_VECTOR (31 downto 0));
end multiplexer_bigger20332090;

architecture Behavioral of multiplexer_bigger20332090 is

begin
Z<=  in0 when S0 = "00000" else
     in1 when S0 = "00001" else
     in2 when S0 = "00010" else
     in3 when S0 = "00011" else
     in4 when S0= "00100" else
     in5 when S0= "00101" else
     in6 when S0= "00110" else
     in7 when S0= "00111" else
     in8 when S0 = "01000" else
     in9 when S0= "01001" else
     in10 when S0= "01010" else
     in11 when S0= "01011" else
     in12 when S0= "01100" else
     in13 when S0= "01101" else
     in14 when S0= "01110" else
     in15 when S0= "01111" else
     in16 when S0= "10000" else
     in17 when S0= "10001" else
     in18 when S0= "10010" else
     in19 when S0= "10010" else
     in20 when S0= "10100" else
     in21 when S0= "10101" else
     in22 when S0= "10110" else
     in23 when S0= "10111" else
     in24 when S0= "11000" else
     in25 when S0= "11001" else
     in26 when S0= "11010" else
     in27 when S0= "11011" else
     in28 when S0= "11100" else
     in29 when S0= "11101" else
     in30 when S0= "11110" else
     in31 when S0= "11111" else
        "00000000000000000000000000000000";
             
    


end Behavioral;
