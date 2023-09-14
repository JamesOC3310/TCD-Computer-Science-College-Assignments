----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 12:05:36 PM
-- Design Name: 
-- Module Name: RippleCarryAdder_20332090_TB - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity RippleCarryAdder_20332090_TB is
end RippleCarryAdder_20332090_TB;

architecture Behavioral of RippleCarryAdder_20332090_TB is

  component RippleCarryAdder_20332090
  Port (    A : in std_logic_vector (31 downto 0);
            B : in std_logic_vector (31 downto 0);
            Carry_in : in std_logic;
            Sum : out std_logic_vector (31 downto 0);
            Carry_out : out std_logic;
            V : out std_logic);
  end component;

  signal A: std_logic_vector (31 downto 0) := (others => '0');
  signal B: std_logic_vector (31 downto 0) := (others => '0');
  signal Carry_in: std_logic := '0';
  
  signal Sum: std_logic_vector (31 downto 0);
  signal Carry_out: std_logic;
  signal V : std_logic;

begin

  uut: RippleCarryAdder_20332090 port map ( A         => A,
                                            B         => B,
                                            Carry_in  => Carry_in,
                                            Sum       => Sum,
                                            Carry_out => Carry_out,
                                            V => V );

  stimulus: process
  begin
 -- Carry_in <= '0';
  --wait for 100 ns;
  A <= x"20332090";
  B <= "00000000000000000000000000001100";
  
   
wait for 100 ns;
  A <= x"20332090";
  B <= x"803A0260";
   
  wait for 100 ns;
  A <= x"FEC9C1C6";
  B <= "00000000000000000000000000001100";
   
  wait for 100 ns;
  A <= x"FEC9C1C6";
  B <= x"803A0260";
   
  --wait for 100 ns;
  --A <= "00000000000000000000000000001111";
  --B <= "00000000000000000000000000001111";
   
  
   
  

    -- Put initialisation code here


    -- Put test bench stimulus code here

    wait;
  end process;


end Behavioral;
