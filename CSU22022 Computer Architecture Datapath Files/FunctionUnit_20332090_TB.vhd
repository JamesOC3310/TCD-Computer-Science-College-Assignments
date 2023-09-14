----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2021 01:22:06 PM
-- Design Name: 
-- Module Name: FunctionUnit_20332090_TB - Behavioral
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity FunctionUnit_20332090_TB is
end;

architecture bench of FunctionUnit_20332090_TB is

  component FunctionUnit_20332090
    Port (  A : in std_logic_vector (31 downto 0);
             B : in STD_LOGIC_VECTOR(31 downto 0);
             FSelect : in std_logic_vector (4 downto 0);
             V : out STD_LOGIC; 
             C : out STD_LOGIC;
             N : out STD_LOGIC;
             Z_detect : out STD_LOGIC;
             F : out STD_LOGIC_VECTOR(31 downto 0));
  end component;

  signal A: std_logic_vector (31 downto 0) := (others => '0');
  signal B: STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
  signal FSelect: std_logic_vector (4 downto 0) := (others => '0');
  signal V: STD_LOGIC := '0';
  signal C: STD_LOGIC := '0';
  signal N: STD_LOGIC := '0';
  signal Z_detect: STD_LOGIC := '0';
  signal F: STD_LOGIC_VECTOR(31 downto 0);
  
  constant Clk_period : time := 900 ns;

begin

  uut: FunctionUnit_20332090 port map ( A       => A,
                                        B       => B,
                                        FSelect => FSelect,
                                        V       => V,
                                        C       => C,
                                        N       => N,
                                        Z_detect   => Z_detect,
                                        F       => F );

  stimulus: process
  begin
  
  A <= x"20332090";
  B <= x"20332090";
 --A <= "00000000000000000000000000000011";
 -- B <= "00000000000000000000000000000011";
  
  FSelect <= "00000";   --1st
   wait for Clk_period;
   
   FSelect <= "11000";     --2nd
   wait for Clk_period;
   
   FSelect <= "00001";     --3rd
   wait for Clk_period;
   
   FSelect <= "01000";      --4th
   wait for Clk_period;
   
   --FSelect <= "00100";      --5th
   FSelect <= "00010"; 
   wait for Clk_period;
   
   FSelect <= "10000";      --6th
   wait for Clk_period;
   
   --FSelect <= "00101";       --7th
   FSelect <= "00011";
   wait for Clk_period;
   
   FSelect <= "10100";        --8th
   wait for Clk_period;
   
  -- FSelect <= "01110";        --9th
   FSelect <= "00100";        --9th
   wait for Clk_period;
   
   FSelect <= "01110";        --10th
   --FSelect <= "00110";        --10th
   wait for Clk_period;
   
   FSelect <= "00111";        --11th
   wait for Clk_period;
   
   --FSelect <= "01010";        --12th
   FSelect <= "01100";        --12th
   wait for Clk_period;
   
   --FSelect <= "00011";        --13th
   FSelect <= "00110";
   wait for Clk_period;
   
   --FSelect <= "01100";
   --FSelect <= "00101";        --14th
   FSelect <= "00101";
   wait for Clk_period;
   
   FSelect <= "01010";         --15th
    --FSelect <= "00110";
  
  
  
  
  


    -- Put test bench stimulus code here

    wait;
  end process;


end;