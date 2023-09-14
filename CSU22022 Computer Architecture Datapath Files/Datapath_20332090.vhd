----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/26/2021 01:48:55 AM
-- Design Name: 
-- Module Name: Datapath_20332090 - Behavioral
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

entity Datapath_20332090 is
  Port ( data_in, constant_in : in std_logic_vector(31 downto 0);
        load_enabled, mux_b_s, mux_d_s, Clk : in std_logic;
        src_a, src_b, FSelect : in std_logic_vector(4 downto 0);
        des_A0_d, des_A1_d, des_A2_d, des_A3_d, des_A4_d : in std_logic;
        data_out, address_out : out std_logic_vector(31 downto 0);
        c, v, n, z : out std_logic);
end Datapath_20332090;

architecture Behavioral of Datapath_20332090 is
        component FunctionUnit_20332090
            port (A : in std_logic_vector (31 downto 0);
                   B : in STD_LOGIC_VECTOR(31 downto 0);
                   FSelect : in std_logic_vector (4 downto 0);
                   V : out STD_LOGIC; 
                   C : out STD_LOGIC;
                   N : out STD_LOGIC;
                   Z_detect : out STD_LOGIC;
                   F : out STD_LOGIC_VECTOR(31 downto 0));
        end component;
        
        
        component Main_Register_File20332090
            port ( des_A0 : in std_logic;
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
        end component;
        
        
        component Mux2_1_32b_20332090 is
          Port ( in0 : in std_logic_vector (31 downto 0);
                 in1 : in std_logic_vector (31 downto 0);
                 s : in std_logic;
                 z : out std_logic_vector (31 downto 0) );
        end component;
        
--signal LoadEnable : STD_LOGIC;
--signal des_A0 : STD_LOGIC;
--signal des_A1 : STD_LOGIC;
--signal des_A2 : STD_LOGIC;
--signal des_A3 : STD_LOGIC;
--signal des_A4 : STD_LOGIC;
signal A_Address, B_Address : STD_LOGIC_VECTOR (4 downto 0);
--signal data : std_logic_vector (31 downto 0);
signal ConstantIn : STD_LOGIC_VECTOR (31 downto 0);
signal FunctionUnitoutput : STD_LOGIC_VECTOR(31 downto 0);
signal MBselect : STD_LOGIC;
signal MDselect : STD_LOGIC;
signal BDataout : STD_LOGIC_VECTOR(31 downto 0);
signal BusA : STD_LOGIC_VECTOR(31 downto 0);
signal BusB : STD_LOGIC_VECTOR(31 downto 0);
signal BusD : STD_LOGIC_VECTOR(31 downto 0);
--signal FSelect : STD_LOGIC_VECTOR (31 downto 0);
--signal CLK : STD_LOGIC;
--signal Zflag : STD_LOGIC;
--signal Nflag : STD_LOGIC;
--signal Cflag : STD_LOGIC;
--signal Vflag : STD_LOGIC;        

begin

Main_Reg_File: Main_Register_File20332090
            PORT MAP ( des_A0 => des_A0_d,
                       des_A1 => des_A1_d,
                       des_A2 => des_A2_d,
                       des_A3 => des_A3_d,
                       des_A4 => des_A4_d,
                       --AddressA => A_Address,
                       AddressA => src_a,
                       --AddressB => B_Address,
                       AddressB => src_b,
                       data => BusD,
                       Clk => Clk,
                       data_src => load_enabled,
                       Aoutput => BusA,
                       Boutput => BDataout
                                            );

FuncUnit: FunctionUnit_20332090
        PORT MAP ( --A => ConstantIn,
                   A => BusA,
                   B => BusB,
                   FSelect => FSelect,
                   V => v,
                   C => c,
                   N => n,
                   Z_detect => z,
                   F => FunctionUnitoutput
                                        );
                                        
                                        
--Main_Reg_File: Main_Register_File20332090
--            PORT MAP ( des_A0 => des_A0_d,
--                       des_A1 => des_A1_d,
--                       des_A2 => des_A2_d,
--                       des_A3 => des_A3_d,
--                       des_A4 => des_A4_d,
--                       --AddressA => A_Address,
--                       AddressA => src_a,
--                       --AddressB => B_Address,
--                       AddressB => src_b,
--                       data => BusD,
--                       Clk => Clk,
--                       data_src => LoadEnable,
--                       Aoutput => BusA,
--                       Boutput => BDataout
--                                            );
                                            

MuxB: Mux2_1_32b_20332090
        PORT MAP ( --s => MBselect,
                    s => mux_b_s,
                   in0 => BDataout,
                   in1 => constant_in,
                   z => BusB
                                );    
                                
MuxD : Mux2_1_32b_20332090
        PORT MAP (s => mux_d_s,
                  in0 => FunctionUnitoutput,
                  in1 => data_in,
                  z => BusD
                            );                                                           
                                         

--data_out <= BusB;
data_out <= BusA;
--address_out <= BusA;
address_out <= BusB;


end Behavioral;
