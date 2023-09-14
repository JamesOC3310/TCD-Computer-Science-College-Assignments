----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2021 12:03:06 PM
-- Design Name: 
-- Module Name: Ripple_Carry_Adder_Subtractor_32b_20332090 - Behavioral
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

entity Ripple_Carry_Adder_Subtractor_32b_20332090 is
  Port (  A : in std_logic_vector (31 downto 0);
          B : in std_logic_vector (31 downto 0);
          Carry_in : in std_logic;
          S0 : in std_logic;
          S1 : in std_logic;
          Sum : out std_logic_vector (31 downto 0);
          Carry_out : out std_logic;
          --Y : out std_logic_vector (31 downto 0);
          V : out std_logic );
end Ripple_Carry_Adder_Subtractor_32b_20332090;

architecture Behavioral of Ripple_Carry_Adder_Subtractor_32b_20332090 is

--Firstly, we need a b-input logic
component B_input_Logic_20332090 is
    Port ( B : in std_logic_vector (31 downto 0);
           S0 : in std_logic;
           S1 : in std_logic;
           Goutput : out std_logic_vector (31 downto 0) );
end component;

--Secondly we need a ripple adder
component RippleCarryAdder_20332090 is
    Port (  A : IN std_logic_vector(31 downto 0);
            B : IN std_logic_vector(31 downto 0);
            Carry_in : IN std_logic;
            Sum : OUT std_logic_vector(31 downto 0);
            Carry_out : OUT std_logic;
            V : out std_logic );
end component;

signal D : std_logic_vector (31 downto 0);

begin


--Now we map the two components

b_input_logic00: B_input_Logic_20332090 Port Map(B => B, S0 => S0, S1 => S1, Goutput => D);

ripadd: RippleCarryAdder_20332090 Port Map(A => A, B => D, Carry_in => Carry_in, Sum => Sum, Carry_out => Carry_out, V => V);



end Behavioral;
