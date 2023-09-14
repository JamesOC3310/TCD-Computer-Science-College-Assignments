----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2022 11:26:36 PM
-- Design Name: 
-- Module Name: PC_20332090_TB - Behavioral
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

entity PC_20332090_tb is
end;

architecture bench of PC_20332090_tb is

  component PC_20332090
    Port ( Extend : in std_logic_vector (31 downto 0);
           Reset : in std_logic;
           Clk : in std_logic;
           PL : in std_logic;
           PI : in std_logic;
           PC_Out : out std_logic_vector (31 downto 0) );
  end component;

  signal Extend: std_logic_vector (31 downto 0) := (others => '0');
  signal Reset: std_logic := '0';
  signal Clk: std_logic := '0';
  signal PL: std_logic := '0';
  signal PI: std_logic := '0';
  
  
  signal PC_Out: std_logic_vector (31 downto 0) ;
  
  constant Clk_period : time := 10 ns;
  signal stop_clock : boolean;
  
                
begin

  uut: PC_20332090 port map ( Extend => Extend,
                              Reset  => Reset,
                              Clk    => Clk,
                              PL     => PL,
                              PI     => PI,
                              PC_Out => PC_Out );
                              
                              
  clocking: process
    begin
       while not stop_clock loop
           Clk <= '0', '1' after Clk_period / 2;
               wait for Clk_period;
           end loop;
         wait;
    end process;                              

  stimulus: process
  begin
  
  
  --testing reset
  Reset <= '1';
  Extend <= x"00000008";
  PI <= '0';
  PL <= '0';
  wait for 20 ns;
  
  
  --testing with PI = '0' and PL = '0'
  Reset <= '0';
  Extend <= x"00000008";
  PI <= '0';
  PL <= '0';
  wait for 20 ns;
  
  --testing with PI = '1' and PL = '0'
  Extend <= x"00000008";
  PI <= '1';
  PL <= '0';
  wait for 20 ns;
  
  --testing with PI = '0', PL = '1'
  Extend <= x"00000008";
  PI <= '0';
  PL <= '1';
  
    wait;
  end process;


end;
