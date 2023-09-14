----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2021 05:33:08 PM
-- Design Name: 
-- Module Name: Logic_Circuit_1b_20332090 - Behavioral
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

entity Logic_Circuit_1b_20332090 is
  Port (Ai : in std_logic;
        Bi : in std_logic;
        S0 : in std_logic;
        S1 : in std_logic;
        Gi : out std_logic );
end Logic_Circuit_1b_20332090;

architecture Behavioral of Logic_Circuit_1b_20332090 is
                    component Mux4_1_1bLogicCircuit_20332090
                    PORT ( A : in std_logic;
                            B : in std_logic;
                            C : in std_logic;
                            D : in std_logic;
                            S0 : in std_logic;
                            S1 : in std_logic;
                            Gi : out std_logic );
                    end component;
                    
signal output_And, output_Or, output_Xor, output_Not : std_logic;

begin

output_And <= (Ai AND Bi);
output_Or <= (Ai OR Bi);
output_Xor <= (Ai XOR Bi);
output_Not <= (NOT Ai);

Mux4_1_1b: Mux4_1_1bLogicCircuit_20332090
                    PORT MAP (
                                A => output_And,
                                B => output_Or,
                                C => output_Xor,
                                D => output_Not,
                                S0 => S0,
                                S1 => S1,
                                Gi => Gi );


end Behavioral;
