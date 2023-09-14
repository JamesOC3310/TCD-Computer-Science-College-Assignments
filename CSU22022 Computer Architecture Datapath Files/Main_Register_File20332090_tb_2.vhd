----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2021 09:58:06 PM
-- Design Name: 
-- Module Name: Main_Register_File20332090_tb_2 - Behavioral
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

entity Main_Register_File20332090_tb_2 is
--  Port ( );
end Main_Register_File20332090_tb_2;

architecture Behavioral of Main_Register_File20332090_tb_2 is
            component Main_Register_File20332090
       PORT ( src_s0, des_A0 : in std_logic_vector (4 downto 0);
              Clk, data_src: in std_logic;
              data : in std_logic_vector (31 downto 0);
              reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14,
              reg15, reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24, reg25, reg26, reg27, reg28,
              reg29, reg30, reg31 : out std_logic_vector (31 downto 0)); 
     end component;
     
     --inputs
     signal src_s0 : std_logic_vector(4 downto 0) := (others => '0');
     signal des_A0 : std_logic_vector(4 downto 0) := (others => '0');
     signal Clk : STD_LOGIC := '0';
     signal data_src : STD_LOGIC := '1';
     signal data : std_logic_vector(31 downto 0) := (others => '0');
     
     --outputs
     signal reg0 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg1 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg2 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg3 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg4 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg5 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg6 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg7 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg8 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg9 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg10 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg11 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg12 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg13 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg14 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg15 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg16 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg17 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg18 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg19 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg20 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg21 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg22 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg23 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg24 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg25 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg26 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg27 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg28 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg29 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg30 :  std_logic_vector(31 downto 0) := (others => '0');
     signal reg31 :  std_logic_vector(31 downto 0) := (others => '0');

begin
                Clk <= not Clk after 5 ns;
                stim_process: process
                begin
                
                data <= "00000001001101100011111000111010";
                des_A0 <= "00000"; 
                wait for 20 ns;
 
                data <= "00000001001101100011111000111001";
                des_A0 <= "00001";
                wait for 20 ns;  
                
                data <= "00000001001101100011111000111000";
                des_A0 <= "00010";
                wait for 20 ns;
                
                data <= "00000001001101100011111000110111";
                des_A0 <= "00011";
                wait for 20 ns;
                
                data <= "00000001001101100011111000110110";
                des_A0 <= "00100";
                wait for 20 ns;
                
                data <= "00000001001101100011111000110101";
                des_A0 <= "00101";
                wait for 20 ns;
                
                data <= "00000001001101100011111000110100";
                des_A0 <= "00110";
                wait for 20 ns;
                
                data <= "00000001001101100011111000110011";
                des_A0 <= "00111";
                wait for 20 ns;
                
                data <= "00000001001101100011111000110010";
                des_A0 <= "01000";
                wait for 20 ns;
                
                data <= "00000001001101100011111000110001";
                des_A0 <= "01001";
                wait for 20 ns;
                
                data <= "00000001001101100011111000110000";
                des_A0 <= "01010";
                wait for 20 ns;                  
                
                data_src <= '1';
                wait for 20 ns;
                
           --transferring from reg0 to reg1
                des_A0 <= "00001";
                src_s0 <= "00000";
                wait for 20 ns;
                
             --transferring from reg1 to reg2   
                des_A0 <= "00010";
                src_s0 <= "00001";
                wait for 20 ns;
                
              --transferring from reg2 to reg3
                des_A0 <= "00011";
                src_s0 <= "00010";
                wait for 20 ns;
                
                --transferring from reg3 to reg4
                des_A0 <= "00100";
                src_s0 <= "00011";
                wait for 20 ns;
                
                --transferring from reg4 to reg5
                des_A0 <= "00101";
                src_s0 <= "00100";
                wait for 20 ns;
                
                --transferring from reg5 to reg6
                 des_A0 <= "00110";
                 src_s0 <= "00101";
                 wait for 20 ns;
                 
                 --transferring from reg6 to reg7
                 des_A0 <= "00111";
                 src_s0 <= "00110";
                 wait for 20 ns;
                 
                 --transferring from reg7 to reg8
                 des_A0 <= "01000";
                 src_s0 <= "00111";
                 wait for 20 ns;
                 
                 --transferring from reg8 to reg9
                 des_A0 <= "01001";
                 src_s0 <= "01000";
                 wait for 20 ns;
                 
                 --transferring from reg9 to reg10
                 des_A0 <= "01010";
                 src_s0 <= "01001";
                 wait for 20 ns;
                 
            end process stim_process;

end Behavioral;
