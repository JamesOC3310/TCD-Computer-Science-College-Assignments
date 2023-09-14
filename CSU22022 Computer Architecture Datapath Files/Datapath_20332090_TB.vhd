----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2021 02:33:46 AM
-- Design Name: 
-- Module Name: Datapath_20332090_TB - Behavioral
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

entity Datapath_20332090_TB is
end;

architecture bench of Datapath_20332090_TB is

  component Datapath_20332090
    Port ( data_in, constant_in : in std_logic_vector(31 downto 0);
          load_enabled, mux_b_s, mux_d_s, Clk : in std_logic;
          src_a, src_b, FSelect : in std_logic_vector(4 downto 0);
           des_A0_d, des_A1_d, des_A2_d, des_A3_d, des_A4_d : in std_logic;
          data_out, address_out : out std_logic_vector(31 downto 0);
          c, v, n, z : out std_logic);
  end component;

  signal data_in, constant_in: std_logic_vector(31 downto 0) := (others => '0');
  signal load_enabled, mux_b_s, mux_d_s, Clk: std_logic := '0';
  signal src_a, src_b, FSelect: std_logic_vector(4 downto 0) := (others => '0');
  signal des_A0_d, des_A1_d, des_A2_d, des_A3_d, des_A4_d : std_logic := '0';
  signal data_out, address_out: std_logic_vector(31 downto 0);
  signal c, v, n, z: std_logic;
  
  constant Clk_period : time := 5 ns;
  signal stop_clock : boolean;

