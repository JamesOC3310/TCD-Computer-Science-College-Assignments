----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2022 02:38:04 PM
-- Design Name: 
-- Module Name: Extend_20332090_TB - Behavioral
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

entity Extend_20332090_tb is
end;

architecture bench of Extend_20332090_tb is

  component Extend_20332090
    Port (DR : in std_logic_vector (4 downto 0);
          SB : in std_logic_vector (4 downto 0);
          Extend_out : out std_logic_vector (31 downto 0) );
  end component;

  signal DR: std_logic_vector (4 downto 0) := (others => '0');
  signal SB: std_logic_vector (4 downto 0) := (others => '0');
  
  signal Extend_out: std_logic_vector (31 downto 0) ;

begin

  uut: Extend_20332090 port map ( DR         => DR,
                                  SB         => SB,
                                  Extend_out => Extend_out );

  stimulus: process
  begin
  
  --testing most significant bit = '1'
  DR <= "10110";
  SB <= "00100";
  
  wait for 100 ns;
  
  
    --testing most significant bit = '0'
  DR <= "01001";
  SB <= "00110";
  
  
  
  
  
    

    wait;
  end process;


end;
