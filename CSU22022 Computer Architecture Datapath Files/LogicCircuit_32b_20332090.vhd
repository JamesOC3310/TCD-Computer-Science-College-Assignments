----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/16/2021 06:35:08 PM
-- Design Name: 
-- Module Name: LogicCircuit_32b_20332090 - Behavioral
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

entity LogicCircuit_32b_20332090 is
  Port (Ai : in std_logic_vector (31 downto 0);
        Bi : in std_logic_vector (31 downto 0);
        S0 : in std_logic;
        S1 : in std_logic;
        Gi : out std_logic_vector (31 downto 0));
end LogicCircuit_32b_20332090;

architecture Behavioral of LogicCircuit_32b_20332090 is
        component Logic_Circuit_1b_20332090 Port 
                ( Ai : in std_logic;
                Bi : in std_logic;
                S0 : in std_logic;
                S1 : in std_logic;
                Gi : out std_logic );
         end component;
            

begin

LC1b00: Logic_Circuit_1b_20332090 Port Map (Ai(0), Bi(0), S0, S1, Gi(0));
LC1b01: Logic_Circuit_1b_20332090 Port Map (Ai(1), Bi(1), S0, S1, Gi(1));
LC1b02: Logic_Circuit_1b_20332090 Port Map (Ai(2), Bi(2), S0, S1, Gi(2));
LC1b03: Logic_Circuit_1b_20332090 Port Map (Ai(3), Bi(3), S0, S1, Gi(3));
LC1b04: Logic_Circuit_1b_20332090 Port Map (Ai(4), Bi(4), S0, S1, Gi(4));
LC1b05: Logic_Circuit_1b_20332090 Port Map (Ai(5), Bi(5), S0, S1, Gi(5));
LC1b06: Logic_Circuit_1b_20332090 Port Map (Ai(6), Bi(6), S0, S1, Gi(6));
LC1b07: Logic_Circuit_1b_20332090 Port Map (Ai(7), Bi(7), S0, S1, Gi(7));
LC1b08: Logic_Circuit_1b_20332090 Port Map (Ai(8), Bi(8), S0, S1, Gi(8));
LC1b09: Logic_Circuit_1b_20332090 Port Map (Ai(9), Bi(9), S0, S1, Gi(9));
LC1b10: Logic_Circuit_1b_20332090 Port Map (Ai(10), Bi(10), S0, S1, Gi(10));
LC1b11: Logic_Circuit_1b_20332090 Port Map (Ai(11), Bi(11), S0, S1, Gi(11));
LC1b12: Logic_Circuit_1b_20332090 Port Map (Ai(12), Bi(12), S0, S1, Gi(12));
LC1b13: Logic_Circuit_1b_20332090 Port Map (Ai(13), Bi(13), S0, S1, Gi(13));
LC1b14: Logic_Circuit_1b_20332090 Port Map (Ai(14), Bi(14), S0, S1, Gi(14));
LC1b15: Logic_Circuit_1b_20332090 Port Map (Ai(15), Bi(15), S0, S1, Gi(15));
LC1b16: Logic_Circuit_1b_20332090 Port Map (Ai(16), Bi(16), S0, S1, Gi(16));
LC1b17: Logic_Circuit_1b_20332090 Port Map (Ai(17), Bi(17), S0, S1, Gi(17));
LC1b18: Logic_Circuit_1b_20332090 Port Map (Ai(18), Bi(18), S0, S1, Gi(18));
LC1b19: Logic_Circuit_1b_20332090 Port Map (Ai(19), Bi(19), S0, S1, Gi(19));
LC1b20: Logic_Circuit_1b_20332090 Port Map (Ai(20), Bi(20), S0, S1, Gi(20));
LC1b21: Logic_Circuit_1b_20332090 Port Map (Ai(21), Bi(21), S0, S1, Gi(21));
LC1b22: Logic_Circuit_1b_20332090 Port Map (Ai(22), Bi(22), S0, S1, Gi(22));
LC1b23: Logic_Circuit_1b_20332090 Port Map (Ai(23), Bi(23), S0, S1, Gi(23));
LC1b24: Logic_Circuit_1b_20332090 Port Map (Ai(24), Bi(24), S0, S1, Gi(24));
LC1b25: Logic_Circuit_1b_20332090 Port Map (Ai(25), Bi(25), S0, S1, Gi(25));
LC1b26: Logic_Circuit_1b_20332090 Port Map (Ai(26), Bi(26), S0, S1, Gi(26));
LC1b27: Logic_Circuit_1b_20332090 Port Map (Ai(27), Bi(27), S0, S1, Gi(27));
LC1b28: Logic_Circuit_1b_20332090 Port Map (Ai(28), Bi(28), S0, S1, Gi(28));
LC1b29: Logic_Circuit_1b_20332090 Port Map (Ai(29), Bi(29), S0, S1, Gi(29));
LC1b30: Logic_Circuit_1b_20332090 Port Map (Ai(30), Bi(30), S0, S1, Gi(30));
LC1b31: Logic_Circuit_1b_20332090 Port Map (Ai(31), Bi(31), S0, S1, Gi(31));


end Behavioral;