begin

  uut: Datapath_20332090 port map ( data_in      => data_in,
                                    constant_in  => constant_in,
                                    load_enabled => load_enabled,
                                    mux_b_s      => mux_b_s,
                                    mux_d_s      => mux_d_s,
                                    Clk          => Clk,
                                    src_a        => src_a,
                                    src_b        => src_b,
                                    des_A0_d       => des_A0_d,
                                    des_A1_d       => des_A1_d,
                                    des_A2_d       => des_A2_d,
                                    des_A3_d       => des_A3_d,
                                    des_A4_d       => des_A4_d,
                                    FSelect     => FSelect,
                                    data_out     => data_out,
                                    address_out  => address_out,
                                    c            => c,
                                    v            => v,
                                    n            => n,
                                    z            => z );
                                    
         clocking: process
         begin
            while not stop_clock loop
                Clk <= '0', '1' after Clk_period / 2;
                    wait for Clk_period;
                end loop;
              wait;
         end process;                                    
                                    
                                    

  stimulus: process
  begin
  
  --wait for 900 ns;
  load_enabled <= '1';
  
  mux_d_s <= '1';  
  
  data_in <= x"20332090";
  
  wait for 900 ns;
  
  des_A0_d <= '0';
  des_A1_d <= '0';              
  des_A2_d <= '0';
  des_A3_d <= '0';
  des_A4_d <= '0';
  
  wait for 900 ns;
  
  data_in <= x"20332089";
  
  wait for 900 ns;
  
  des_A0_d <= '1';
  des_A1_d<= '0';
  des_A2_d<= '0';
  des_A3_d<= '0';
  des_A4_d<= '0';  
  
  wait for 900 ns;
  
  data_in <= x"20332088";
  
  wait for 900 ns;
  
  des_A0_d<= '0';
  des_A1_d<= '1';
  des_A2_d<= '0';
  des_A3_d<= '0';
  des_A4_d<= '0';  
  
  wait for 900 ns;
  
  data_in <= x"20332087";
  
  wait for 900 ns;
  
           des_A0_d <= '1';
  des_A1_d<= '1';
  des_A2_d<= '0';
  des_A3_d<= '0';
  des_A4_d<= '0';
  
  wait for 900 ns;
  
  data_in <= x"20332086";
  
  wait for 900 ns;
  
           des_A0_d <= '0';
  des_A1_d<= '0';
  des_A2_d<= '1';
  des_A3_d<= '0';
  des_A4_d<= '0';
  
  wait for 900 ns;
  
  data_in <= x"20332085";
  
  wait for 900 ns;
  
           des_A0_d <= '1';
  des_A1_d<= '0';
  des_A2_d<= '1';
  des_A3_d<= '0';
  des_A4_d<= '0';           
  
  wait for 900 ns;
  
  data_in <= x"20332084";
  
  wait for 900 ns;
  
           des_A0_d <= '0';
  des_A1_d<= '1';
  des_A2_d<= '1';
  des_A3_d<= '0';
  des_A4_d<= '0';           
  
  wait for 900 ns;
  
  data_in <= x"20332083";
  
  wait for 900 ns;
  
           des_A0_d <= '1';
  des_A1_d<= '1';
  des_A2_d<= '1';
  des_A3_d<= '0';
  des_A4_d<= '0';           
  
  wait for 900 ns;
  
  data_in <= x"20332082";
  
  wait for 900 ns;
  
           des_A0_d <= '0';
  des_A1_d<= '0';
  des_A2_d<= '0';
  des_A3_d<= '1';
  des_A4_d<= '0';           
  
  wait for 900 ns;
  
  data_in <= x"20332081";
  
  wait for 900 ns;
  
           des_A0_d <= '1';
  des_A1_d<= '0';
  des_A2_d<= '0';
  des_A3_d<= '1';
  des_A4_d<= '0';
  
  wait for 900 ns;
  
  data_in <= x"20332080";
  
  wait for 900 ns;
  
           des_A0_d <= '0';
  des_A1_d<= '1';
  des_A2_d<= '0';
  des_A3_d<= '1';
  des_A4_d<= '0';           
  
  wait for 900 ns;
  
  data_in <= x"20332079";
  
  wait for 900 ns;
  
           des_A0_d <= '1';
  des_A1_d<= '1';
  des_A2_d<= '0';
  des_A3_d<= '1';
  des_A4_d<= '0';
  
  wait for 900 ns;
  
  data_in <= x"20332078";
  
  wait for 900 ns;
  
  des_A0_d<= '0';
  des_A1_d<= '0';
  des_A2_d<= '1';
  des_A3_d<= '1';
  des_A4_d<= '0';
  
  wait for 900 ns;
  
  data_in <= x"20332077";
  
  wait for 900 ns;
  
  des_A0_d<= '1';
  des_A1_d<= '0';
  des_A2_d<= '1';
  des_A3_d<= '1';
  des_A4_d<= '0';
  
  wait for 900 ns;
  
  data_in <= x"20332076";
  
  wait for 900 ns;
  
  des_A0_d<= '0';
  des_A1_d<= '1';
  des_A2_d<= '1';
  des_A3_d<= '1';
  des_A4_d<= '0';
  
  wait for 2900 ns;
  
   data_in <= x"20332075";
   
   wait for 900 ns;
   
  des_A0_d<= '1';
  des_A1_d<= '1';
  des_A2_d<= '1';
  des_A3_d<= '1';
  des_A4_d<= '0';
  
  wait for 900 ns;
  
  data_in <= x"20332074";
  
  wait for 900 ns;
  
  des_A0_d<= '0';
  des_A1_d<= '0';
  des_A2_d<= '0';
  des_A3_d<= '0';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332073";
  
  wait for 900 ns;
  
  des_A0_d<= '1';
  des_A1_d<= '0';
  des_A2_d<= '0';
  des_A3_d<= '0';
  des_A4_d<= '1';
  
  wait for 20 ns;
  
  data_in <= x"20332072";
  
  wait for 900 ns;
  
  des_A0_d<= '0';
  des_A1_d<= '1';
  des_A2_d<= '0';
  des_A3_d<= '0';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332071";
  
  wait for 900 ns;
  
  des_A0_d<= '1';
  des_A1_d<= '1';
  des_A2_d<= '0';
  des_A3_d<= '0';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332070";
  
  wait for 900 ns;
  
  des_A0_d<= '0';
  des_A1_d<= '0';
  des_A2_d<= '1';
  des_A3_d<= '0';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332069";
  
  wait for 900 ns;
  
  des_A0_d<= '1';
  des_A1_d<= '0';
  des_A2_d<= '1';
  des_A3_d<= '0';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332068";
  
  wait for 900 ns;
  
  des_A0_d<= '0';
  des_A1_d<= '1';
  des_A2_d<= '1';
  des_A3_d<= '0';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332067";
  
  wait for 900 ns;
  
  des_A0_d<= '1';
  des_A1_d<= '1';
  des_A2_d<= '1';
  des_A3_d<= '0';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332066";
  
  wait for 900 ns;
  
  des_A0_d<= '0';
  des_A1_d<= '0';
  des_A2_d<= '0';
  des_A3_d<= '1';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332065";
  
  wait for 900 ns;
  
  des_A0_d<= '1';
  des_A1_d<= '0';
  des_A2_d<= '0';
  des_A3_d<= '1';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332064";
  
  wait for 900 ns;
  
  des_A0_d<= '0';
  des_A1_d<= '1';
  des_A2_d<= '0';
  des_A3_d<= '1';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332063";
  
  wait for 900 ns;
  
  des_A0_d<= '1';
  des_A1_d<= '1';
  des_A2_d<= '0';
  des_A3_d<= '1';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332062";
  
  wait for 900 ns;
    
  des_A0_d<= '0';
  des_A1_d<= '0';
  des_A2_d<= '1';
  des_A3_d<= '1';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332061";
  
  wait for 900 ns;
  
  des_A0_d<= '1';
  des_A1_d<= '0';
  des_A2_d<= '1';
  des_A3_d<= '1';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332060";
  
  wait for 900 ns;
  
  des_A0_d<= '0';
  des_A1_d<= '1';
  des_A2_d<= '1';
  des_A3_d<= '1';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  data_in <= x"20332059";
  
  wait for 900 ns;
  
  des_A0_d<= '1';
  des_A1_d<= '1';
  des_A2_d<= '1';
  des_A3_d<= '1';
  des_A4_d<= '1';
  
  wait for 900 ns;
  
  mux_b_s <= '0';
  mux_d_s <= '0';
                      
  des_A0_d<= '0';
  des_A1_d<= '1';
  des_A2_d<= '0';
  des_A3_d<= '0';
  des_A4_d<= '0';  
  
  
  src_a <= "00101";
  src_b <= "01111";    
  
