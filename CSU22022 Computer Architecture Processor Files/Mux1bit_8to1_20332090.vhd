----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2022 01:25:08 AM
-- Design Name: 
-- Module Name: Mux1bit_8to1_20332090 - Behavioral
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

entity Mux1bit_8to1_20332090 is
  Port (Mux8_1_inA : in std_logic;
        Mux8_1_inB : in std_logic;
        Mux8_1_inC : in std_logic;
        Mux8_1_inD : in std_logic;
        Mux8_1_inE : in std_logic;
        Mux8_1_inF : in std_logic;
        Mux8_1_inG : in std_logic;
        Mux8_1_inH : in std_logic;
        S0 : in std_logic;
        S1 : in std_logic;
        S2 : in std_logic;
        Mux8_1_out : out std_logic  );
end Mux1bit_8to1_20332090;

architecture Behavioral of Mux1bit_8to1_20332090 is

begin

Mux8_1_out <= Mux8_1_inA when S0 <= '0' and S1 <= '0' and S2 <= '0' else
              Mux8_1_inB when S0 <= '0' and S1 <= '0' and S2 <= '1' else
              Mux8_1_inC when S0 <= '0' and S1 <= '1' and S2 <= '0' else
              Mux8_1_inD when S0 <= '0' and S1 <= '1' and S2 <= '1' else
              Mux8_1_inE when S0 <= '1' and S1 <= '0' and S2 <= '0' else
              Mux8_1_inF when S0 <= '1' and S1 <= '0' and S2 <= '1' else
              Mux8_1_inG when S0 <= '1' and S1 <= '1' and S2 <= '0' else
              Mux8_1_inH when S0 <= '1' and S1 <= '1' and S2 <= '1' else
              'X';




end Behavioral;
