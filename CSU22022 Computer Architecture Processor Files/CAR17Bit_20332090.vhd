----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/01/2022 08:50:20 PM
-- Design Name: 
-- Module Name: CAR17Bit_20332090 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CAR17Bit_20332090 is
  Port ( data_in_car : in std_logic_vector (16 downto 0);
          Reset : in std_logic;
          Clk : in std_logic;
          C_MuxC : in std_logic;
          data_out_car : out std_logic_vector (16 downto 0) );
end CAR17Bit_20332090;

--C_MuxS = condition of Mux S

architecture Behavioral of CAR17Bit_20332090 is

begin
process(Reset, Clk)

--variable current_state: std_logic_vector(16 downto 0);
begin
    if(Reset='1') then data_out_car <= data_in_car;
   
    elsif( C_MuxC='1' and Clk='1') then data_out_car <= "00000000011000000"; 
    
    --end if;
    
     else data_out_car <= data_in_car after 10ns;
     
     end if;
    
end process;

end Behavioral;

