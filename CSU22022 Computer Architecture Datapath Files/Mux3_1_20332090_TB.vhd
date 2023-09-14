----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2021 05:06:06 PM
-- Design Name: 
-- Module Name: Mux3_1_20332090_TB - Behavioral
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

entity Mux3_1_20332090_TB is
end;

architecture bench of Mux3_1_20332090_TB is

  component Mux3_1_20332090
    Port (A : in std_logic;
          B : in std_logic;
          C : in std_logic;
          S0 : in std_logic;
          S1 : in std_logic;
          Muxout : out std_logic  );
  end component;

  signal A: std_logic;
  signal B: std_logic;
  signal C: std_logic;
  signal S0: std_logic;
  signal S1: std_logic;
  signal Muxout: std_logic ;

begin

  uut: Mux3_1_20332090 port map ( A      => A,
                                  B      => B,
                                  C      => C,
                                  S0     => S0,
                                  S1     => S1,
                                  Muxout => Muxout );

  stimulus: process
  begin
  
  A <= '1';
  B <= '0';
  C <= '1';
  
  S0 <= '0';
  S1 <= '0';
  
  wait for 2 ns;
  
  S0 <= '0';
  S1 <= '1';
  
  wait for 2 ns;
  
  S0 <= '1';
  S1 <= '0';
  
  wait for 2 ns;
  
  S0 <= '0';
  S1 <= '1';
  
  wait for 2 ns;
  
  S0 <= '0';
  S0 <= '0';
  
  wait for 2 ns;
  
  S0 <= '0';
  S1 <= '0';
  
  
  
  


    -- Put test bench stimulus code here

    wait;
  end process;


end;