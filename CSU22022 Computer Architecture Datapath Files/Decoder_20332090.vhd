----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2021 02:23:51 PM
-- Design Name: 
-- Module Name: Decoder_2to4_20332090 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_2to4_20332090 is
  Port (
        A0: in STD_LOGIC;
        A1: in STD_LOGIC;
        A2: in STD_LOGIC;
        A3: in STD_LOGIC;
        A4: in STD_LOGIC;
        Q0: out STD_LOGIC;
        Q1: out STD_LOGIC;
        Q2: out STD_LOGIC;
        Q3: out STD_LOGIC;
        Q4: out STD_LOGIC;
        Q5: out STD_LOGIC;
        Q6: out STD_LOGIC;
        Q7: out STD_LOGIC;
        Q8: out STD_LOGIC;
        Q9: out STD_LOGIC;
        Q10: out STD_LOGIC;
        Q11: out STD_LOGIC;
        Q12: out STD_LOGIC;
        Q13: out STD_LOGIC;
        Q14: out STD_LOGIC;
        Q15: out STD_LOGIC;
        Q16: out STD_LOGIC;
        Q17: out STD_LOGIC;
        Q18: out STD_LOGIC;
        Q19: out STD_LOGIC;
        Q20: out STD_LOGIC;
        Q21: out STD_LOGIC;
        Q22: out STD_LOGIC;
        Q23: out STD_LOGIC;
        Q24: out STD_LOGIC;
        Q25: out STD_LOGIC;
        Q26: out STD_LOGIC;
        Q27: out STD_LOGIC;
        Q28: out STD_LOGIC;
        Q29: out STD_LOGIC;
        Q30: out STD_LOGIC;
        Q31: out STD_LOGIC );
end Decoder_2to4_20332090;

architecture Behavioral of Decoder_2to4_20332090 is

begin
Q0<= ((not A4) and (not A3) and (not A2) and (not A1) and (not A0));  -- 11111
Q1<= ((not A4) and (not A3) and (not A2) and (not A1) and A0);
Q2<= ((not A4) and (not A3) and (not A2) and A1 and (not A0));
Q3<= ((not A4) and (not A3) and (not A2) and A1 and A0);
Q4<= ((not A4) and (not A3) and A2 and (not A1) and (not A0));
Q5<= ((not A4) and (not A3) and A2 and (not A1) and A0);
Q6<= ((not A4) and (not A3) and A2 and A1 and (not A0));
Q7<= ((not A4) and (not A3) and A2 and A1 and A0);
Q8<= ((not A4) and A3 and (not A2) and (not A1) and (not A0));
Q9<= ((not A4) and A3 and (not A2) and (not A1) and A0);
Q10<= ((not A4) and A3 and (not A2) and A1 and (not A0));
Q11<= ((not A4) and A3 and (not A2) and A1 and A0);
Q12<= ((not A4) and A3 and A2 and (not A1) and (not A0));
Q13<= ((not A4) and A3 and A2 and (not A1) and A0);
Q14<= ((not A4) and A3 and A2 and A1 and (not A0)); 
Q15<= ((not A4) and A3 and A2 and A1 and A0); 
Q16<= (A4 and (not A3) and (not A2) and (not A1) and (not A0)); 
Q17<= (A4 and (not A3) and (not A2) and (not A1) and A0);
Q18<= (A4 and (not A3) and (not A2) and A1 and (not A0));
Q19<= (A4 and (not A3) and (not A2) and A1 and A0);
Q20<= (A4 and (not A3) and A2 and (not A1) and (not A0));
Q21<= (A4 and (not A3) and A2 and (not A1) and A0);
Q22<= (A4 and (not A3) and A2 and A1 and (not A0));
Q23<= (A4 and (not A3) and A2 and A1 and A0);
Q24<= (A4 and A3 and (not A2) and (not A1) and (not A0));
Q25<= (A4 and A3 and (not A2) and (not A1) and A0);
Q26<= (A4 and A3 and (not A2) and A1 and (not A0));
Q27<= (A4 and A3 and (not A2) and A1 and A0);
Q28<= (A4 and A3 and A2 and (not A1) and (not A0));
Q29<= (A4 and A3 and A2 and (not A1) and A0);
Q30<= (A4 and A3 and A2 and A1 and (not A0));
Q31<= (A4 and A3 and A2 and A1 and A0);  -- 00000

end Behavioral;
