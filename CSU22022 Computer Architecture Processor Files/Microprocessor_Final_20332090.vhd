----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2022 04:36:42 PM
-- Design Name: 
-- Module Name: Microprocessor_Final_20332090 - Behavioral
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

entity Microprocessor_Final_20332090 is
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
end Microprocessor_Final_20332090;

architecture Behavioral of Microprocessor_Final_20332090 is

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
        
        component ControlMemory_20332090 is
            Port ( IN_CAR : in std_logic_vector(16 downto 0);
                FL : out std_logic; -- 0
                RZ : out std_logic; -- 1
                RN : out std_logic; -- 2
                RC : out std_logic; -- 3
                RV : out std_logic; -- 4
                MW : out std_logic; -- 5
                MM : out std_logic; -- 6
                RW : out std_logic; -- 7
                MD : out std_logic; -- 8
                FS : out std_logic_vector(4 downto 0); -- 9 to 13
                MB : out std_logic; -- 14
                TB : out std_logic; -- 15
                TA : out std_logic; -- 16
                TD : out std_logic; -- 17
                PL : out std_logic; -- 18
                PI : out std_logic; -- 19
                IL : out std_logic; -- 20
                MC : out std_logic; -- 21
                MS : out std_logic_vector(2 downto 0); -- 22 to 24
                NA : out std_logic_vector(16 downto 0) -- 25 to 41
        );
      end component;
      
      component CAR17Bit_20332090 is
        PORT ( data_in_car : in std_logic_vector (16 downto 0);
               Reset : in std_logic;
               Clk : in std_logic;
               C_MuxC : in std_logic;
               data_out_car : out std_logic_vector (16 downto 0) );
      end component;
      
      component IR_20332090 is
        PORT ( data_in_ir : in std_logic_vector (31 downto 0);
               IL : in std_logic;
               Clk : in std_logic;
               Opcode : out std_logic_vector (16 downto 0);
               DR : out std_logic_vector (4 downto 0);
               SA : out std_logic_vector (4 downto 0);
               SB : out std_logic_vector (4 downto 0) );
       end component;
       
       component PC_20332090 is
        PORT ( Extend : in std_logic_vector (31 downto 0);
               Reset : in std_logic;
               Clk : in std_logic;
               PL : in std_logic;
               PI : in std_logic;
               PC_Out : out std_logic_vector (31 downto 0) );
       end component;
       
       component Mux1bit_8to1_20332090 is 
        PORT ( Mux8_1_inA : in std_logic;
               Mux8_1_inB : in std_logic;
               Mux8_1_inC : in std_logic;
               Mux8_1_inD : in std_logic;
               Mux8_1_inE : in std_logic;
               Mux8_1_inF : in std_logic;
               Mux8_1_inG : in std_logic;
               Mux8_1_inH : in std_logic;
               S0 : in std_logic;
               S1 : in std_logic;
               S2 : in std_logic;
               Mux8_1_out : out std_logic  );
        end component; 
        
        component Extend_20332090 is
            PORT (DR : in std_logic_vector (4 downto 0);
                SB : in std_logic_vector (4 downto 0);
                Extend_out : out std_logic_vector (31 downto 0) );
        end component;
        
        component ZeroFill_20332090 is
            PORT ( SB : in std_logic_vector (4 downto 0);
               ZeroFill_Out : out std_logic_vector (31 downto 0) );
         end component;
         
      signal MuxM_Out : std_logic_vector (31 downto 0);
         signal Memory_enabled : std_logic;
         signal Mux_B_Output : std_logic_vector (31 downto 0);
         signal datapath_to_MuxM, MuxM_to_Memory, datapath_to_Memory, MuxD_to_datapath, ZeroFill_to_MuxB, PC : std_logic_vector (31 downto 0);
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
         
         
     signal IN_CAR :  std_logic_vector(16 downto 0);
   signal FL :  std_logic; -- 0                            
   signal RZ :  std_logic; -- 1                            
   signal RN :  std_logic; -- 2                            
   signal RC :  std_logic; -- 3                            
   signal RV :  std_logic; -- 4                            
   signal M_W :  std_logic; -- 5                            
   signal M_M :  std_logic; -- 6                            
   signal R_W :  std_logic; -- 7                            
   signal M_D :  std_logic; -- 8                            
   signal F_S :  std_logic_vector(4 downto 0); -- 9 to 13   
   signal M_B :  std_logic; -- 14                           
   signal T_B :  std_logic; -- 15                           
   signal T_A :  std_logic; -- 16                           
   signal T_D :  std_logic; -- 17                           
   signal PL :  std_logic; -- 18                           
   signal PI :  std_logic; -- 19                           
   signal IL :  std_logic; -- 20                           
   signal MC :  std_logic; -- 21                           
   signal MS :  std_logic_vector(2 downto 0); -- 22 to 24  
   signal NA :  std_logic_vector(16 downto 0); -- 25 to 41  
   
