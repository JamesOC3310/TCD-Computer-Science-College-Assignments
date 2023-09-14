--------------------------------------------------------------------------------
-- Company: Trinity College
-- Engineer: Dr. Michael Manzke
--
-- Create Date:   11:50:59 02/23/2012
-- Design Name:   
-- Module Name:   C:/Xilinx/12.4/ISE_DS/ISE/ISEexamples/MichaelsMultiplexer/multiplexer_tb.vhd
-- Project Name:  MichaelsMultiplexer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: multiplexer
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY multiplexer_tb IS
END multiplexer_tb;
 
ARCHITECTURE Behavioral OF multiplexer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT multiplexer_smaller20332090
    PORT(
         s : IN  std_logic;
         in0 : IN  std_logic_vector(31 downto 0);
         in1 : IN  std_logic_vector(31 downto 0);
         z : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal s : std_logic;
   signal in0, in1: std_logic_vector(31 downto 0);
   signal z : std_logic_vector(31 downto 0);
   
   

 	--Outputs
   --signal z : std_logic_vector(31 downto 0) := (others => '0');
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut:  multiplexer_smaller20332090 PORT MAP (
         in0 => in0,
         in1 => in1,
         s => s,
          z => z
        );

   stim_proc: process
   begin		
      in0 <= "10101010101010101010101010101010";
	  in1 <= "11001100110011001100110011001100";
	 
		
      	
      s <= '0';
      wait for 100 ns;
      

	  s <= '1';
	  wait for 100 ns;
	  
	  s <= '0';
	  wait for 100 ns;
	  
	  s <= '1';
	  
     
     wait;
   end process stim_proc;

END Behavioral;
