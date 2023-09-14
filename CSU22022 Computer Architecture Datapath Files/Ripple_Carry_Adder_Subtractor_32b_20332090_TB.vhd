----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/17/2021 12:07:45 PM
-- Design Name: 
-- Module Name: Ripple_Carry_Adder_Subtractor_32b_20332090_TB - Behavioral
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

entity Ripple_Carry_Adder_Subtractor_32b_20332090_TB is
--  Port ( );
end Ripple_Carry_Adder_Subtractor_32b_20332090_TB;

architecture Behavioral of Ripple_Carry_Adder_Subtractor_32b_20332090_TB is

COMPONENT Ripple_Carry_Adder_Subtractor_32b_20332090
PORT(
       A : in std_logic_vector (31 downto 0);
       B : in std_logic_vector (31 downto 0);
       Carry_in : in std_logic;
       S0 : in std_logic;
       S1 : in std_logic;
       Sum : out std_logic_vector (31 downto 0);
       Carry_out : out std_logic;
      -- Y : out std_logic_vector (31 downto 0);
       V : out std_logic
       );
END COMPONENT;

--Inputs
signal A : std_logic_vector(31 downto 0) := (others => '0');
signal B : std_logic_vector(31 downto 0) := (others => '0');
signal Carry_in : std_logic := '0';
signal S0 :  std_logic := '0';
signal S1 :  std_logic := '0';

--Outputs
signal Sum : std_logic_vector(31 downto 0);
--signal Y : std_logic_vector(31 downto 0);
signal Carry_out : std_logic;
signal V : std_logic;

constant Clk_period : time := 20 ns;

BEGIN

 -- Instantiate the Unit Under Test (UUT)
uut: Ripple_Carry_Adder_Subtractor_32b_20332090 PORT MAP (
        A => A,
        B => B,
        Carry_in => Carry_in,
        S0 => S0,
        S1 => S1,
        Sum => Sum,
        Carry_out => Carry_out,
       -- Y => Y,
        V => V
);


stim_process: process
begin

 -- hold reset state for 100 ns.
-- wait for Clk_period;

A <= x"20332090";
--B <= "00000000000000000000000000001100";
B <= x"20332090";
    --A <= "00000000000000000000000000000001";
--B <= "00000000000000000000000000000010";

wait for Clk_period;
--First, let's test with the Carry-in = 0.
Carry_in <= '0';

wait for Clk_period;

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

wait;

end process;


end Behavioral;
