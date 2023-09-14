----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2021 11:29:15 AM
-- Design Name: 
-- Module Name: Mux32_1_32b_20332090_TB - Behavioral
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Mux32_1_32b_20332090_TB is
end;

architecture bench of Mux32_1_32b_20332090_TB is

  component Mux32_1_32b_20332090
    Port ( MuxA_in0 : in std_logic_vector (31 downto 0);
           MuxA_in1 : in std_logic_vector (31 downto 0);
           MuxA_in2 : in std_logic_vector (31 downto 0);
           MuxA_in3 : in std_logic_vector (31 downto 0);
           MuxA_in4 : in std_logic_vector (31 downto 0);
           MuxA_in5 : in std_logic_vector (31 downto 0);
           MuxA_in6 : in std_logic_vector (31 downto 0);
           MuxA_in7 : in std_logic_vector (31 downto 0);
           MuxA_in8 : in std_logic_vector (31 downto 0);
           MuxA_in9 : in std_logic_vector (31 downto 0);
           MuxA_in10 : in std_logic_vector (31 downto 0);
           MuxA_in11 : in std_logic_vector (31 downto 0);
           MuxA_in12 : in std_logic_vector (31 downto 0);
           MuxA_in13 : in std_logic_vector (31 downto 0);
           MuxA_in14 : in std_logic_vector (31 downto 0);
           MuxA_in15 : in std_logic_vector (31 downto 0);
           MuxA_in16 : in std_logic_vector (31 downto 0);
           MuxA_in17 : in std_logic_vector (31 downto 0);
           MuxA_in18 : in std_logic_vector (31 downto 0);
           MuxA_in19 : in std_logic_vector (31 downto 0);
           MuxA_in20 : in std_logic_vector (31 downto 0);
           MuxA_in21 : in std_logic_vector (31 downto 0);
           MuxA_in22 : in std_logic_vector (31 downto 0);
           MuxA_in23 : in std_logic_vector (31 downto 0);
           MuxA_in24 : in std_logic_vector (31 downto 0);
           MuxA_in25 : in std_logic_vector (31 downto 0);
           MuxA_in26 : in std_logic_vector (31 downto 0);
           MuxA_in27 : in std_logic_vector (31 downto 0);
           MuxA_in28 : in std_logic_vector (31 downto 0);
           MuxA_in29 : in std_logic_vector (31 downto 0);
           MuxA_in30 : in std_logic_vector (31 downto 0);
           MuxA_in31 : in std_logic_vector (31 downto 0);
           MuxASelect : in std_logic_vector (4 downto 0);
           MuxA_Out : out std_logic_vector (31 downto 0) );
  end component;

  signal MuxA_in0: std_logic_vector (31 downto 0);
  signal MuxA_in1: std_logic_vector (31 downto 0);
  signal MuxA_in2: std_logic_vector (31 downto 0);
  signal MuxA_in3: std_logic_vector (31 downto 0);
  signal MuxA_in4: std_logic_vector (31 downto 0);
  signal MuxA_in5: std_logic_vector (31 downto 0);
  signal MuxA_in6: std_logic_vector (31 downto 0);
  signal MuxA_in7: std_logic_vector (31 downto 0);
  signal MuxA_in8: std_logic_vector (31 downto 0);
  signal MuxA_in9: std_logic_vector (31 downto 0);
  signal MuxA_in10: std_logic_vector (31 downto 0);
  signal MuxA_in11: std_logic_vector (31 downto 0);
  signal MuxA_in12: std_logic_vector (31 downto 0);
  signal MuxA_in13: std_logic_vector (31 downto 0);
  signal MuxA_in14: std_logic_vector (31 downto 0);
  signal MuxA_in15: std_logic_vector (31 downto 0);
  signal MuxA_in16: std_logic_vector (31 downto 0);
  signal MuxA_in17: std_logic_vector (31 downto 0);
  signal MuxA_in18: std_logic_vector (31 downto 0);
  signal MuxA_in19: std_logic_vector (31 downto 0);
  signal MuxA_in20: std_logic_vector (31 downto 0);
  signal MuxA_in21: std_logic_vector (31 downto 0);
  signal MuxA_in22: std_logic_vector (31 downto 0);
  signal MuxA_in23: std_logic_vector (31 downto 0);
  signal MuxA_in24: std_logic_vector (31 downto 0);
  signal MuxA_in25: std_logic_vector (31 downto 0);
  signal MuxA_in26: std_logic_vector (31 downto 0);
  signal MuxA_in27: std_logic_vector (31 downto 0);
  signal MuxA_in28: std_logic_vector (31 downto 0);
  signal MuxA_in29: std_logic_vector (31 downto 0);
  signal MuxA_in30: std_logic_vector (31 downto 0);
  signal MuxA_in31: std_logic_vector (31 downto 0);
  signal MuxASelect: std_logic_vector (4 downto 0);
  signal MuxA_Out: std_logic_vector (31 downto 0) ;

