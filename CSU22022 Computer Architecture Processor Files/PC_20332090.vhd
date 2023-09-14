----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2022 11:03:51 PM
-- Design Name: 
-- Module Name: PC_20332090 - Behavioral
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

entity PC_20332090 is
  Port ( Extend : in std_logic_vector (31 downto 0);
         Reset : in std_logic;
         Clk : in std_logic;
         PL : in std_logic;
         PI : in std_logic;
         PC_Out : out std_logic_vector (31 downto 0) );
end PC_20332090;

architecture Behavioral of PC_20332090 is

        component RippleCarryAdder_20332090
            PORT (     A : in std_logic_vector (31 downto 0);
                            B : in std_logic_vector (31 downto 0);
                            Carry_in : in std_logic;
                            Sum : out std_logic_vector (31 downto 0);
                            Carry_out : out std_logic;
                            V : out std_logic  );
        end component;
        
        
         component Reg_file20332090
                PORT (  D : in std_logic_vector (31 downto 0);
                        load, Clk : in std_logic;
                   Q : out std_logic_vector (31 downto 0) );
         end component;
         
signal PI_PL_Reset : std_logic;
signal result_of_load : std_logic_vector (31 downto 0);
signal result_of_increment : std_logic_vector (31 downto 0);
signal PC_next_one : std_logic_vector (31 downto 0);
signal PC_last_one : std_logic_vector (31 downto 0);       

begin

            ripadder: RippleCarryAdder_20332090 PORT MAP (
                      A => PC_last_one,
                      B => Extend,
                      Carry_in => '0',
                      Sum => result_of_load );

            ripadderIncrement: RippleCarryAdder_20332090 PORT MAP (
                      A => PC_last_one,
                      B => x"00000001",
                      Carry_in => '0',
                      Sum => result_of_increment );                      
                      
                                                         
             reg_file: Reg_file20332090 PORT MAP (
                       D => PC_next_one,
                       load => PI_PL_Reset,
                       Clk => Clk,
                       Q => PC_last_one );
                       
                       
    PC_next_one <= x"00000000" when Reset = '1' else 
                   result_of_increment when PI = '1' else
                   result_of_load when PL = '1' else
                   x"00000000";
                   
    PC_Out <= PC_last_one;
    
    PI_PL_Reset <= (PI OR PL OR Reset);                    

end Behavioral;