FSelect <= "00000";   --1st
wait for 900 ns;
     
FSelect <= "11000";     --2nd
wait for 900 ns;

FSelect <= "00001";     --3rd
wait for 900 ns;

FSelect <= "01000";      --4th
wait for 900 ns;

--FSelect <= "00100";      --5th
FSelect <= "00010"; 
wait for 900 ns;

FSelect <= "10000";      --6th
wait for 900 ns;

--FSelect <= "00101";       --7th
FSelect <= "00011";
wait for 900 ns;

FSelect <= "10100";        --8th
wait for 900 ns;

-- FSelect <= "01110";        --9th
FSelect <= "00100";        --9th
wait for 900 ns;

FSelect <= "01110";        --10th
--FSelect <= "00110";        --10th
wait for 900 ns;

FSelect <= "00111";        --11th
wait for 900 ns;

--FSelect <= "01010";        --12th
FSelect <= "01100";        --12th
wait for 900 ns;

--FSelect <= "00011";        --13th
FSelect <= "00110";
wait for 900 ns;

--FSelect <= "01100";
--FSelect <= "00101";        --14th
FSelect <= "00101";
wait for 900 ns;

FSelect <= "01010";         --15th
 --FSelect <= "00110";     
 wait for 900 ns;
 
 mux_b_s <= '1';
 constant_in <= x"20332090";   
 
 wait for 900 ns;
 
FSelect <= "00000";   --1st
 wait for 900 ns;
      
 FSelect <= "11000";     --2nd
 wait for 900 ns;
 
 FSelect <= "00001";     --3rd
 wait for 900 ns;
 
 FSelect <= "01000";      --4th
 wait for 900 ns;
 
 --FSelect <= "00100";      --5th
 FSelect <= "00010"; 
 wait for 900 ns;
 
 FSelect <= "10000";      --6th
 wait for 900 ns;
 
 --FSelect <= "00101";       --7th
 FSelect <= "00011";
 wait for 900 ns;
 
 FSelect <= "10100";        --8th
 wait for 900 ns;
 
 -- FSelect <= "01110";        --9th
 FSelect <= "00100";        --9th 
      


    wait;
  end process;


end;
