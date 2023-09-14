----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2021 02:04:06 PM
-- Design Name: 
-- Module Name: LogicCircuit_32b_20332090_TB - Behavioral
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

entity LogicCircuit_32b_20332090_TB is
end;

architecture bench of LogicCircuit_32b_20332090_TB is

  component LogicCircuit_32b_20332090
    Port (Ai : in std_logic_vector (31 downto 0);
          Bi : in std_logic_vector (31 downto 0);
          S0 : in std_logic;
          S1 : in std_logic;
          Gi : out std_logic_vector (31 downto 0));
  end component;

  signal Ai: std_logic_vector (31 downto 0);
  signal Bi: std_logic_vector (31 downto 0);
  signal S0: std_logic;
  signal S1: std_logic;
  signal Gi: std_logic_vector (31 downto 0);

begin

  uut: LogicCircuit_32b_20332090 port map ( Ai => Ai,
                                            Bi => Bi,
                                            S0 => S0,
                                            S1 => S1,
                                            Gi => Gi );

  stimulus: process
  begin
  
    -- Put initialisation code here
   Ai <= x"20332090";
   Bi <= "00000000000000000000000000001100";
   
   S0 <= '0';
   S1 <= '0';
   
   wait for 100 ns;
   
   Ai <=  x"20332090";
    Bi <= "00000000000000000000000000001100";
     
   S0 <= '0';
   S1 <= '1';
     
     wait for 100 ns;
     
      Ai <=  x"20332090";
      Bi <= "00000000000000000000000000001100";
         
       S0 <= '1';
       S1 <= '0';
         
     wait for 100 ns;
     
      Ai <=  x"20332090";
     Bi <= "00000000000000000000000000001100";
         
    S0 <= '1';
    S1 <= '1';
         
    -- Put test bench stimulus code here

    wait;
  end process;


end;