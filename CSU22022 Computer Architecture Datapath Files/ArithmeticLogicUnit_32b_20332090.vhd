----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2021 03:03:20 PM
-- Design Name: 
-- Module Name: ArithmeticLogicUnit_32b_20332090 - Behavioral
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

entity ArithmeticLogicUnit_32b_20332090 is
  Port ( A : in std_logic_vector (31 downto 0);
         B :  in std_logic_vector (31 downto 0);
         s : in std_logic;
                  Carry_in : in std_logic;
                  S0 : in std_logic;
                  S1 : in std_logic;
                  Sum : out std_logic_vector (31 downto 0);
                  Carry_out : out std_logic;
                 -- Gi : out std_logic_vector (31 downto 0);
                 -- Y : out std_logic_vector (31 downto 0);
                  --z : out std_logic_vector (31 downto 0);
                  V : out std_logic );
         
end ArithmeticLogicUnit_32b_20332090;

architecture Behavioral of ArithmeticLogicUnit_32b_20332090 is
            
            --Firstly, need a Ripple_Carry_Adder_Subtractor_32b_20332090
            component Ripple_Carry_Adder_Subtractor_32b_20332090
            PORT(
                   A : in std_logic_vector (31 downto 0);
                   B : in std_logic_vector (31 downto 0);
                   Carry_in : in std_logic;
                   S0 : in std_logic;
                   S1 : in std_logic;
                   Sum : out std_logic_vector (31 downto 0);
                   Carry_out : out std_logic;
                  -- Y : out std_logic_vector (31 downto 0);
                   V : out std_logic
                   );
            END COMPONENT;
            
            --secondly, need a LogicCircuit_32b_20332090
            component LogicCircuit_32b_20332090
            PORT ( Ai : in std_logic_vector (31 downto 0);
                    Bi : in std_logic_vector (31 downto 0);
                    S0 : in std_logic;
                    S1 : in std_logic;
                    Gi : out std_logic_vector (31 downto 0));
            end component;
            
            --thirdly, need a Mux2_1_32b_20332090
            component Mux2_1_32b_20332090
            PORT ( in0 : in std_logic_vector (31 downto 0);
                     in1 : in std_logic_vector (31 downto 0);
                     s : in std_logic;
                     z : out std_logic_vector (31 downto 0) );
            end component;
            
            signal in0 : std_logic_vector (31 downto 0);
            signal in1 : std_logic_vector (31 downto 0);

begin

rippaddsub: Ripple_Carry_Adder_Subtractor_32b_20332090
    PORT MAP ( A => A,
               B => B,
               Carry_in => Carry_in,
               S0 => S0, 
               S1 => S1,
               Sum => in0,
               Carry_out => Carry_out,
              -- Y => Y,
               V => V
                    );
                    
                    
logiccirc32b:  LogicCircuit_32b_20332090
        PORT MAP ( Ai => A,
        
                   Bi => B,
                   S0 => S0,
                   S1 => S1,
                   Gi => in1
                        );
                        
mux2to1: Mux2_1_32b_20332090
        PORT MAP (in0 => in0,
                  in1 => in1,
                  s => s,
                  z => Sum
                   );


end Behavioral;
