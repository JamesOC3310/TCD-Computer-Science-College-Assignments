----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2022 03:02:53 PM
-- Design Name: 
-- Module Name: ZeroFill_20332090_TB - Behavioral
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

entity ZeroFill_20332090_tb is
end;

architecture bench of ZeroFill_20332090_tb is

  component ZeroFill_20332090
    Port ( SB : in std_logic_vector (4 downto 0);
          ZeroFill_Out : out std_logic_vector (31 downto 0) );
  end component;

  signal SB: std_logic_vector (4 downto 0) := (others => '0');
  
  signal ZeroFill_Out: std_logic_vector (31 downto 0) ;

begin

  uut: ZeroFill_20332090 port map ( SB           => SB,
                                    ZeroFill_Out => ZeroFill_Out );

  stimulus: process
  begin
  
  --testing with SB as 8
  SB <= "01000";
  wait for 100 ns;
  
  --testing with SB as 0
  SB <= "00000";
  wait for 100 ns;
  
  --testing with SB as 14
  SB <= "01110";
  
    

    wait;
  end process;


end;