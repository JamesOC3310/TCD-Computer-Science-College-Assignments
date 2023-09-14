----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/19/2021 12:06:45 PM
-- Design Name: 
-- Module Name: Main_Register_File20332090 - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main_Register_File20332090 is
  Port (
         des_A0 : in std_logic;
         des_A1 : in std_logic;
         des_A2 : in std_logic;
         des_A3 : in std_logic;
         des_A4 : in std_logic;
         AddressA : in std_logic_vector (4 downto 0);
         AddressB : in std_logic_vector (4 downto 0);
         Clk : in std_logic;
         data_src : in std_logic;
         data : in std_logic_vector (31 downto 0);
         Aoutput : out std_logic_vector (31 downto 0);
         Boutput : out std_logic_vector (31 downto 0));

end Main_Register_File20332090;

architecture Behavioral of Main_Register_File20332090 is
--components

            --32 bit Register for register file
            component Reg_file20332090
            PORT (
                     D : in std_logic_vector (31 downto 0);
                     load, Clk : in std_logic;
                     Q : out std_logic_vector (31 downto 0));
             end component;
             
             -- 32 bit decoder_2to4
             component Decoder_2to4_20332090
             PORT (
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
              end component;
                
                
               -- 32 bit mux32_1bit
              component Mux32_1_32b_20332090
                PORT (
                        MuxA_in0 : in  STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in1 : in  STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in2: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in3: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in4: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in5: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in6: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in7: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in8: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in9: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in10: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in11: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in12: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in13: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in14: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in15: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in16: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in17: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in18: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in19: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in20: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in21: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in22: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in23: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in24: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in25: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in26: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in27: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in28: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in29: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in30: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxA_in31: in STD_LOGIC_VECTOR (31 downto 0);
                        MuxASelect : in std_logic_vector (4 downto 0);
                        MuxA_Out : out  STD_LOGIC_VECTOR (31 downto 0));
                  end component;                 
                   
--signals
signal load_reg0, load_reg1, load_reg2, load_reg3, load_reg4, load_reg5, load_reg6, load_reg7, load_reg8, 
load_reg9, load_reg10, load_reg11, load_reg12, load_reg13, load_reg14, load_reg15, load_reg16, load_reg17,
load_reg18, load_reg19, load_reg20, load_reg21, load_reg22, load_reg23, load_reg24, load_reg25, load_reg26, 
load_reg27, load_reg28, load_reg29, load_reg30, load_reg31 : std_logic;

signal LoadReg_enable0, LoadReg_enable1,LoadReg_enable2,LoadReg_enable3,LoadReg_enable4,LoadReg_enable5,LoadReg_enable6,
LoadReg_enable7,LoadReg_enable8,LoadReg_enable9,LoadReg_enable10,LoadReg_enable11,LoadReg_enable12,LoadReg_enable13,LoadReg_enable14,
LoadReg_enable15,LoadReg_enable16,LoadReg_enable17,LoadReg_enable18,LoadReg_enable19,LoadReg_enable20,LoadReg_enable21,LoadReg_enable22,
LoadReg_enable23,LoadReg_enable24,LoadReg_enable25,LoadReg_enable26,LoadReg_enable27,LoadReg_enable28,LoadReg_enable29,LoadReg_enable30,
LoadReg_enable31 : std_logic;

signal reg_q0, reg_q1, reg_q2, reg_q3, reg_q4, reg_q5, reg_q6, reg_q7, reg_q8, 
reg_q9, reg_q10, reg_q11, reg_q12, reg_q13, reg_q14, reg_q15, reg_q16, reg_q17,
reg_q18, reg_q19, reg_q20, reg_q21, reg_q22, reg_q23, reg_q24, reg_q25, reg_q26, 
reg_q27, reg_q28, reg_q29, reg_q30, reg_q31 : std_logic_vector (31 downto 0);


                        
  
  begin
  
  LoadReg_enable0 <= data_src and load_reg0;
  LoadReg_enable1 <= data_src and load_reg1;
  LoadReg_enable2 <= data_src and load_reg2;
  LoadReg_enable3 <= data_src and load_reg3;
  LoadReg_enable4 <= data_src and load_reg4;
  LoadReg_enable5 <= data_src and load_reg5;
  LoadReg_enable6 <= data_src and load_reg6;
  LoadReg_enable7 <= data_src and load_reg7;
  LoadReg_enable8 <= data_src and load_reg8;
  LoadReg_enable9 <= data_src and load_reg9;
  LoadReg_enable10 <= data_src and load_reg10;
  LoadReg_enable11 <= data_src and load_reg11;
  LoadReg_enable12 <= data_src and load_reg12;
  LoadReg_enable13 <= data_src and load_reg13;
  LoadReg_enable14 <= data_src and load_reg14;
  LoadReg_enable15 <= data_src and load_reg15;
  LoadReg_enable16 <= data_src and load_reg16;
  LoadReg_enable17 <= data_src and load_reg17;
  LoadReg_enable18 <= data_src and load_reg18;
  LoadReg_enable19 <= data_src and load_reg19;
  LoadReg_enable20 <= data_src and load_reg20;
  LoadReg_enable21 <= data_src and load_reg21;
  LoadReg_enable22 <= data_src and load_reg22;
  LoadReg_enable23 <= data_src and load_reg23;
  LoadReg_enable24 <= data_src and load_reg24;
  LoadReg_enable25 <= data_src and load_reg25;
  LoadReg_enable26 <= data_src and load_reg26;
  LoadReg_enable27 <= data_src and load_reg27;
  LoadReg_enable28 <= data_src and load_reg28;
  LoadReg_enable29 <= data_src and load_reg29;
  LoadReg_enable30 <= data_src and load_reg30;
  LoadReg_enable31 <= data_src and load_reg31;
  
  
  
  -- port maps
  
  --register 0
  reg00: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable0,
                Clk => Clk,
                Q => reg_q0 );
                
  --register 1
  reg01: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable1,
                Clk => Clk,
                Q => reg_q1 );
                
  --register 2
  reg02: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable2,
                Clk => Clk,
                Q => reg_q2 );
                
  --register 3
  reg03: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable3,
                Clk => Clk,
                Q => reg_q3 );
                
  --register 4
  reg04: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable4,
                Clk => Clk,
                Q => reg_q4 );
                
  --register 5
  reg05: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable5,
                Clk => Clk,
                Q => reg_q5 );
                
                
  --register 6
  reg06: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable6,
                Clk => Clk,
                Q => reg_q6 );
                
  --register 7
  reg07: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable7,
                Clk => Clk,
                Q => reg_q7 );
                
  --register 8
  reg08: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable8,
                Clk => Clk,
                Q => reg_q8 );
                
  --register 9
  reg09: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable9,
                Clk => Clk,
                Q => reg_q9 );
                
  --register 10
  reg010: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable10,
                Clk => Clk,
                Q => reg_q10 );
                
  --register 11
  reg011: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable11,
                Clk => Clk,
                Q => reg_q11 );
                
  --register 12
  reg012: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable12,
                Clk => Clk,
                Q => reg_q12 );
                
  --register 13
  reg013: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable13,
                Clk => Clk,
                Q => reg_q13 );
                
  --register 14
  reg014: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable14,
                Clk => Clk,
                Q => reg_q14 );
                
  --register 15
  reg015: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable15,
                Clk => Clk,
                Q => reg_q15 );
                
  --register 16
  reg16: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable16,
                Clk => Clk,
                Q => reg_q16 );
                
  --register 17
  reg017: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable17,
                Clk => Clk,
                Q => reg_q17 );
                
  --register 18
  reg018: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable18,
                Clk => Clk,
                Q => reg_q18 );
                
  --register 19
  reg019: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable19,
                Clk => Clk,
                Q => reg_q19 );
                
  --register 20
  reg020: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable20,
                Clk => Clk,
                Q => reg_q20 );
                
  --register 21
  reg021: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable21,
                Clk => Clk,
                Q => reg_q21 );
                
  --register 22
  reg022: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable22,
                Clk => Clk,
                Q => reg_q22 );
                
  --register 23
  reg023: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable23,
                Clk => Clk,
                Q => reg_q23 );
                
  --register 24
  reg024: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable24,
                Clk => Clk,
                Q => reg_q24 );
                
  --register 25
  reg025: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable25,
                Clk => Clk,
                Q => reg_q25 );
                
  --register 26
  reg026: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable26,
                Clk => Clk,
                Q => reg_q26 );
                
  --register 27
  reg027: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable27,
                Clk => Clk,
                Q => reg_q27 );
                
  --register 28
  reg028: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable28,
                Clk => Clk,
                Q => reg_q28 );

  --register 29
  reg029: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable29,
                Clk => Clk,
                Q => reg_q29 );
                
  --register 30
  reg030: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable30,
                Clk => Clk,
                Q => reg_q30 );
                
  --register 31
  reg031: Reg_file20332090 PORT MAP ( 
                D => data,
                load => LoadReg_enable31,
                Clk => Clk,
                Q => reg_q31 );
                                                            
                 
     --Destination register decoder
     des_decoder_2to4: Decoder_2to4_20332090 PORT MAP (
                         A0 => des_A0,
                         A1 => des_A1,
                         A2 => des_A2,
                         A3 => des_A3,
                         A4=> des_A4,
                         Q0 => load_reg0,
                         Q1 => load_reg1,
                         Q2 => load_reg2,
                         Q3 => load_reg3,
                         Q4 => load_reg4,
                         Q5 => load_reg5,
                         Q6 => load_reg6,
                         Q7 => load_reg7,
                         Q8 => load_reg8,
                         Q9 => load_reg9,
                         Q10 => load_reg10,
                         Q11 => load_reg11,
                         Q12 => load_reg12,
                         Q13 => load_reg13,
                         Q14 => load_reg14,
                         Q15 => load_reg15,
                         Q16 => load_reg16,
                         Q17 => load_reg17,
                         Q18 => load_reg18,
                         Q19 => load_reg19,
                         Q20 => load_reg20,
                         Q21 => load_reg21,
                         Q22 => load_reg22,
                         Q23 => load_reg23,
                         Q24 => load_reg24,
                         Q25 => load_reg25,
                         Q26 => load_reg26,
                         Q27 => load_reg27,
                         Q28 => load_reg28,
                         Q29 => load_reg29,
                         Q30 => load_reg30,
                         Q31 => load_reg31 );
                         
          
                        
          --32 to 1 32b multiplexer
          Inst_mux32_1: Mux32_1_32b_20332090  PORT MAP (
                       MuxA_in0 => reg_q0,
                       MuxA_in1 => reg_q1,
                       MuxA_in2 => reg_q2,
                       MuxA_in3 => reg_q3,
                       MuxA_in4 => reg_q4,
                       MuxA_in5 => reg_q5,
                       MuxA_in6 => reg_q6,
                       MuxA_in7 => reg_q7,
                       MuxA_in8 => reg_q8,
                       MuxA_in9 => reg_q9,
                       MuxA_in10 => reg_q10,
                       MuxA_in11 => reg_q11,
                       MuxA_in12 => reg_q12,
                       MuxA_in13 => reg_q13,
                       MuxA_in14 => reg_q14,
                       MuxA_in15 => reg_q15,
                       MuxA_in16 => reg_q16,
                       MuxA_in17 => reg_q17,
                       MuxA_in18 => reg_q18,
                       MuxA_in19 => reg_q19,
                       MuxA_in20 => reg_q20,
                       MuxA_in21 => reg_q21,
                       MuxA_in22 => reg_q22,
                       MuxA_in23 => reg_q23,
                       MuxA_in24 => reg_q24,
                       MuxA_in25 => reg_q25,
                       MuxA_in26 => reg_q26,
                       MuxA_in27 => reg_q27,
                       MuxA_in28 => reg_q28,
                       MuxA_in29 => reg_q29,
                       MuxA_in30 => reg_q30,
                       MuxA_in31 => reg_q31,
                       MuxASelect(0) => AddressA(0),
                        MuxASelect(1) => AddressA(1),
                        MuxASelect(2) => AddressA(2),
                        MuxASelect(3) => AddressA(3),
                        MuxASelect(4) => AddressA(4),
                       MuxA_Out => Aoutput );
                       
            --32 to 1 32b multiplexer
          Inst_mux32_1_2: Mux32_1_32b_20332090  PORT MAP (
                       MuxA_in0 => reg_q0,
                       MuxA_in1 => reg_q1,
                       MuxA_in2 => reg_q2,
                       MuxA_in3 => reg_q3,
                       MuxA_in4 => reg_q4,
                       MuxA_in5 => reg_q5,
                       MuxA_in6 => reg_q6,
                       MuxA_in7 => reg_q7,
                       MuxA_in8 => reg_q8,
                       MuxA_in9 => reg_q9,
                       MuxA_in10 => reg_q10,
                       MuxA_in11 => reg_q11,
                       MuxA_in12 => reg_q12,
                       MuxA_in13 => reg_q13,
                       MuxA_in14 => reg_q14,
                       MuxA_in15 => reg_q15,
                       MuxA_in16 => reg_q16,
                       MuxA_in17 => reg_q17,
                       MuxA_in18 => reg_q18,
                       MuxA_in19 => reg_q19,
                       MuxA_in20 => reg_q20,
                       MuxA_in21 => reg_q21,
                       MuxA_in22 => reg_q22,
                       MuxA_in23 => reg_q23,
                       MuxA_in24 => reg_q24,
                       MuxA_in25 => reg_q25,
                       MuxA_in26 => reg_q26,
                       MuxA_in27 => reg_q27,
                       MuxA_in28 => reg_q28,
                       MuxA_in29 => reg_q29,
                       MuxA_in30 => reg_q30,
                       MuxA_in31 => reg_q31,
                       MuxASelect(0) => AddressB(0),
                       MuxASelect(1) => AddressB(1),
                       MuxASelect(2) => AddressB(2),
                       MuxASelect(3) => AddressB(3),
                       MuxASelect(4) => AddressB(4),
                        MuxA_Out => Boutput );           
                
end Behavioral;
