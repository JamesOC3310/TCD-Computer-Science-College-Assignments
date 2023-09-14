----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 12:00:09 PM
-- Design Name: 
-- Module Name: RippleCarryAdder_20332090 - Behavioral
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

entity RippleCarryAdder_20332090 is
Port (    A : in std_logic_vector (31 downto 0);
          B : in std_logic_vector (31 downto 0);
          Carry_in : in std_logic;
          Sum : out std_logic_vector (31 downto 0);
          Carry_out : out std_logic;
          V : out std_logic);
end RippleCarryAdder_20332090;

architecture Behavioral of RippleCarryAdder_20332090 is
        component FullAdder_20332090
      Port ( A : in std_logic;
             B : in std_logic;
            Carry_in : in std_logic;
            Carry_out : out std_logic;
            Sum : out std_logic);
      end component;
      
      --signal C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12, C13, C14,
      --C15, C16, C17, C18, C19, C20, C21, C22, C23, C24, C25, C26, C27, C28, C29,
      --C30, C31 : std_logic;
      
      signal C : std_logic_vector (30 downto 0);
      
      signal final_carry : std_logic;
      
      
      
      begin
      
      FAD00 : FullAdder_20332090 Port map (A(0), B(0), Carry_in, C(0), Sum(0));
      FAD01 : FullAdder_20332090 Port map (A(1), B(1), C(0), C(1), Sum(1));
      FAD02 : FullAdder_20332090 Port map (A(2), B(2), C(1), C(2), Sum(2));
      FAD03 : FullAdder_20332090 Port map (A(3), B(3), C(2), C(3), Sum(3));
      FAD04 : FullAdder_20332090 Port map (A(4), B(4), C(3), C(4), Sum(4));
      FAD05 : FullAdder_20332090 Port map (A(5), B(5), C(4), C(5), Sum(5));
      FAD06 : FullAdder_20332090 Port map (A(6), B(6), C(5), C(6), Sum(6));
      FAD07 : FullAdder_20332090 Port map (A(7), B(7), C(6), C(7), Sum(7));
      FAD08 : FullAdder_20332090 Port map (A(8), B(8), C(7), C(8), Sum(8));
      FAD09 : FullAdder_20332090 Port map (A(9), B(9), C(8), C(9), Sum(9));
      FAD10 : FullAdder_20332090 Port map (A(10),B(10),C(9), C(10), Sum(10));
      FAD11 : FullAdder_20332090 Port map (A(11),B(11),C(10), C(11), Sum(11));
      FAD12 : FullAdder_20332090 Port map (A(12),B(12), C(11), C(12),Sum(12));
      FAD13 : FullAdder_20332090 Port map (A(13),B(13), C(12), C(13), Sum(13));
      FAD14 : FullAdder_20332090 Port map (A(14),B(14), C(13), C(14), Sum(14));
      FAD15 : FullAdder_20332090 Port map (A(15),B(15), C(14), C(15), Sum(15));
      FAD16 : FullAdder_20332090 Port map (A(16),B(16), C(15), C(16), Sum(16));
      FAD17 : FullAdder_20332090 Port map (A(17),B(17), C(16), C(17),Sum(17));
      FAD18 : FullAdder_20332090 Port map (A(18),B(18), C(17), C(18),Sum(18));
      FAD19 : FullAdder_20332090 Port map (A(19),B(19), C(18), C(19),Sum(19));
      FAD20 : FullAdder_20332090 Port map (A(20),B(20), C(19), C(20),Sum(20));
      FAD21 : FullAdder_20332090 Port map (A(21),B(21), C(20), C(21),Sum(21));
      FAD22 : FullAdder_20332090 Port map (A(22),B(22), C(21), C(22),Sum(22));
      FAD23 : FullAdder_20332090 Port map (A(23),B(23), C(22), C(23), Sum(23));
      FAD24 : FullAdder_20332090 Port map (A(24),B(24), C(23), C(24),Sum(24));
      FAD25 : FullAdder_20332090 Port map (A(25),B(25), C(24), C(25),Sum(25));
      FAD26 : FullAdder_20332090 Port map (A(26),B(26), C(25), C(26),Sum(26));
      FAD27 : FullAdder_20332090 Port map (A(27),B(27), C(26), C(27), Sum(27));
      FAD28 : FullAdder_20332090 Port map (A(28),B(28), C(27), C(28), Sum(28));
      FAD29 : FullAdder_20332090 Port map (A(29),B(29), C(28), C(29), Sum(29));
      FAD30 : FullAdder_20332090 Port map (A(30),B(30), C(29), C(30), Sum(30));
      FAD31 : FullAdder_20332090 Port map (A(31),B(31), C(30), final_carry, Sum(31));
      
    Carry_out <= final_carry;
    
    V <= (final_carry XOR C(30));
      
  
end Behavioral;
