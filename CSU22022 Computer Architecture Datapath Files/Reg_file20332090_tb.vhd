----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/18/2021 11:56:20 AM
-- Design Name: 
-- Module Name: Reg_file20332090_tb - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg_file20332090_tb is
--  Port ( );
end Reg_file20332090_tb;

architecture Behavioral of Reg_file20332090_tb is
            component Reg_file20332090
                PORT ( 
                        D : in std_logic_vector (31 downto 0);
                        load, Clk : in std_logic;
                        Q : out std_logic_vector (31 downto 0) );
            end component;
            
            --inputs
            signal D : std_logic_vector(31 downto 0) := (others => '0');
            signal load : STD_LOGIC := '0';
            signal Clk : STD_LOGIC := '0';
            signal stop_clock : boolean;
            constant clock_period : time := 5 ns;
            
            --outputs
            signal Q : std_logic_vector(31 downto 0);

begin
            uut: Reg_file20332090 PORT MAP (
                    D => D,
                    load => load,
                    Clk => Clk,
                    Q => Q );
                    
               
            clocking: process
            begin
            --stop_clock <= false;
                while not stop_clock loop
                    Clk <= '0', '1' after clock_period / 2;
                    wait for clock_period;
                end loop;
              wait;
              
            end process;
            
             stim_process: process
              begin
              
              --wait for 25 ns;
              --wait until Clk'event and Clk = '1';
                    load <= '0';
                    
                    --wait for clock_period;
                    
                    D <= "00000000000000000000000000000000";
                    
                    wait for 20 ns;
                    
                    load <= '1';
                    
                    wait for 20 ns;
                    
                    load <= '0';
                    
                    
                                        
                    D <= x"20332090";
                    
                    wait for 20 ns;
                    
                    load <= '1';
                    
                    wait for 20 ns;
                    
                    load <= '0';     
                    
                            
                    
                    D <= "00000000000000000000000000000000";
                     
                     wait for 20 ns;
                               
                     load <= '1';
                     
                     wait for 20 ns;
                     
                     load <= '0';
                     
                     
                     
                     
                     D <= x"20332090";
                     
                     wait for 20 ns;
                     
                     load <= '1';
                     
                     wait for 20 ns;
                     
                                         
                               
                               
                  --stop_clock <= true;
               end process stim_process;
                        
end Behavioral;
