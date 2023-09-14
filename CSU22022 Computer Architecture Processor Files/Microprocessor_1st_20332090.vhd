----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/02/2022 11:20:52 PM
-- Design Name: 
-- Module Name: Microprocessor_1st_20332090 - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Microprocessor_1st_20332090 is
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
end Microprocessor_1st_20332090;

architecture Behavioral of Microprocessor_1st_20332090 is
    
        component Datapath_20332090
            port ( data_in, constant_in : in std_logic_vector(31 downto 0);
                   load_enabled, mux_b_s, mux_d_s, Clk : in std_logic;
                   RW : in std_logic;
                   src_a, src_b, FSelect : in std_logic_vector(4 downto 0);
                   des_A0_d, des_A1_d, des_A2_d, des_A3_d, des_A4_d : in std_logic;
                   data_out, address_out : out std_logic_vector(31 downto 0);
                   c, v, n, z : out std_logic );
        end component;
        
        component MemoryModule_20332090
            port ( address: in std_logic_vector(31 downto 0);
                   write_data: in std_logic_vector(31 downto 0);
                   write_enable: in std_logic;
                   Clock: in std_logic;
                   read_data: out std_logic_vector(31 downto 0) );
        end component;
        
        
        component Mux2_1_32b_20332090 is        
          Port ( in0 : in std_logic_vector (31 downto 0);            
                 in1 : in std_logic_vector (31 downto 0);            
                 s : in std_logic;
                 z : out std_logic_vector (31 downto 0) );
        end component;
        
 --Microprocessor signals
 
        
 signal Mem_Out : std_logic_vector (31 downto 0);
 signal Memory_enabled : std_logic;
 signal Mux_B_Output : std_logic_vector (31 downto 0);
 signal datapath_to_MuxM, MuxM_to_Memory, datapath_to_Memory, MuxD_to_datapath,
     ZeroFill_to_MuxB, PC, Memory_to_MuxD : std_logic_vector (31 downto 0);
 signal Mux_M : std_logic;
 
 --datapath signals
 signal data_in, constant_in : std_logic_vector(31 downto 0);
 signal Register_enable, MuxB_select, MuxD_select : std_logic;
 signal src_a, src_b, FSelect : std_logic_vector(4 downto 0);
 signal des_A0_d, des_A1_d, des_A2_d, des_A3_d, des_A4_d : std_logic;
 signal data_out, address_out : std_logic_vector(31 downto 0);
 signal c_out, v_out, n_out, z_out : std_logic;
 
 --Memory Module
 signal address: std_logic_vector(31 downto 0);
 signal write_data: std_logic_vector(31 downto 0);
 signal write_enable: std_logic;
 signal Clock: std_logic;
 signal read_data: std_logic_vector(31 downto 0);

 begin       
 
 Datapath: Datapath_20332090 PORT MAP (
            c => c_out,
            v => v_out,
            n => n_out,
            z => z_out,
            load_enabled => Register_enable,
            FSelect => FS,
            data_in => MemoryData_Out,
            mux_b_s => MuxB_select,
            mux_d_s => MuxD_select,
            Clk => Clk,
            address_out => datapath_to_MuxM,
            data_out => datapath_to_Memory,
            constant_in => ZeroFill_to_MuxB,
            RW => RW,
            src_a => SA,
            src_b => SB,
            des_A0_d => DR (0),
            des_A1_d => DR (1),
            des_A2_d => DR (2),
            des_A3_d => DR (3),
            des_A4_d => DR (4)   );
            
            
 MemoryModule: MemoryModule_20332090 PORT MAP (
                address => MuxM_to_Memory,
                --address => instruction_in,
                write_data => datapath_to_Memory,   
                write_enable => Memory_enabled,
                Clock => Clock,
                read_data => MemoryData_Out );   
                
   MuxM: Mux2_1_32b_20332090 PORT MAP (
         in0 => datapath_to_MuxM,
         in1 => instruction_in,
         s => Mux_M,
         z => MuxM_to_Memory       );          
         
     

end Behavioral;
