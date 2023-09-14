----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2021 04:40:12 PM
-- Design Name: 
-- Module Name: Main_Register_File20332090_tb - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main_Register_File20332090_tb is
--  Port ( );
end Main_Register_File20332090_tb;

architecture Behavioral of Main_Register_File20332090_tb is
    component Main_Register_File20332090
       PORT ( des_A0 : in std_logic;
         des_A1 : in std_logic;
         des_A2 : in std_logic;
         des_A3 : in std_logic;
         des_A4 : in std_logic;
         AddressA : in std_logic_vector (4 downto 0);
         AddressB : in std_logic_vector (4 downto 0);
         Clk : in std_logic;
         data_src : in std_logic;
         data : in std_logic_vector (31 downto 0);
         Aoutput : out std_logic_vector (31 downto 0);
         Boutput : out std_logic_vector (31 downto 0));
     end component;
     
     --signals
     
     --inputs
     signal des_A0 : STD_LOGIC;
     signal des_A1 : STD_LOGIC;
     signal des_A2 : STD_LOGIC;
     signal des_A3 : STD_LOGIC;
     signal des_A4 : STD_LOGIC;
     signal AddressA, AddressB : std_logic_vector (4 downto 0);
     signal Aoutput, Boutput : std_logic_vector (31 downto 0);
     signal Clk : STD_LOGIC;
     signal data_src : STD_LOGIC;
     signal data : std_logic_vector(31 downto 0);
     
     constant Clk_period : time := 5 ns;
     signal stop_clock : boolean;
     
begin

        uut: Main_Register_File20332090 PORT MAP (
                        des_A0 => des_A0,
                        des_A1 => des_A1,
                        des_A2 => des_A2,
                        des_A3 => des_A3,
                        des_A4 => des_A4,
                        AddressA => AddressA,
                        AddressB => AddressB,
                        Clk => Clk,
                        data_src => data_src,
                        data => data,
                        Aoutput => Aoutput,
                        Boutput => Boutput);
                        
         clocking: process
         begin
            while not stop_clock loop
                Clk <= '0', '1' after Clk_period / 2;
                    wait for Clk_period;
                end loop;
              wait;
         end process;
                                   
           stim_process: process
           begin
           
           wait for 20 ns;
           
           data_src <= '1';
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '0';              
           des_A2 <= '0';
           des_A3 <= '0';
           des_A4 <= '0';
           
           wait for 20 ns;
           
           data <= x"20332090";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '0';
           des_A2 <= '0';
           des_A3 <= '0';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332089";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '1';
           des_A2 <= '0';
           des_A3 <= '0';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332088";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '1';
           des_A2 <= '0';
           des_A3 <= '0';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332087";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '0';
           des_A2 <= '1';
           des_A3 <= '0';
           des_A4 <= '0';
           
           wait for 20 ns;
           
           data <= x"20332086";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '0';
           des_A2 <= '1';
           des_A3 <= '0';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332085";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '1';
           des_A2 <= '1';
           des_A3 <= '0';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332084";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '1';
           des_A2 <= '1';
           des_A3 <= '0';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332083";
           
           wait for 20 ns;
           
           AddressA <= "10011"; -- 19
           AddressB <= "00101"; -- 5
           
           wait for 20 ns;           
           
           des_A0 <= '0';
           des_A1 <= '0';
           des_A2 <= '0';
           des_A3 <= '1';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332082";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '0';
           des_A2 <= '0';
           des_A3 <= '1';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332081";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '1';
           des_A2 <= '0';
           des_A3 <= '1';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332080";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '1';
           des_A2 <= '0';
           des_A3 <= '1';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332079";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '0';
           des_A2 <= '1';
           des_A3 <= '1';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332078";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '0';
           des_A2 <= '1';
           des_A3 <= '1';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332077";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '1';
           des_A2 <= '1';
           des_A3 <= '1';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332076";
           
           wait for 20 ns;
           
           AddressA <= "00101"; -- 19
           AddressB <= "10011"; -- 5          
           
           des_A0 <= '1';
           des_A1 <= '1';
           des_A2 <= '1';
           des_A3 <= '1';
           des_A4 <= '0';           
           
           wait for 20 ns;
           
           data <= x"20332075";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '0';
           des_A2 <= '0';
           des_A3 <= '0';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332074";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '0';
           des_A2 <= '0';
           des_A3 <= '0';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332073";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '1';
           des_A2 <= '0';
           des_A3 <= '0';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332072";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '1';
           des_A2 <= '0';
           des_A3 <= '0';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332071";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '0';
           des_A2 <= '1';
           des_A3 <= '0';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332070";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '0';
           des_A2 <= '1';
           des_A3 <= '0';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332069";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '1';
           des_A2 <= '1';
           des_A3 <= '0';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332068";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '1';
           des_A2 <= '1';
           des_A3 <= '0';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332067";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '0';
           des_A2 <= '0';
           des_A3 <= '1';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332066";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '0';
           des_A2 <= '0';
           des_A3 <= '1';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332065";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '1';
           des_A2 <= '0';
           des_A3 <= '1';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332064";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '1';
           des_A2 <= '0';
           des_A3 <= '1';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332063";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '0';
           des_A2 <= '1';
           des_A3 <= '1';
           des_A4 <= '1';
           
           wait for 20 ns;
           
           data <= x"20332062";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '0';
           des_A2 <= '1';
           des_A3 <= '1';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332061";
           
           wait for 20 ns;
           
           des_A0 <= '0';
           des_A1 <= '1';
           des_A2 <= '1';
           des_A3 <= '1';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332060";
           
           wait for 20 ns;
           
           des_A0 <= '1';
           des_A1 <= '1';
           des_A2 <= '1';
           des_A3 <= '1';
           des_A4 <= '1';           
           
           wait for 20 ns;
           
           data <= x"20332059";
           
           wait for 20 ns;
           
           data_src <= '0';
           
           data <= x"00000017"; --load 23 into data vector
           
           des_A0 <= '1';
           des_A1 <= '1';
           des_A2 <= '1';
           des_A3 <= '1';
           des_A4 <= '1';     
           
           wait for 20 ns;
     
          
           
            end process stim_process;

end Behavioral;
