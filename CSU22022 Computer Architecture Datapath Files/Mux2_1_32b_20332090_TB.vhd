----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2021 03:16:13 PM
-- Design Name: 
-- Module Name: Mux2_1_32b_20332090_TB - Behavioral
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

entity Mux2_1_32b_20332090_TB is
end;

architecture bench of Mux2_1_32b_20332090_TB is

  component Mux2_1_32b_20332090
    Port ( in0 : in std_logic_vector (31 downto 0);
           in1 : in std_logic_vector (31 downto 0);
           s : in std_logic;
           z : out std_logic_vector (31 downto 0) );
  end component;

  signal in0: std_logic_vector (31 downto 0);
  signal in1: std_logic_vector (31 downto 0);
  signal s: std_logic;
  signal z: std_logic_vector (31 downto 0) ;

begin

  uut: Mux2_1_32b_20332090 port map ( in0 => in0,
                                      in1 => in1,
                                      s   => s,
                                      z   => z );

  stimulus: process
  begin
  
    in0 <= "10101010101010101010101010101010";
    in1 <= "11001100110011001100110011001100";
    
    s <= '0';
    wait for 500 ns;
    
    s <= '1';
    wait for 500 ns;
    
    s <= '0';
    wait for 500 ns;
    
    s <= '1';
   
    wait;
  end process;


end;
