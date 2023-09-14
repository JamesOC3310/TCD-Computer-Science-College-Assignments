----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2022 09:39:08 PM
-- Design Name: 
-- Module Name: CAR17Bit_20332090_TB - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CAR17Bit_20332090_tb is
end;

architecture bench of CAR17Bit_20332090_tb is

  component CAR17Bit_20332090
    Port ( data_in_car : in std_logic_vector (16 downto 0);
            Reset : in std_logic;
            Clk : in std_logic;
            C_MuxC : in std_logic;
            data_out_car : out std_logic_vector (16 downto 0) );
  end component;

  signal data_in_car: std_logic_vector (16 downto 0) := (others => '0');
  signal Reset: std_logic := '0';
  signal Clk : std_logic := '0';
  signal C_MuxC: std_logic := '0';
  
  
  signal data_out_car: std_logic_vector (16 downto 0) ;
  
  constant Clk_period : time := 10 ns;
  signal stop_clock : boolean;

begin

  uut: CAR17Bit_20332090 port map ( data_in_car  => data_in_car,
                                    Reset        => Reset,
                                    Clk          => Clk,
                                    C_MuxC       => C_MuxC,
                                    data_out_car => data_out_car );
                                    
                                    
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
  
  Reset <='1';
   C_MuxC <= '1'; 
      data_in_car <="00000000000000000";
      wait for 20 ns;
      
      Reset<='0';
      wait for 20 ns;
      
      C_MuxC <='0';
     wait for 20 ns;
  
        --load CAR with input
        --data_in_car <= "00010011100011110";
        --C_MuxC <= '1';
        --Reset <= '0';
       -- Reset <= '1';
       -- wait for 20 ns;
        
        --increment CAR 
        --data_in_car <= "00010011100011110";
        --C_MuxC <= '0';
        --Reset <= '0';

    

    wait;
  end process;


end;
