----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/03/2022 03:08:30 PM
-- Design Name: 
-- Module Name: Microprocessor_1st_20332090_TB - Behavioral
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
--use IEEE.Numeric_Std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Microprocessor_1st_20332090_tb is
end;

architecture bench of Microprocessor_1st_20332090_tb is

  component Microprocessor_1st_20332090
    Port ( instruction_in : in  STD_LOGIC_VECTOR (31 downto 0);
  			  Reset : in STD_LOGIC;
             V : out  STD_LOGIC;
             C : out  STD_LOGIC;
             N : out  STD_LOGIC;
             Z : out  STD_LOGIC;
  		   Clk : in STD_LOGIC;
             DR : in  STD_LOGIC_VECTOR (4 downto 0);
             SA : in  STD_LOGIC_VECTOR (4 downto 0);
             SB : in  STD_LOGIC_VECTOR (4 downto 0);
             TD : in  STD_LOGIC;
             TA : in  STD_LOGIC;
             TB : in  STD_LOGIC;
             MB : in  STD_LOGIC;
             FS : in std_logic_vector (4 downto 0);
             MD : in  STD_LOGIC;
             RW : in  STD_LOGIC;
             MM : in  STD_LOGIC;
             MW : in  STD_LOGIC;
             MemoryData_Out : inout std_logic_vector (31 downto 0)  ); 
  end component;

  signal instruction_in: STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
  signal Reset: STD_LOGIC := '0';
  signal V: STD_LOGIC := '0';
  signal C: STD_LOGIC := '0';
  signal N: STD_LOGIC := '0';
  signal Z: STD_LOGIC := '0';
  signal Clk: STD_LOGIC := '0';
  signal DR: STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
  signal SA: STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
  signal SB: STD_LOGIC_VECTOR (4 downto 0) := (others => '0');
  signal TD: STD_LOGIC := '0';
  signal TA: STD_LOGIC := '0';
  signal TB: STD_LOGIC := '0';
  signal MB: STD_LOGIC := '0';
  signal FS: std_logic_vector (4 downto 0) := (others => '0');
  signal MD: STD_LOGIC := '0';
  signal RW: STD_LOGIC := '0';
  signal MM: STD_LOGIC := '0';
  signal MW: STD_LOGIC := '0';
  signal MemoryData_Out: std_logic_vector (31 downto 0) := (others => '0');
  
  signal MuxM_Out : std_logic_vector (31 downto 0) := (others => '0');
   signal Memory_enabled : std_logic := '0';
   signal Mux_B_Output : std_logic_vector (31 downto 0) := (others => '0');
   signal datapath_to_MuxM, MuxM_to_Memory, datapath_to_Memory, MuxD_to_datapath,
    ZeroFill_to_MuxB, PC, Memory_to_MuxD : std_logic_vector (31 downto 0) := (others => '0');
   signal Mux_M : std_logic := '0';
   
   --datapath signals
   signal data_in, constant_in : std_logic_vector(31 downto 0) := (others => '0');
   signal Register_enable, MuxB_select, MuxD_select : std_logic := '0';
   signal src_a, src_b, FSelect : std_logic_vector(4 downto 0) := (others => '0');
   signal des_A0_d, des_A1_d, des_A2_d, des_A3_d, des_A4_d : std_logic := '0';
   signal data_out, address_out : std_logic_vector(31 downto 0);
   signal c_out, v_out, n_out, z_out : std_logic;
   
   --Memory Module
   signal address: std_logic_vector(31 downto 0) := (others => '0');
   signal write_data: std_logic_vector(31 downto 0) := (others => '0');
   signal write_enable: std_logic;
   signal Clock: std_logic;
   signal read_data: std_logic_vector(31 downto 0);
  
  
  
  
  
  
  
  
  constant Clk_period : time := 300 ns;
    signal stop_clock : boolean;

