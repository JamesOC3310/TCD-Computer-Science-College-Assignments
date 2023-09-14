----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/26/2021 08:14:52 PM
-- Design Name: 
-- Module Name: MemoryModule_20332090_TB - Behavioral
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
--use IEEE.Numeric_Std.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity MemoryModule_20332090_tb is
end;

architecture bench of MemoryModule_20332090_tb is

  component MemoryModule_20332090
    Port (address: in std_logic_vector(31 downto 0);
          write_data: in std_logic_vector(31 downto 0);
          write_enable: in std_logic;
          Clock: in std_logic;
          read_data: out std_logic_vector(31 downto 0) );
  end component;

  --Inputs
  signal address: std_logic_vector(31 downto 0):= (others => '0');
  signal write_data: std_logic_vector(31 downto 0):= (others => '0');
  signal write_enable: std_logic := '0';
  signal Clock: std_logic := '0';
  
  --Outputs
  signal read_data: std_logic_vector(31 downto 0) ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: MemoryModule_20332090 port map ( address      => address,
                                        write_data   => write_data,
                                        write_enable => write_enable,
                                        Clock        => Clock,
                                        read_data    => read_data );
                                        
  clocking: process
     begin
       while not stop_the_clock loop
         Clock <= '0', '1' after clock_period / 2;
         wait for clock_period;
       end loop;
       wait;
     end process;                                      

  stimulus: process
  begin
            --wait for 100 ns;
            address <= x"00000000";
            --wait for 100 ns;
            write_data<=x"00000090";
            for counter in 1 to 512 loop
                
                write_enable <= '0';
                --Clock<='1';
                wait for 100 ns;
                address <= std_logic_vector(address + x"00000001");
                write_data <= std_logic_vector(write_data + 1);
            end loop;
            
            
            wait for 100 ns;
            address<= x"00000000";
            write_data<=x"00000090";
            for counter1 in 1 to 32 loop
                
                write_enable<= '1';
                --Clock<='1';
                wait for 100 ns;
                address<= std_logic_vector(address + 1);
                write_data <= std_logic_vector(write_data + 1);
            end loop;
            
    

    --stop_the_clock <= true;
    wait;
  end process;

  

end;
