----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2021 04:41:05 PM
-- Design Name: 
-- Module Name: Mux32_1_32b_20332090 - Behavioral
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

entity Mux32_1_32b_20332090 is
  Port ( MuxA_in0 : in std_logic_vector (31 downto 0);
         MuxA_in1 : in std_logic_vector (31 downto 0);
         MuxA_in2 : in std_logic_vector (31 downto 0);
         MuxA_in3 : in std_logic_vector (31 downto 0);
         MuxA_in4 : in std_logic_vector (31 downto 0);
         MuxA_in5 : in std_logic_vector (31 downto 0);
         MuxA_in6 : in std_logic_vector (31 downto 0);
         MuxA_in7 : in std_logic_vector (31 downto 0);
         MuxA_in8 : in std_logic_vector (31 downto 0);
         MuxA_in9 : in std_logic_vector (31 downto 0);
         MuxA_in10 : in std_logic_vector (31 downto 0);
         MuxA_in11 : in std_logic_vector (31 downto 0);
         MuxA_in12 : in std_logic_vector (31 downto 0);
         MuxA_in13 : in std_logic_vector (31 downto 0);
         MuxA_in14 : in std_logic_vector (31 downto 0);
         MuxA_in15 : in std_logic_vector (31 downto 0);
         MuxA_in16 : in std_logic_vector (31 downto 0);
         MuxA_in17 : in std_logic_vector (31 downto 0);
         MuxA_in18 : in std_logic_vector (31 downto 0);
         MuxA_in19 : in std_logic_vector (31 downto 0);
         MuxA_in20 : in std_logic_vector (31 downto 0);
         MuxA_in21 : in std_logic_vector (31 downto 0);
         MuxA_in22 : in std_logic_vector (31 downto 0);
         MuxA_in23 : in std_logic_vector (31 downto 0);
         MuxA_in24 : in std_logic_vector (31 downto 0);
         MuxA_in25 : in std_logic_vector (31 downto 0);
         MuxA_in26 : in std_logic_vector (31 downto 0);
         MuxA_in27 : in std_logic_vector (31 downto 0);
         MuxA_in28 : in std_logic_vector (31 downto 0);
         MuxA_in29 : in std_logic_vector (31 downto 0);
         MuxA_in30 : in std_logic_vector (31 downto 0);
         MuxA_in31 : in std_logic_vector (31 downto 0);
         MuxASelect : in std_logic_vector (4 downto 0);
         MuxA_Out : out std_logic_vector (31 downto 0) );
end Mux32_1_32b_20332090;

architecture Behavioral of Mux32_1_32b_20332090 is

begin

MuxA_Out<=  MuxA_in0 when MuxASelect = "00000" else
     MuxA_in1 when MuxASelect = "00001" else
     MuxA_in2 when MuxASelect = "00010" else
     MuxA_in3 when MuxASelect = "00011" else
     MuxA_in4 when MuxASelect= "00100" else
     MuxA_in5 when MuxASelect= "00101" else
     MuxA_in6 when  MuxASelect= "00110" else
     MuxA_in7 when  MuxASelect= "00111" else
     MuxA_in8 when  MuxASelect = "01000" else
     MuxA_in9 when  MuxASelect= "01001" else
     MuxA_in10 when  MuxASelect= "01010" else
     MuxA_in11 when  MuxASelect= "01011" else
     MuxA_in12 when  MuxASelect= "01100" else
     MuxA_in13 when  MuxASelect= "01101" else
     MuxA_in14 when  MuxASelect= "01110" else
     MuxA_in15 when  MuxASelect= "01111" else
     MuxA_in16 when  MuxASelect= "10000" else
     MuxA_in17 when  MuxASelect= "10001" else
     MuxA_in18 when  MuxASelect= "10010" else
     MuxA_in19 when  MuxASelect= "10010" else
     MuxA_in20 when  MuxASelect= "10100" else
     MuxA_in21 when  MuxASelect= "10101" else
     MuxA_in22 when  MuxASelect= "10110" else
     MuxA_in23 when  MuxASelect= "10111" else
     MuxA_in24 when  MuxASelect= "11000" else
     MuxA_in25 when  MuxASelect= "11001" else
     MuxA_in26 when  MuxASelect= "11010" else
     MuxA_in27 when  MuxASelect= "11011" else
     MuxA_in28 when  MuxASelect= "11100" else
     MuxA_in29 when  MuxASelect= "11101" else
     MuxA_in30 when  MuxASelect= "11110" else
     MuxA_in31 when  MuxASelect= "11111" else
        "00000000000000000000000000000000";



end Behavioral;
