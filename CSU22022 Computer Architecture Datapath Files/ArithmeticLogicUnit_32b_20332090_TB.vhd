----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2021 04:23:47 PM
-- Design Name: 
-- Module Name: ArithmeticLogicUnit_32b_20332090_TB - Behavioral
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

entity ArithmeticLogicUnit_32b_20332090_tb is
end;

architecture bench of ArithmeticLogicUnit_32b_20332090_tb is

  component ArithmeticLogicUnit_32b_20332090
    Port ( A : in std_logic_vector (31 downto 0);
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
                    V : out std_logic );
  end component;

  signal A: std_logic_vector (31 downto 0) := (others => '0');
  signal B: std_logic_vector (31 downto 0) := (others => '0');
  --signal Ai: std_logic_vector (31 downto 0);
  --signal Bi: std_logic_vector (31 downto 0);
  signal s: std_logic := '0';
  --signal in0: std_logic_vector (31 downto 0);
  --signal in1: std_logic_vector (31 downto 0);
  signal Carry_in: std_logic := '0';
  signal S0: std_logic := '0';
  signal S1: std_logic := '0';
  signal Sum: std_logic_vector (31 downto 0);
  signal Carry_out: std_logic;
  --signal Gi: std_logic_vector (31 downto 0);
  --signal Y: std_logic_vector (31 downto 0);
  --signal z: std_logic_vector (31 downto 0);
  signal V: std_logic ;
  
  constant Clk_period : time := 200 ns;

begin

  uut: ArithmeticLogicUnit_32b_20332090 port map ( A         => A,
                                                   B         => B,
                                                   s         => s,
                                                  -- in0       => in0,
                                                   --in1       => in1,
                                                   Carry_in  => Carry_in,
                                                   S0        => S0,
                                                   S1        => S1,
                                                   Sum       => Sum,
                                                   Carry_out => Carry_out,
                                                   --Gi        => Gi,
                                                   --Y         => Y,
                                                   --z         => z,
                                                   V         => V );

  stimulus: process
  begin
  
  A <= x"20332090";
 B <= "00000000000000000000000000001100";
-- B <= x"20332090";
    --A <= "00000000000000000000000000000001";
    --B <= "00000000000000000000000000000010";
  
 --test with s set to 0 for adder sub
 s <= '0';
 


--First, let's test with the Carry-in = 0.
Carry_in <= '0';

--wait for Clk_period;

-- Output should be A (result = 0, C_out = 0)
S0 <= '0';
S1 <= '0';

wait for Clk_period;

-- Output should be A + B (result = 1, C_out = 0)
S0 <= '1';
S1 <= '0';

wait for Clk_period;

-- Output should be A + !B (result = 0, C_out = 0)
S0 <= '0';
S1 <= '1';

wait for Clk_period;

-- Output should be A - 1 (result = -1 {i.e. 1 in 2's complement} C_out = 0)
S0 <= '1';
S1 <= '1';

wait for Clk_period;


--now test with the Carry-in = 1.
Carry_in <= '1';

--wait for Clk_period;

-- Output should be A + 1 (result = 1, C_out = 1)
S0 <= '0';
S1 <= '0';

wait for Clk_period;

-- Output should be A + B + 1 (result = 0 with C_out = 0)
S0 <= '1';
S1 <= '0';

wait for Clk_period;

-- Output should be A + !B + 1 (result = 1 with C_Out = 1)
S0 <= '0';
S1 <= '1';

wait for Clk_period;

-- Output should be A (result = 0 with C_Out = 1)
S0 <= '1';
S1 <= '1';

wait for Clk_period;
s <= '1';

--wait for Clk_period;

 -- Put initialisation code here
   --A <= x"20332090";
  -- B <= "00000000000000000000000000001100";
   --A <= "00000000000000000000000000000001";
   --B <= "00000000000000000000000000000010";
  
   
   S0 <= '0';
   S1 <= '0';
   
   wait for Clk_period;
   
  -- A <=  x"20332090";
   -- B <= "00000000000000000000000000001100";
    
    
     
   S0 <= '0';
   S1 <= '1';
     
     wait for Clk_period;
     
     -- A <=  x"20332090";
     -- B <= "00000000000000000000000000001100";
      
         
       S0 <= '1';
       S1 <= '0';
         
     wait for Clk_period;
     
     --A <=  x"20332090";
     --B <= "00000000000000000000000000001100";
      
         
    S0 <= '1';
    S1 <= '1';




    -- Put test bench stimulus code here

    wait;
  end process;


end;
