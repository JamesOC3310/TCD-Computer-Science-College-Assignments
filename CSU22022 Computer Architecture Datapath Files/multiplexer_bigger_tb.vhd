----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/16/2021 11:58:32 PM
-- Design Name: 
-- Module Name: multiplexer_bigger_tb - Behavioral
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

entity multiplexer_bigger_tb is
--  Port ( );
end multiplexer_bigger_tb;

architecture Behavioral of multiplexer_bigger_tb is
        component multiplexer_bigger20332090
            PORT( in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11,
                  in12, in13, in14, in15, in16, in17, in18, in19, in20, in21,
                  in22, in23, in24, in25, in26, in27, in28, in29, in30, in31 : in STD_LOGIC_VECTOR (31 downto 0);
                   s0: in STD_LOGIC_VECTOR (4 downto 0);
                  z : out STD_LOGIC_VECTOR (31 downto 0));
                  
        end component;
        
        --inputs
        signal in0 : std_logic_vector(31 downto 0) := (others => '0');
        signal in1 : std_logic_vector(31 downto 0) := (others => '0');
        signal in2 : std_logic_vector(31 downto 0) := (others => '0');
        signal in3 : std_logic_vector(31 downto 0) := (others => '0');
        signal in4 : std_logic_vector(31 downto 0) := (others => '0');
        signal in5 : std_logic_vector(31 downto 0) := (others => '0');
        signal in6 : std_logic_vector(31 downto 0) := (others => '0');
        signal in7 : std_logic_vector(31 downto 0) := (others => '0');
        signal in8 : std_logic_vector(31 downto 0) := (others => '0');
        signal in9 : std_logic_vector(31 downto 0) := (others => '0');
        signal in10 : std_logic_vector(31 downto 0) := (others => '0');
        signal in11 : std_logic_vector(31 downto 0) := (others => '0');
        signal in12 : std_logic_vector(31 downto 0) := (others => '0');
        signal in13 : std_logic_vector(31 downto 0) := (others => '0');
        signal in14 : std_logic_vector(31 downto 0) := (others => '0');
        signal in15 : std_logic_vector(31 downto 0) := (others => '0');
        signal in16 : std_logic_vector(31 downto 0) := (others => '0');
        signal in17 : std_logic_vector(31 downto 0) := (others => '0');
        signal in18 : std_logic_vector(31 downto 0) := (others => '0');
        signal in19 : std_logic_vector(31 downto 0) := (others => '0');
        signal in20 : std_logic_vector(31 downto 0) := (others => '0');
        signal in21 : std_logic_vector(31 downto 0) := (others => '0');
        signal in22 : std_logic_vector(31 downto 0) := (others => '0');
        signal in23 : std_logic_vector(31 downto 0) := (others => '0');
        signal in24 : std_logic_vector(31 downto 0) := (others => '0');
        signal in25 : std_logic_vector(31 downto 0) := (others => '0');
        signal in26 : std_logic_vector(31 downto 0) := (others => '0');
        signal in27 : std_logic_vector(31 downto 0) := (others => '0');
        signal in28 : std_logic_vector(31 downto 0) := (others => '0');
        signal in29 : std_logic_vector(31 downto 0) := (others => '0');
        signal in30 : std_logic_vector(31 downto 0) := (others => '0');
        signal in31 : std_logic_vector(31 downto 0) := (others => '0');
        signal s0 :  std_logic_vector(4 downto 0);
        
        
        --outputs
        signal z : std_logic_vector(31 downto 0) := (others => '0');
        