begin

  uut: Microprocessor_1st_20332090 port map ( instruction_in => instruction_in,
                                              Reset          => Reset,
                                              V              => V,
                                              C              => C,
                                              N              => N,
                                              Z              => Z,
                                              Clk            => Clk,
                                              DR             => DR,
                                              SA             => SA,
                                              SB             => SB,
                                              TD             => TD,
                                              TA             => TA,
                                              TB             => TB,
                                              MB             => MB,
                                              FS             => FS,
                                              MD             => MD,
                                              RW             => RW,
                                              MM             => MM,
                                              MW             => MW,
                                              MemoryData_Out => MemoryData_Out );
                                              

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
  
   RW <= '1';
   
   FS <= "00000";
   
   wait for 900 ns;
   Register_enable <= '1';
   
   MuxD_select <= '1';  
   
  instruction_in <= x"20332090";
   
   --wait for 900 ns;
   
   DR(0) <= '0';
   DR(0) <= '0';              
   DR(0) <= '0';
   DR(0) <= '0';
   DR(0) <= '0';
   
   wait for 900 ns;
   
   instruction_in <= x"20332089";
   
   --wait for 900 ns;
   
   DR(0) <= '1';
   DR(0)<= '0';
   DR(0)<= '0';
   DR(0)<= '0';
   DR(0)<= '0';  
   
   --wait for 900 ns;
   
   instruction_in <= x"20332088";
   
   --wait for 900 ns;
   
   DR(0)<= '0';
   DR(0)<= '1';
   DR(0)<= '0';
   DR(0)<= '0';
   DR(0)<= '0';  
   
   wait for 900 ns;
   
   instruction_in <= x"20332087";
   
   --wait for 900 ns;
   
   DR(0) <= '1';
   DR(0)<= '1';
   DR(0)<= '0';
   DR(0)<= '0';
   DR(0)<= '0';
   
   wait for 900 ns;
   
   instruction_in <= x"20332086";
   
   --wait for 900 ns;
   
   DR(0) <= '0';
   DR(1)<= '0';
   DR(2)<= '1';
   DR(3)<= '0';
   DR(4)<= '0';
   
   wait for 900 ns;
   
   instruction_in <= x"20332085";
   
   --wait for 900 ns;
   
   DR(0) <= '1';
   DR(1)<= '0';
   DR(2)<= '1';
   DR(3)<= '0';
   DR(4)<= '0';           
   
   wait for 900 ns;
   
   instruction_in <= x"20332084";
   
  -- wait for 900 ns;
   
   DR(0) <= '0';
   DR(0)<= '1';
   DR(0)<= '1';
   DR(0)<= '0';
   DR(0)<= '0';           
   
   wait for 900 ns;
   
  instruction_in <= x"20332083";
   
   --wait for 900 ns;
   
   DR(0) <= '1';
   DR(0)<= '1';
   DR(0)<= '1';
   DR(0)<= '0';
   DR(0)<= '0';           
   
   wait for 900 ns;
   
   instruction_in <= x"20332082";
   
   --wait for 900 ns;
   
   DR(0) <= '0';
   DR(0)<= '0';
   DR(0)<= '0';
   DR(0)<= '1';
   DR(0)<= '0';           
   
   wait for 900 ns;
   
   instruction_in <= x"20332081";
   
   --wait for 900 ns;
   
   DR(0) <= '1';
   DR(1)<= '0';
   DR(2)<= '0';
   DR(3)<= '1';
   DR(4)<= '0';
   
   wait for 900 ns;
   
   instruction_in <= x"20332080";
   
   --wait for 900 ns;
   
   DR(0) <= '0';
   DR(1)<= '1';
   DR(2)<= '0';
   DR(3)<= '1';
   DR(4)<= '0';           
   
   wait for 900 ns;
   
   instruction_in <= x"20332079";
   
   --wait for 900 ns;
   
   DR(0) <= '1';
   DR(1)<= '1';
   DR(2)<= '0';
   DR(3)<= '1';
   DR(4)<= '0';
   
   wait for 900 ns;
   
   instruction_in <= x"20332078";
   
   --wait for 900 ns;
   
   DR(0)<= '0';
   DR(1)<= '0';
   DR(2)<= '1';
   DR(3)<= '1';
   DR(4)<= '0';
   
   wait for 900 ns;
   
   instruction_in <= x"20332077";
   
   --wait for 900 ns;
   
   DR(0)<= '1';
   DR(1)<= '0';
   DR(2)<= '1';
   DR(3)<= '1';
   DR(4)<= '0';
   
   wait for 900 ns;
   
   instruction_in <= x"20332076";
   
   --wait for 900 ns;
   
   DR(0)<= '0';
   DR(1)<= '1';
   DR(2)<= '1';
   DR(3)<= '1';
   DR(4)<= '0';
   
   wait for 2900 ns;
   
    instruction_in <= x"20332075";
    
    --wait for 900 ns;
    
   DR(0)<= '1';
   DR(1)<= '1';
   DR(2)<= '1';
   DR(3)<= '1';
   DR(4)<= '0';
   
   wait for 900 ns;
   
   instruction_in <= x"20332074";
   
   --wait for 900 ns;
   
   DR(0)<= '0';
   DR(1)<= '0';
   DR(2)<= '0';
   DR(3)<= '0';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332073";
   
   --wait for 900 ns;
   
   DR(0)<= '1';
   DR(1)<= '0';
   DR(2)<= '0';
   DR(3)<= '0';
   DR(4)<= '1';
   
   wait for 20 ns;
   
   instruction_in <= x"20332072";
   
   --wait for 900 ns;
   
   DR(0)<= '0';
   DR(1)<= '1';
   DR(2)<= '0';
   DR(3)<= '0';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332071";
   
   --wait for 900 ns;
   
   DR(0)<= '1';
   DR(1)<= '1';
   DR(2)<= '0';
   DR(3)<= '0';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332070";
   
  -- wait for 900 ns;
   
   DR(0)<= '0';
   DR(1)<= '0';
   DR(2)<= '1';
   DR(3)<= '0';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332069";
   
   --wait for 900 ns;
   
   DR(0)<= '1';
   DR(1)<= '0';
   DR(2)<= '1';
   DR(3)<= '0';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332068";
   
   --wait for 900 ns;
   
   DR(0)<= '0';
   DR(1)<= '1';
   DR(2)<= '1';
   DR(3)<= '0';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332067";
   
   --wait for 900 ns;
   
   DR(0)<= '1';
   DR(1)<= '1';
   DR(2)<= '1';
   DR(3)<= '0';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332066";
   
   --wait for 900 ns;
   
   DR(0)<= '0';
   DR(1)<= '0';
   DR(2)<= '0';
   DR(3)<= '1';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332065";
   
   --wait for 900 ns;
   
   DR(0)<= '1';
   DR(1)<= '0';
   DR(2)<= '0';
   DR(3)<= '1';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332064";
   
   --wait for 900 ns;
   
   DR(0)<= '0';
   DR(1)<= '1';
   DR(2)<= '0';
   DR(3)<= '1';
   DR(4)<= '1';
   
   wait for 900 ns;
   
  instruction_in <= x"20332063";
   
   --wait for 900 ns;
   
   DR(0)<= '1';
   DR(1)<= '1';
   DR(2)<= '0';
   DR(3)<= '1';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332062";
   
   --wait for 900 ns;
     
   DR(0)<= '0';
   DR(1)<= '0';
   DR(2)<= '1';
   DR(3)<= '1';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332061";
   
   --wait for 900 ns;
   
   DR(0)<= '1';
   DR(1)<= '0';
   DR(2)<= '1';
   DR(3)<= '1';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332060";
   
   --wait for 900 ns;
   
   DR(0)<= '0';
   DR(1)<= '1';
   DR(2)<= '1';
   DR(3)<= '1';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   instruction_in <= x"20332059";
   
   --wait for 900 ns;
   
   TB <= '1';
   TD <= '1';
   TA <= '1';
   
  -- wait for 900 ns;
   
  instruction_in <= x"20332058";
   
    wait for 900 ns;
   
   TB <= '0';
   TD <= '0';
   TA <= '0';  
   
   wait for 900 ns;
   
   DR(0)<= '1';
   DR(1)<= '1';
   DR(2)<= '1';
   DR(3)<= '1';
   DR(4)<= '1';
   
   wait for 900 ns;
   
   MuxB_select <= '0';
   MuxD_select <= '0';
                       
   DR(0)<= '0';
   DR(1)<= '1';
   DR(2)<= '0';
   DR(3)<= '0';
   DR(4)<= '0';  
   
   
   SA <= "00101";
   SB <= "01111";    
   
 FS <= "00000";   --1st
 wait for 900 ns;
      
 FS <= "11000";     --2nd
 wait for 900 ns;
 
 FS <= "00001";     --3rd
 wait for 900 ns;
 
 FS <= "01000";      --4th
 wait for 900 ns;
 
 --FSelect <= "00100";      --5th
 FS <= "00010"; 
 wait for 900 ns;
 
 FS <= "10000";      --6th
 wait for 900 ns;
 
 --FSelect <= "00101";       --7th
 FS <= "00011";
 wait for 900 ns;
 
 FS <= "10100";        --8th
 wait for 900 ns;
 
 -- FSelect <= "01110";        --9th
 FS <= "00100";        --9th
 wait for 900 ns;
 
 FS <= "01110";        --10th
 --FSelect <= "00110";        --10th
 wait for 900 ns;
 
 FS <= "00111";        --11th
 wait for 900 ns;
 
 --FSelect <= "01010";        --12th
 FS <= "01100";        --12th
 wait for 900 ns;
 
 --FSelect <= "00011";        --13th
 FS <= "00110";
 wait for 900 ns;
 
 --FSelect <= "01100";
 --FSelect <= "00101";        --14th
 FS <= "00101";
 wait for 900 ns;
 
 FS <= "01010";         --15th
  --FSelect <= "00110";     
  --wait for 900 ns;
  
  MuxB_select <= '1';
  ZeroFill_to_MuxB <= x"20332090";   
  
  wait for 900 ns;
  
 FS <= "00000";   --1st
  wait for 900 ns;
       
  FS <= "11000";     --2nd
  wait for 900 ns;
  
  FS <= "00001";     --3rd
  wait for 900 ns;
  
  FS <= "01000";      --4th
  wait for 900 ns;
  
  --FSelect <= "00100";      --5th
  FS <= "00010"; 
  wait for 900 ns;
  
  FS <= "10000";      --6th
  wait for 900 ns;
  
  --FSelect <= "00101";       --7th
  FS <= "00011";
  wait for 900 ns;
  
  FS <= "10100";        --8th
  wait for 900 ns;
  
  -- FSelect <= "01110";        --9th
  FS <= "00100";        --9th 
 
    
    wait;
  end process;


end;