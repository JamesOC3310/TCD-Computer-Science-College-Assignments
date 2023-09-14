----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/19/2021 12:26:06 PM
-- Design Name: 
-- Module Name: FunctionUnit_20332090 - Behavioral
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

entity FunctionUnit_20332090 is
  Port (  A : in std_logic_vector (31 downto 0);
           B : in STD_LOGIC_VECTOR(31 downto 0);
           FSelect : in std_logic_vector (4 downto 0);
           V : out STD_LOGIC; 
           C : out STD_LOGIC;
           N : out STD_LOGIC;
           Z_detect : out STD_LOGIC;
           F : out STD_LOGIC_VECTOR(31 downto 0));
end FunctionUnit_20332090;

architecture Behavioral of FunctionUnit_20332090 is
component ArithmeticLogicUnit_32b_20332090
    port( A : in std_logic_vector (31 downto 0);
           B :  in std_logic_vector (31 downto 0);
           s : in std_logic;
           --in0 : in std_logic_vector (31 downto 0);
                    --in1 : in std_logic_vector (31 downto 0);
                    Carry_in : in std_logic;
                    S0 : in std_logic;
                    S1 : in std_logic;
                    Sum : out std_logic_vector (31 downto 0);
                    Carry_out : out std_logic;
                    --Gi : out std_logic_vector (31 downto 0);
                    --Y : out std_logic_vector (31 downto 0);
                   -- z : out std_logic_vector (31 downto 0);
                    V : out std_logic
        );
end component;

component Shifter_20332090 is
  Port (
          J: in std_logic_vector (31 downto 0);
          Il, Ir : in std_logic;
           S0 : in std_logic;
           S1 : in std_logic;
        H: out std_logic_vector (31 downto 0) );
end component;

component Mux2_1_32b_20332090 is
  Port ( in0 : in std_logic_vector (31 downto 0);
         in1 : in std_logic_vector (31 downto 0);
         s : in std_logic;
         z : out std_logic_vector (31 downto 0) );
end component;

signal ShifterOutput : STD_LOGIC_VECTOR(31 downto 0);
signal ArithmeticLogicUnitOut : STD_LOGIC_VECTOR(31 downto 0);
--signal GselectS0 : STD_LOGIC;
--signal GselectS1 : STD_LOGIC;
--signal GselectCarry_in : STD_LOGIC;
signal HselectS0 : STD_LOGIC;
signal HselectS1 : STD_LOGIC;
signal MFselect : STD_LOGIC;
signal f_result : STD_LOGIC_VECTOR (31 downto 0);
signal s: std_logic;
signal Sum : std_logic_vector (31 downto 0);
signal  Il, Ir :  std_logic;
signal V_signal : std_logic;
signal C_signal : std_logic;
signal z : std_logic_vector (31 downto 0);
signal J : std_logic_vector (31 downto 0);


begin

           
             
             
            

ALUnit : ArithmeticLogicUnit_32b_20332090
    PORT MAP ( A => A,
               B => B,
               s => FSelect(3),
               Carry_in => FSelect(0),
               S0 => FSelect(1),
               S1 => FSelect(2),
               Sum => ArithmeticLogicUnitOut,
               Carry_out => C_signal,
               V => V_signal
               --Gi => ArithmeticLogicUnitOut,
               --z => ArithmeticLogicUnitOut
                );
                
Shifter : Shifter_20332090
    PORT MAP ( J => B,
                 Il => '0',
                 Ir => '0',
               S0 => FSelect(3),
               S1 => FSelect(2),
               H => ShifterOutput
                    );
                    
MuxF : Mux2_1_32b_20332090
 PORT MAP( s => FSelect(4),
           in0 => ArithmeticLogicUnitOut,
           in1 => ShifterOutput,
           z => F_result
                 );     
                 
F <= f_result;                     
                 
 --Z_detect <= '1' after 5 ns when ArithmeticLogicUnitOut  <= "00000000000000000000000000000000" else
 --                              '0';
                               
 Z_detect <= not(f_result(0) or f_result(1) or f_result(2) or f_result(3) or f_result(4) or
     f_result(5) or f_result(6) or f_result(7) or f_result(8) or f_result(9) or f_result(10) or
     f_result(11) or f_result(12) or f_result(13) or f_result(14) or f_result(15) or
     f_result(16) or f_result(17) or f_result(18) or f_result(19) or f_result(20) or
     f_result(21) or f_result(22) or f_result(23) or f_result(24) or f_result(25) or
     f_result(26) or f_result(27) or f_result(28) or f_result(29) or f_result(30) or f_result(31));                        
                               
--N <= '1' after 5 ns when ArithmeticLogicUnitOut (31) <= '1' else
--                          '0';      

C <= '0' when FSelect(4) = '1' or FSelect(3) = '1' else
          c_signal when FSelect(4) = '0' and FSelect(3) = '0' else
          '0';             
          
V <= '0' when FSelect(4) = '1' or FSelect(3) = '1' else
                    v_signal when FSelect(4) = '0' and FSelect(3) = '0' else
                    '0';         

N <= f_result(31);
                      
 
            
                 
                        


end Behavioral;
