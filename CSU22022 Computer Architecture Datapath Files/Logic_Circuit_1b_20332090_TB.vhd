----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2021 05:59:12 PM
-- Design Name: 
-- Module Name: Logic_Circuit_1b_20332090_TB - Behavioral
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

entity Logic_Circuit_1b_20332090_tb is
end;

architecture bench of Logic_Circuit_1b_20332090_tb is

  component Logic_Circuit_1b_20332090
    Port (Ai : in std_logic;
          Bi : in std_logic;
          S0 : in std_logic;
          S1 : in std_logic;
          Gi : out std_logic );
  end component;

  signal Ai: std_logic;
  signal Bi: std_logic;
  signal S0: std_logic;
  signal S1: std_logic;
  signal Gi: std_logic ;

begin

  uut: Logic_Circuit_1b_20332090 port map ( Ai => Ai,
                                            Bi => Bi,
                                            S0 => S0,
                                            S1 => S1,
                                            Gi => Gi );

  stimulus: process
  begin
  
    -- Put initialisation code here
Ai <= '1';
Bi <= '1';

S0 <= '0';
S1 <= '0';



wait for 100 ns;

Ai <= '1';
Bi <= '1';

S0 <= '0';
S1 <= '1';



wait for 100 ns;

Ai <= '1';
Bi <= '1';

S0 <= '1';
S1 <= '0';



wait for 100 ns;

Ai <= '1';
Bi <= '1';


S0 <= '1';
S1 <= '1';








    -- Put test bench stimulus code here

    wait;
  end process;


end;