begin

  uut: Mux32_1_32b_20332090 port map ( MuxA_in0   => MuxA_in0,
                                       MuxA_in1   => MuxA_in1,
                                       MuxA_in2   => MuxA_in2,
                                       MuxA_in3   => MuxA_in3,
                                       MuxA_in4   => MuxA_in4,
                                       MuxA_in5   => MuxA_in5,
                                       MuxA_in6   => MuxA_in6,
                                       MuxA_in7   => MuxA_in7,
                                       MuxA_in8   => MuxA_in8,
                                       MuxA_in9   => MuxA_in9,
                                       MuxA_in10  => MuxA_in10,
                                       MuxA_in11  => MuxA_in11,
                                       MuxA_in12  => MuxA_in12,
                                       MuxA_in13  => MuxA_in13,
                                       MuxA_in14  => MuxA_in14,
                                       MuxA_in15  => MuxA_in15,
                                       MuxA_in16  => MuxA_in16,
                                       MuxA_in17  => MuxA_in17,
                                       MuxA_in18  => MuxA_in18,
                                       MuxA_in19  => MuxA_in19,
                                       MuxA_in20  => MuxA_in20,
                                       MuxA_in21  => MuxA_in21,
                                       MuxA_in22  => MuxA_in22,
                                       MuxA_in23  => MuxA_in23,
                                       MuxA_in24  => MuxA_in24,
                                       MuxA_in25  => MuxA_in25,
                                       MuxA_in26  => MuxA_in26,
                                       MuxA_in27  => MuxA_in27,
                                       MuxA_in28  => MuxA_in28,
                                       MuxA_in29  => MuxA_in29,
                                       MuxA_in30  => MuxA_in30,
                                       MuxA_in31  => MuxA_in31,
                                       MuxASelect => MuxASelect,
                                       MuxA_Out   => MuxA_Out );

  stimulus: process
  begin
  MuxA_in0 <= x"20332090";
  MuxA_in1 <= x"20332089";
  MuxA_in2 <= x"20332088";
  MuxA_in3  <= x"20332087";
  MuxA_in4  <= x"20332086";
  MuxA_in5  <= x"20332085";
  MuxA_in6  <= x"20332084";
  MuxA_in7  <= x"20332083";
  MuxA_in8  <= x"20332082";
  MuxA_in9  <= x"20332081";
  MuxA_in10 <= x"20332080";
  MuxA_in11  <= x"20332079";
  MuxA_in12  <= x"20332078";
  MuxA_in13  <= x"20332077";
  MuxA_in14  <= x"20332076";
  MuxA_in15  <= x"20332075";
  MuxA_in16  <= x"20332074";
  MuxA_in17  <= x"20332073";
  MuxA_in18  <= x"20332072";
  MuxA_in19  <= x"20332071";
  MuxA_in20  <= x"20332070";
  MuxA_in21  <= x"20332069";
  MuxA_in22  <= x"20332068";
  MuxA_in23  <= x"20332067";
  MuxA_in24  <= x"20332066";
  MuxA_in25  <= x"20332065";
  MuxA_in26  <= x"20332064";
  MuxA_in27  <= x"20332063";
  MuxA_in28  <= x"20332062";
  MuxA_in29  <= x"20332061";
  MuxA_in30  <= x"20332060";
  MuxA_in31   <= x"20332059";
  
  MuxASelect <= "00000";
  wait for 10 ns;
  
  MuxASelect <= "00001";
  wait for 10 ns;
  
  MuxASelect <= "00010";
  wait for 10 ns;
  
  MuxASelect <= "00011";
  wait for 10 ns;
  
  MuxASelect <= "00100";
  wait for 10 ns;      
  
  MuxASelect <= "00101";
  wait for 10 ns;
  
  MuxASelect <= "00110";
  wait for 10 ns;
  
  MuxASelect <= "00111";
  wait for 10 ns;
  
  MuxASelect <= "01000";
  wait for 10 ns;
  
  MuxASelect <= "01001";
  wait for 10 ns;
  
  MuxASelect <= "01010";
  wait for 10 ns;
  
  MuxASelect <= "01011";
  wait for 10 ns;
  
  MuxASelect <= "01100";
  wait for 10 ns;
  
  MuxASelect <= "01101";
  wait for 10 ns;
  
  MuxASelect <= "01110";
  wait for 10 ns;
  
  MuxASelect <= "01111";
  wait for 10 ns;
  
  MuxASelect <= "10000";
  wait for 10 ns;
  
  MuxASelect <= "10001";
  wait for 10 ns;
  
  MuxASelect <= "10010";
  wait for 10 ns;
  
  MuxASelect <= "10011";
  wait for 10 ns;
  
  MuxASelect <= "10100";
  wait for 10 ns;
  
  MuxASelect <= "10101";
  wait for 10 ns;
  
  MuxASelect <= "10110";
  wait for 10 ns;
  
  MuxASelect <= "10111";
  wait for 10 ns;
  
  MuxASelect <= "11000";
  wait for 10 ns;
  
  MuxASelect <= "11001";
  wait for 10 ns;
  
  MuxASelect <= "11010";
  wait for 10 ns;
  
  MuxASelect <= "11011";
  wait for 10 ns;
  
  MuxASelect <= "11100";
  wait for 10 ns;
  
  MuxASelect <= "11101";
  wait for 10 ns;
  
  MuxASelect <= "11110";
  wait for 10 ns;
  
  MuxASelect <= "11111"; 
    


    -- Put test bench stimulus code here

    wait;
  end process;


end;