----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2021 02:47:32 PM
-- Design Name: 
-- Module Name: 4_1Mux1bLogicCircuit_20332090 - Behavioral
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

entity Mux4_1_1bLogicCircuit_20332090 is
  Port (A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        D : in std_logic;
        S0 : in std_logic;
        S1 : in std_logic;
        Gi : out std_logic );
end Mux4_1_1bLogicCircuit_20332090;

architecture Behavioral of Mux4_1_1bLogicCircuit_20332090 is

begin

    Gi <= A when S0 <= '0' and S1 <= '0' else
          B when S0 <= '0' and S1 <= '1' else 
          C when S0 <= '1' and S1 <= '0' else
          D when S0 <= '1' and S1 <= '1' else
          'X';


end Behavioral;