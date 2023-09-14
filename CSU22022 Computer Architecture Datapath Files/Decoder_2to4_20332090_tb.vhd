----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2021 02:45:40 PM
-- Design Name: 
-- Module Name: Decoder_2to4_20332090_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Decoder_2to4_20332090_tb is
--  Port ( );
end Decoder_2to4_20332090_tb;

architecture Behavioral of Decoder_2to4_20332090_tb is
    component Decoder_2to4_20332090
        PORT( A0: in STD_LOGIC;
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
               
         end component;
         
         --inputs
         signal A0 : STD_LOGIC := '0';
         signal A1:  STD_LOGIC := '0';
         signal A2:  STD_LOGIC := '0';
         signal A3:  STD_LOGIC := '0';
         signal A4:  STD_LOGIC := '0';
         
         
         --outputs
         signal Q0: STD_LOGIC := '0';
         signal Q1: STD_LOGIC := '0';
         signal Q2: STD_LOGIC := '0';
         signal Q3: STD_LOGIC := '0';
         signal Q4: STD_LOGIC := '0';
         signal Q5: STD_LOGIC := '0';
         signal Q6: STD_LOGIC := '0';
         signal Q7: STD_LOGIC := '0';
         signal Q8: STD_LOGIC := '0';
         signal Q9: STD_LOGIC := '0';
         signal Q10: STD_LOGIC := '0';
         signal Q11: STD_LOGIC := '0';
         signal Q12: STD_LOGIC := '0';
         signal Q13: STD_LOGIC := '0';
         signal Q14: STD_LOGIC := '0';
         signal Q15: STD_LOGIC := '0';
         signal Q16: STD_LOGIC := '0';
         signal Q17: STD_LOGIC := '0';
         signal Q18: STD_LOGIC := '0';
         signal Q19: STD_LOGIC := '0';
         signal Q20: STD_LOGIC := '0';
         signal Q21: STD_LOGIC := '0';
         signal Q22: STD_LOGIC := '0';
         signal Q23: STD_LOGIC := '0';
         signal Q24: STD_LOGIC := '0';
         signal Q25: STD_LOGIC := '0';
         signal Q26: STD_LOGIC := '0';
         signal Q27: STD_LOGIC := '0';
         signal Q28: STD_LOGIC := '0';
         signal Q29: STD_LOGIC := '0';
         signal Q30: STD_LOGIC := '0';
         signal Q31: STD_LOGIC := '0';
              

begin

        uut: Decoder_2to4_20332090 PORT MAP(
                    A0 => A0,
                    A1 => A1,
                     A2 => A2,
                     A3 => A3,
                     A4 => A4,
                     Q0 => Q0,
                     Q1 => Q1,
                     Q2 => Q2,
                      Q3 => Q3,
                     Q4 => Q4,
                      Q5 => Q5,
                      Q6 => Q6,
                      Q7 => Q7,
                       Q8 => Q8,
                       Q9 => Q9,
                       Q10 => Q10,
                       Q11 => Q11,
                       Q12 => Q12,
                       Q13 => Q13,
                        Q14 => Q14,
                        Q15 => Q15,
                        Q16 => Q16,
                        Q17 => Q17,
                       Q18 => Q18,
                       Q19 => Q19,
                       Q20 => Q20,
                       Q21 => Q21,
                       Q22 => Q22,
                        Q23 => Q23,
                        Q24 => Q24,
                        Q25 => Q25,
                        Q26 => Q26,
                        Q27 => Q27,
                       Q28 => Q28,
                       Q29 => Q29,
                       Q30 => Q30,
                       Q31 => Q31 );
               
           stim_process: process
           begin
           
           A4 <= '0';           
           A3 <= '0';
           A2 <= '0';
           A1 <= '0';
           A0 <= '0';                       --11111
           wait for 10 ns;
           
           A4 <= '0';
           A3 <= '0';
           A2 <= '0';
           A1 <= '0';
           A0 <= '1';                       --00001
           wait for 10 ns;
           
           A4 <= '0';
           A3 <= '0';
           A2 <= '0';
           A1 <= '1';
           A0 <= '0';                           --00010
           wait for 10 ns;
           
       A4 <= '0';
       A3 <= '0';
       A2 <= '0';
       A1 <= '1';
       A0 <= '1';                       --00011
       wait for 10 ns;
       
       A4 <= '0';
       A3 <= '0';
       A2 <= '1';
       A1 <= '0';
       A0 <= '0';                 --00100
       wait for 10 ns;
                  
       A4 <= '0';
       A3 <= '0';
       A2 <= '1';
       A1 <= '0';
       A0 <= '1';                       --00101
       wait for 10 ns;
                               
            
      A4 <= '0';
      A3 <= '0';
      A2 <= '1';
      A1 <= '1';
      A0 <= '0';                    --00110                                        
      wait for 10 ns;
      
       A4 <= '0';
       A3 <= '0';
       A2 <= '1';
       A1 <= '1';
       A0 <= '1';                       --00111
       wait for 10 ns;
       
        A4 <= '0';
        A3 <= '1';
        A2 <= '0';
        A1 <= '0';
        A0 <= '0';                       --01000
        wait for 10 ns;
        
        A4 <= '0';
        A3 <= '1';
        A2 <= '0';
        A1 <= '0';
        A0 <= '1';                       --01001
        wait for 10 ns;
                                                                    
         A4 <= '0';
         A3 <= '1';
         A2 <= '0';
         A1 <= '1';
         A0 <= '0';                       --01010
         wait for 10 ns;
                                                                                                            
        A4 <= '0';
        A3 <= '1';
        A2 <= '0';
        A1 <= '1';
        A0 <= '1';                       --01011
        wait for 10 ns;
                                                                                     
       A4 <= '0';
       A3 <= '1';
       A2 <= '1';
       A1 <= '0';
       A0 <= '0';                       --01100
       wait for 10 ns;
                                                                                                
         A4 <= '0';
         A3 <= '1';
         A2 <= '1';
         A1 <= '0';
         A0 <= '1';                       --01101
         wait for 10 ns;
                                                                                                           
          A4 <= '0';
          A3 <= '1';
          A2 <= '1';
          A1 <= '1';
          A0 <= '0';                       --01110
          wait for 10 ns;
                                                                                                                      
          A4 <= '0';
          A3 <= '1';
          A2 <= '1';
          A1 <= '1';
          A0 <= '1';                           --01111
          wait for 10 ns;
                                                                                                                                               
          A4 <= '1';
          A3 <= '0';
          A2 <= '0';
          A1 <= '0';
          A0 <= '0';                           --10000
          wait for 10 ns;
                                                                                                                                                         
          A4 <= '1';
          A3 <= '0';
          A2 <= '0';
          A1 <= '0';
          A0 <= '1';                           --10001
          wait for 10 ns;
          
           A4 <= '1';
           A3 <= '0';
           A2 <= '0';
           A1 <= '1';
           A0 <= '0';                           --10010
           wait for 10 ns;
                                                                                                                                                                             
        A4 <= '1';
        A3 <= '0';
        A2 <= '0';
        A1 <= '1';
        A0 <= '1';                           --10011
        wait for 10 ns;
                                                                                                                                                                                       
          A4 <= '1';
          A3 <= '0';
          A2 <= '1';
          A1 <= '0';
          A0 <= '0';                           --10100
          wait for 10 ns;
                                                                                                                                                                                                 
          A4 <= '1';
          A3 <= '0';
          A2 <= '1';
          A1 <= '0';
          A0 <= '1';                           --10101
          wait for 10 ns;
                                                                                                                                                                                                           
            A4 <= '1';
            A3 <= '0';
            A2 <= '1';
            A1 <= '1';
            A0 <= '0';                           --10110
            wait for 10 ns;
                                                                                                                                                                                                                    
            A4 <= '1';
            A3 <= '0';
            A2 <= '1';
            A1 <= '1';
            A0 <= '1';                           --10111
            wait for 10 ns;
                                                                                                                                                                                                                               
    A4 <= '1';
    A3 <= '1';
    A2 <= '0';
    A1 <= '0';
    A0 <= '0';                           --11000
    wait for 10 ns;
                                                                                                                                                                                                                                         
   
    A4 <= '1';
    A3 <= '1';
    A2 <= '0';
    A1 <= '0';
    A0 <= '1';                           --11001
    wait for 10 ns;
                                                                                                                                                                                                                                                   
    A4 <= '1';
    A3 <= '1';
    A2 <= '0';
    A1 <= '1';
    A0 <= '0';                           --11010
    wait for 10 ns;
                                                                                                                                                                                                                                                             
   
   A4 <= '1';
   A3 <= '1';
   A2 <= '0';
   A1 <= '1';
   A0 <= '1';                           --11011
   wait for 10 ns;
                                                                                                                                                                                                                                                                       
   A4 <= '1';
   A3 <= '1';
   A2 <= '1';
   A1 <= '0';
   A0 <= '0';                           --11100
   wait for 10 ns;
   
   A4 <= '1';
   A3 <= '1';
   A2 <= '1';
   A1 <= '0';
   A0 <= '1';                           --11101
   wait for 10 ns;
   
    A4 <= '1';
    A3 <= '1';
    A2 <= '1';
    A1 <= '1';
    A0 <= '0';                           --11110
    wait for 10 ns;

    A4 <= '1';
    A3 <= '1';
    A2 <= '1';
    A1 <= '1';
    A0 <= '1';                           --11111
    wait for 10 ns;

end process; 
                
            


end Behavioral;          
