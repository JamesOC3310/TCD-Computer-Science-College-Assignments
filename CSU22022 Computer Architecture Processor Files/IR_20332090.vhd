----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2022 12:14:54 AM
-- Design Name: 
-- Module Name: IR_20332090 - Behavioral
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

entity IR_20332090 is
  Port ( data_in_ir : in std_logic_vector (31 downto 0);
          IL : in std_logic;
          Clk : in std_logic;
          Opcode : out std_logic_vector (16 downto 0);
          DR : out std_logic_vector (4 downto 0);
          SA : out std_logic_vector (4 downto 0);
          SB : out std_logic_vector (4 downto 0) );
end IR_20332090;

architecture Behavioral of IR_20332090 is

--we need the register
        component Reg_file20332090
                PORT (  D : in std_logic_vector (31 downto 0);
                        load, Clk : in std_logic;
                   Q : out std_logic_vector (31 downto 0) );
         end component;
         
signal data_out_ir : std_logic_vector (31 downto 0);


begin


             reg_file: Reg_file20332090 PORT MAP (
                       D => data_in_ir,
                       load => IL,
                       Clk => Clk,
                       Q => data_out_ir );
                       
                       
          Opcode <= data_out_ir (31 downto 15);
          DR <= data_out_ir (14 downto 10);
          SA <= data_out_ir (9 downto 5);
          SB <= data_out_ir (4 downto 0);            


end Behavioral;