begin

        uut: multiplexer_bigger20332090 PORT MAP(
                    in0 => in0,
                    in1 => in1,
                    in2 => in2,
                    in3 => in3,
                    in4 => in4,
                    in5 => in5,
                    in6 => in6,
                    in7 => in7,
                    in8 => in8,
                    in9 => in9,
                    in10 => in10,
                    in11 => in11,
                    in12 => in12,
                    in13 => in13,
                    in14 => in14,
                    in15 => in15,
                    in16 => in16,
                    in17 => in17,
                    in18 => in18,
                    in19 => in19,
                    in20 => in20,
                    in21 => in21,
                    in22 => in22,
                    in23 => in23,
                    in24 => in24,
                    in25 => in25,
                    in26 => in26,
                    in27 => in27,
                    in28 => in28,
                    in29 => in29,
                    in30 => in30,
                    in31 => in31,
                    s0 => s0,
                    z => z );
                    
            stim_process: process
            begin
                  in0 <= "10101010101010101010101010101010";
                  in1 <= "11001100110011001100110011001100";
                  in2 <= "01110101001100101111010111111111";
                  in3 <= "11111010101010011001100001010001";
                  in4 <= "10011110101011011110100110110011";
                  in5 <= "10101110011100100011110010000001";
                  in6 <= "01110111111000110001000011010100";
                  in7 <= "00001011011000010011110101110000";
                  in8 <= "10100001111000100100100100011000";
                  in9 <= "01111101000111010011110111000101";
                  in10 <= "00110111110111011110111010000000";
                  in11 <= "01100000111110010111000000100010";
                  in12 <= "00101000110000001111111100101110";
                  in13 <= "00101111100100010101010110001110";
                  in14 <= "11101010001001001010110100110000";
                  in15 <= "10100001011000000110110011100111";
                  in16 <= "11000000111110101111101100010000";
                  in17 <= "01010111000110011110111000001110";
                  in18 <= "11011100000111110111111100010010";
                  in19 <= "11110001111111000101010000110011";
                  in20 <= "11010000111100010000111100101110";
                  in21 <= "00101001101000010001011011100000";
                  in22 <= "10110000010111011111100110111001";
                  in23 <= "00100000110100001010011001001111";
                  in24 <= "10000000110100011110001010011010";
                  in25 <= "11100111001001001000111111010101";
                  in26 <= "00111110001111001010110010111000";
                  in27 <= "01000101100000010100000101110110";
                  in28 <= "11011001000110111001101011001000";
                  in29 <= "10101010101110010010101101011100";
                  in30 <= "10000010011111100100010001101011";
                  in31 <= "11110010010100110011101000001111";
                  
                  
                  s0 <= "00000";
                  wait for 10 ns;
                  
                  s0 <= "00001";
                  wait for 10 ns;
                  
                  s0 <= "00010";
                  wait for 10 ns;
                  
                  s0 <= "00011";
                  wait for 10 ns;
                  
                  s0 <= "00100";
                  wait for 10 ns;      
                  
                  s0 <= "00101";
                  wait for 10 ns;
                  
                  s0 <= "00110";
                  wait for 10 ns;
                  
                  s0 <= "00111";
                  wait for 10 ns;
                  
                  s0 <= "01000";
                  wait for 10 ns;
                  
                  s0 <= "01001";
                  wait for 10 ns;
                  
                  s0 <= "01010";
                  wait for 10 ns;
                  
                  s0 <= "01011";
                  wait for 10 ns;
                  
                  s0 <= "01100";
                  wait for 10 ns;
                  
                  s0 <= "01101";
                  wait for 10 ns;
                  
                  s0 <= "01110";
                  wait for 10 ns;
                  
                  s0 <= "01111";
                  wait for 10 ns;
                  
                  s0 <= "10000";
                  wait for 10 ns;
                  
                  s0 <= "10001";
                  wait for 10 ns;
                  
                  s0 <= "10010";
                  wait for 10 ns;
                  
                  s0 <= "10011";
                  wait for 10 ns;
                  
                  s0 <= "10100";
                  wait for 10 ns;
                  
                  s0 <= "10101";
                  wait for 10 ns;
                  
                  s0 <= "10110";
                  wait for 10 ns;
                  
                  s0 <= "10111";
                  wait for 10 ns;
                  
                  s0 <= "11000";
                  wait for 10 ns;
                  
                  s0 <= "11001";
                  wait for 10 ns;
                  
                  s0 <= "11010";
                  wait for 10 ns;
                  
                  s0 <= "11011";
                  wait for 10 ns;
                  
                  s0 <= "11100";
                  wait for 10 ns;
                  
                  s0 <= "11101";
                  wait for 10 ns;
                  
                  s0 <= "11110";
                  wait for 10 ns;
                  
                  s0 <= "11111";
                  wait for 10 ns;
                  
         end process stim_process;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
 
end Behavioral;