signal data_in_car : std_logic_vector (16 downto 0);
signal Reset_car :  std_logic;
signal Clk_car :  std_logic;
signal C_MuxC_car :  std_logic;
signal data_out_car : std_logic_vector (16 downto 0);  

signal  data_in_ir :  std_logic_vector (31 downto 0);
signal IL_ir :  std_logic;
signal Clk_ir :  std_logic;
signal Opcode_ir :  std_logic_vector (16 downto 0);
signal DR_ir :  std_logic_vector (4 downto 0);
 signal SA_ir :  std_logic_vector (4 downto 0);
 signal SB_ir :  std_logic_vector (4 downto 0); 
 
  signal Extend :  std_logic_vector (31 downto 0);
  signal Reset_pc :  std_logic;
  signal Clk_pc :  std_logic;
  signal PL_pc :  std_logic;
  signal PI_pc :  std_logic;
  signal PC_Out :  std_logic_vector (31 downto 0);
  
 signal Mux8_1_inA :  std_logic;
 signal Mux8_1_inB :  std_logic;
 signal Mux8_1_inC :  std_logic;
 signal Mux8_1_inD :  std_logic;
 signal Mux8_1_inE :  std_logic;
 signal Mux8_1_inF :  std_logic;
 signal Mux8_1_inG :  std_logic;
 signal Mux8_1_inH :  std_logic;
 signal S0 :  std_logic;
 signal S1 :  std_logic;
 signal S2 :  std_logic;
 signal Mux8_1_out :  std_logic;
 
 signal DR_extend :  std_logic_vector (4 downto 0);
 signal SB_extend :  std_logic_vector (4 downto 0);
 signal Extend_out :  std_logic_vector (31 downto 0);
 
 signal SB_zero :  std_logic_vector (4 downto 0);
 signal ZeroFill_Out :  std_logic_vector (31 downto 0);

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
               write_data => datapath_to_Memory,   
               write_enable => Memory_enabled,
               Clock => Clock,
               read_data => MemoryData_Out );  
               
   MuxM: Mux2_1_32b_20332090 PORT MAP (
                     in0 => datapath_to_MuxM,
                     in1 => instruction_in,
                     s => Mux_M,
                     z => MuxM_to_Memory       );                
               
               
ControlMemory: ControlMemory_20332090 PORT MAP (
                IN_CAR => IN_CAR,
                FL  =>    FL,
                RZ  =>  RZ,
                RN  =>  RN,
                RC  =>  RC,
                RV  =>  RV,
                MW  =>  M_W,
                MM  =>  M_M,
                RW  =>  R_W,
                MD  =>  M_D,
                FS  =>  F_S,
                MB  =>  M_B,
                TB  =>  T_B,
                TA  =>  T_A,
                TD  =>  T_D,
                PL  =>  PL,
                PI  =>  PI,
                IL  =>  IL,
                MC  =>  MC,
                MS  =>  MS,
                NA  =>  NA         );
                
 CAR:  CAR17Bit_20332090 PORT MAP (
        data_in_car =>    data_in_car,           
        Reset       =>    Reset_car  ,
        Clk        =>     Clk_car ,
        C_MuxC      =>    C_MuxC_car ,
        data_out_car =>   data_out_car );
        
        
        
  IR: IR_20332090 PORT MAP (      
        data_in_ir =>   data_in_ir,
        IL     =>      IL_ir ,
        Clk     =>     Clk_ir ,
        Opcode  =>     Opcode_ir ,
        DR     =>     DR_ir ,
        SA    =>        SA_ir ,
        SB    =>        SB_ir );
        
  PC_Processor: PC_20332090 PORT MAP (
      Extend =>   Extend,
      Reset =>    Reset_pc ,
      Clk   =>    Clk_pc ,
      PL    =>    PL_pc ,
      PI   =>     PI_pc ,
      PC_Out =>   PC_Out  );
      
 Mux8to1_1b: Mux1bit_8to1_20332090 PORT MAP (
             Mux8_1_inA  =>   Mux8_1_inA,
             Mux8_1_inB  =>   Mux8_1_inB,
             Mux8_1_inC  =>   Mux8_1_inC,
             Mux8_1_inD  =>   Mux8_1_inD,
             Mux8_1_inE =>    Mux8_1_inE,
             Mux8_1_inF  =>   Mux8_1_inF,
             Mux8_1_inG  =>   Mux8_1_inG,
             Mux8_1_inH =>    Mux8_1_inH,
            S0      =>        S0 ,
            S1      =>        S1 ,
            S2      =>        S2 ,
            Mux8_1_out =>     Mux8_1_out );
            
 ExtendLogic: Extend_20332090 PORT MAP (
                DR     =>    DR_extend ,    
               SB      =>    SB_extend ,
               Extend_out => Extend_out );
               
               

ZeroFillLogic: ZeroFill_20332090 PORT MAP (
                SB         =>     SB_zero, 
                ZeroFill_Out =>   ZeroFill_Out );

end Behavioral;
