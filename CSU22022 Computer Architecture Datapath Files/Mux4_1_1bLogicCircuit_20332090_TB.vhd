----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2021 02:56:07 PM
-- Design Name: 
-- Module Name: 4_1Mux1bLogicCircuit_20332090_TB - Behavioral
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

entity Mux4_1_1bLogicCircuit_20332090_TB is
--  Port ( );
end Mux4_1_1bLogicCircuit_20332090_TB;

architecture Behavioral of Mux4_1_1bLogicCircuit_20332090_TB is
                    component Mux4_1_1bLogicCircuit_20332090
                    PORT (  A : in std_logic;
                            B : in std_logic;
                            C : in std_logic;
                            D : in std_logic;
                            S0 : in std_logic;
                            S1 : in std_logic;
                            Gi : out std_logic );
                    end component;
                    
--Inputs
signal A : std_logic := '0';   
signal B : std_logic := '0';
signal C : std_logic := '0';
signal D : std_logic := '0';
signal S0 : std_logic := '0';
signal S1 : std_logic := '0';         

--Outputs
signal Gi : std_logic;        

begin

    uut:  Mux4_1_1bLogicCircuit_20332090 PORT MAP (
                    A => A,
                    B => B,
                    C => C,
                    D => D,
                    S0 => S0,
                    S1 => S1,
                    Gi => Gi );
                    
stim_process: process

begin

A <= '1';
B <= '0';
C <= '1';
D <= '0';

S0 <= '0';
S1 <= '0';

wait for 100 ns;

S0 <= '0';
S1 <= '1';

wait for 100 ns;

S0 <= '1';
S1 <= '0';

wait for 100 ns;

S0 <= '1';
S1 <= '1';

wait;

end process;

end Behavioral;