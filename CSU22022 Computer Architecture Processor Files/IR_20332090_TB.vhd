----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2022 01:08:21 AM
-- Design Name: 
-- Module Name: IR_20332090_TB - Behavioral
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

entity IR_20332090_tb is
end;

architecture bench of IR_20332090_tb is

  component IR_20332090
    Port ( data_in_ir : in std_logic_vector (31 downto 0);
            IL : in std_logic;
            Clk : in std_logic;
            Opcode : out std_logic_vector (16 downto 0);
            DR : out std_logic_vector (4 downto 0);
            SA : out std_logic_vector (4 downto 0);
            SB : out std_logic_vector (4 downto 0) );
  end component;

  signal data_in_ir: std_logic_vector (31 downto 0) := (others => '0');
  signal IL: std_logic := '0';
  signal Clk: std_logic := '0';
  
  
  signal Opcode: std_logic_vector (16 downto 0);
  signal DR: std_logic_vector (4 downto 0);
  signal SA: std_logic_vector (4 downto 0);
  signal SB: std_logic_vector (4 downto 0) ;
  
    constant Clk_period : time := 10 ns;
  signal stop_clock : boolean;

begin

  uut: IR_20332090 port map ( data_in_ir => data_in_ir,
                              IL         => IL,
                              Clk        => Clk,
                              Opcode     => Opcode,
                              DR         => DR,
                              SA         => SA,
                              SB         => SB );
                              
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
  
  --testing data loaded in
  --Opcode = 00100110011001100, Dr = 10010, SA = 01011, SB = 10111
  data_in_ir <= "00100110011001100100100101110111";
  IL <= '1';
  wait for 50 ns;
  
  --testing data not loaded in
  --Opcode = 00100110011001100, Dr = 10010, SA = 01011, SB = 10111
  data_in_ir <= "00100110011001100100100101110111";
  IL <= '0';  
  
  
  
    

    wait;
  end process;


end;
