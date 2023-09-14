----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/18/2021 05:02:32 PM
-- Design Name: 
-- Module Name: Mux3_1_20332090 - Behavioral
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

entity Mux3_1_20332090 is
  Port (A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        S0 : in std_logic;
        S1 : in std_logic;
        Muxout : out std_logic  );
end Mux3_1_20332090;

architecture Behavioral of Mux3_1_20332090 is

begin

 Muxout <= A when S0 <= '0' and S1 <= '0' else
          B when S0 <= '0' and S1 <= '1' else 
          C when S0 <= '1' and S1 <= '0' else
          '0';


end Behavioral;
