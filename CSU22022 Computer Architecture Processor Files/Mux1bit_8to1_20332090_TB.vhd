----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2022 01:40:35 AM
-- Design Name: 
-- Module Name: Mux1bit_8to1_20332090_TB - Behavioral
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

entity Mux1bit_8to1_20332090_tb is
end;

architecture bench of Mux1bit_8to1_20332090_tb is

  component Mux1bit_8to1_20332090
    Port (Mux8_1_inA : in std_logic;
          Mux8_1_inB : in std_logic;
          Mux8_1_inC : in std_logic;
          Mux8_1_inD : in std_logic;
          Mux8_1_inE : in std_logic;
          Mux8_1_inF : in std_logic;
          Mux8_1_inG : in std_logic;
          Mux8_1_inH : in std_logic;
          S0 : in std_logic;
          S1 : in std_logic;
          S2 : in std_logic;
          Mux8_1_out : out std_logic  );
  end component;

  signal Mux8_1_inA: std_logic := '0';
  signal Mux8_1_inB: std_logic := '0';
  signal Mux8_1_inC: std_logic:= '0';
  signal Mux8_1_inD: std_logic:= '0';
  signal Mux8_1_inE: std_logic:= '0';
  signal Mux8_1_inF: std_logic:= '0';
  signal Mux8_1_inG: std_logic:= '0';
  signal Mux8_1_inH: std_logic:= '0';
  signal S0: std_logic := '0';
  signal S1: std_logic := '0';
  signal S2: std_logic := '0';
  signal Mux8_1_out: std_logic ;

begin

  uut: Mux1bit_8to1_20332090 port map ( Mux8_1_inA => Mux8_1_inA,
                                        Mux8_1_inB => Mux8_1_inB,
                                        Mux8_1_inC => Mux8_1_inC,
                                        Mux8_1_inD => Mux8_1_inD,
                                        Mux8_1_inE => Mux8_1_inE,
                                        Mux8_1_inF => Mux8_1_inF,
                                        Mux8_1_inG => Mux8_1_inG,
                                        Mux8_1_inH => Mux8_1_inH,
                                        S0         => S0,
                                        S1         => S1,
                                        S2         => S2,
                                        Mux8_1_out => Mux8_1_out );

  stimulus: process
  begin
  
  Mux8_1_inA <= '0';
  Mux8_1_inB <= '1';
  Mux8_1_inC <= '0';
  Mux8_1_inD <= '1';
  Mux8_1_inE <= '0';
  Mux8_1_inF <= '1';
  Mux8_1_inG <= '0';
  Mux8_1_inH <= '1';
  
  S0 <= '0';
  S1 <= '0';
  S2 <= '0';
  wait for 50 ns;
  
    S0 <= '0';
  S1 <= '0';
  S2 <= '1';
  wait for 50 ns;
  
    S0 <= '0';
  S1 <= '1';
  S2 <= '0';
  wait for 50 ns;
  
    S0 <= '0';
  S1 <= '1';
  S2 <= '1';
  wait for 50 ns;
  
    S0 <= '1';
  S1 <= '0';
  S2 <= '0';
  wait for 50 ns;
  
    S0 <= '1';
  S1 <= '0';
  S2 <= '1';
  wait for 50 ns;
  
    S0 <= '1';
  S1 <= '1';
  S2 <= '0';
  wait for 50 ns;
  
    S0 <= '1';
  S1 <= '1';
  S2 <= '1';
 
  
   
  
  
  
    

    wait;
  end process;


end;
