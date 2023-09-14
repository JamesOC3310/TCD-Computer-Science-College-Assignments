----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/26/2021 03:08:26 PM
-- Design Name: 
-- Module Name: ControlMemory_20332090_TB - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ControlMemory_20332090_tb is
end;

architecture bench of ControlMemory_20332090_tb is

  component ControlMemory_20332090
    Port ( IN_CAR : in std_logic_vector(16 downto 0);
           FL : out std_logic;
           RZ : out std_logic;
           RN : out std_logic;
           RC : out std_logic;
           RV : out std_logic;
           MW : out std_logic;
           MM : out std_logic;
           RW : out std_logic;
           MD : out std_logic;
           FS : out std_logic_vector(4 downto 0);
           MB : out std_logic;
           TB : out std_logic;
           TA : out std_logic;
           TD : out std_logic;
           PL : out std_logic;
           PI : out std_logic;
           IL : out std_logic;
           MC : out std_logic;
           MS : out std_logic_vector(2 downto 0);
           NA : out std_logic_vector(16 downto 0)
   );
  end component;

  signal IN_CAR: std_logic_vector(16 downto 0) := (others => '0');
  signal FL: std_logic := '0';
  signal RZ: std_logic := '0';
  signal RN: std_logic := '0';
  signal RC: std_logic := '0';
  signal RV: std_logic := '0';
  signal MW: std_logic := '0';
  signal MM: std_logic := '0';
  signal RW: std_logic := '0';
  signal MD: std_logic := '0';
  signal FS: std_logic_vector(4 downto 0) := (others => '0');
  signal MB: std_logic := '0';
  signal TB: std_logic := '0';
  signal TA: std_logic := '0';
  signal TD: std_logic := '0';
  signal PL: std_logic := '0';
  signal PI: std_logic := '0';
  signal IL: std_logic := '0';
  signal MC: std_logic := '0';
  signal MS: std_logic_vector(2 downto 0) := (others => '0');
  signal NA: std_logic_vector(16 downto 0) ;

begin

  uut: ControlMemory_20332090 port map ( IN_CAR => IN_CAR,
                                         FL     => FL,
                                         RZ     => RZ,
                                         RN     => RN,
                                         RC     => RC,
                                         RV     => RV,
                                         MW     => MW,
                                         MM     => MM,
                                         RW     => RW,
                                         MD     => MD,
                                         FS     => FS,
                                         MB     => MB,
                                         TB     => TB,
                                         TA     => TA,
                                         TD     => TD,
                                         PL     => PL,
                                         PI     => PI,
                                         IL     => IL,
                                         MC     => MC,
                                         MS     => MS,
                                         NA     => NA );

  stimulus: process
  begin
    IN_CAR<= "00000000000000000";
    wait for 5ns;
    for counter in 1 to 256 loop
        IN_CAR <= std_logic_vector(IN_CAR+1);
        wait for 5ns;
    end loop;
end process;  
end;