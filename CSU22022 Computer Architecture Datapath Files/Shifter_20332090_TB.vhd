----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 11:54:03 AM
-- Design Name: 
-- Module Name: Shifter_20332090_TB - Behavioral
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

entity Shifter_20332090_TB is
--  Port ( );
end Shifter_20332090_TB;

architecture Behavioral of Shifter_20332090_TB is

component Shifter_20332090
port(
    J: in std_logic_vector (31 downto 0);
    S0 : in std_logic;
     S1 : in std_logic;
     Il, Ir : in std_logic;
       H: out std_logic_vector (31 downto 0)
    );
end component;

--Inputs

signal J, H: std_logic_vector (31 downto 0);
signal Il, Ir : std_logic;
signal S0 :  std_logic;
signal S1 :  std_logic;

--Outputs
--signal Gi : std_logic;

begin

uut: Shifter_20332090 port map(
   J => J,
   --A => A,
   --B => B,
   --C => C,
   --D => D,
   Il => Il,
   Ir => Ir,
   S0 => S0,
   S1 => S1,
   --Gi => Gi,
   H => H
);

sim_process: process
begin

Il <= '0';
Ir <= '0';
J <= x"20332090";
S0 <= '0';
S1 <= '0';

wait for 2 ns;

J <= x"20332090";
S0 <= '0';
S1 <= '1';
wait for 2 ns;


S0 <= '1';
S1 <= '0';
wait for 2 ns;

end process;

end Behavioral;
