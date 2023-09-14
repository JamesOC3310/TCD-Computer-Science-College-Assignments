----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 12:19:48 PM
-- Design Name: 
-- Module Name: ArithmeticCircuitBitslice_20332090 - Behavioral
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

entity ArithmeticCircuitBitslice_20332090 is
    Port ( A : in std_logic;
           B : in std_logic;
           Carry_in : in std_logic;
           S0 : in std_logic;
           S1 : in std_logic;
           G : out std_logic;
           Carry_out : out std_logic);
end ArithmeticCircuitBitslice_20332090;

architecture Behavioral of ArithmeticCircuitBitslice_20332090 is

                component  Mux2_1_1bit is
                    Port ( in0 : in std_logic;
                           in1 : in std_logic;
                           S : in std_logic;
                           Z : out std_logic);
                end component;
                
                component ArithmeticBitsliceFullAdder_20332090 is
                    Port ( A : in std_logic;
                           B : in std_logic;
                           Carry_in : in std_logic;
                           Sum : out std_logic;
                           Carry_out : out std_logic);
                end component;
                
signal Y : std_logic;                

begin

mux2_1_1b: Mux2_1_1bit
PORT MAP(
            in0 => S1,
            in1 => S0,
            S => B,
            Z => Y
            );
            
fadder: ArithmeticBitsliceFullAdder_20332090
PORT MAP(
            A => Y,
            B => A,
            Carry_in => Carry_in,
            Sum => G,
            Carry_out => Carry_out
            );            

end Behavioral;
