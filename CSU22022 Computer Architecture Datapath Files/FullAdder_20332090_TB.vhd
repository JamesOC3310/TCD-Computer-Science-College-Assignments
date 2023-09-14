library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity FullAdder_20332090_tb is
end;

architecture bench of FullAdder_20332090_tb is

  component FullAdder_20332090
    Port (A : in std_logic;
          B : in std_logic;
          Carry_in : in std_logic;
          Carry_out : out std_logic;
          Sum : out std_logic );
  end component;

  signal A: std_logic;
  signal B: std_logic;
  signal Carry_in: std_logic;
  signal Carry_out: std_logic;
  signal Sum: std_logic ;

begin

  uut: FullAdder_20332090 port map ( A         => A,
                                     B         => B,
                                     Carry_in  => Carry_in,
                                     Carry_out => Carry_out,
                                     Sum       => Sum );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here
wait for 100 ns;
     
    
     A <= '1';
     B <= '0';
     Carry_in <= '0';
     wait for 10 ns;
     
     A <= '0';
     B <= '1';
     Carry_in <= '0';
     wait for 10 ns;
     
     A <= '1';
     B <= '1';
     Carry_in <= '0';
     wait for 10 ns;
     
     A <= '0';
     B <= '0';
     Carry_in <= '1';
     wait for 10 ns;
     
     A <= '1';
     B <= '0';
     Carry_in <= '1';
     wait for 10 ns;
     
     A <= '0';
     B <= '1';
     Carry_in <= '1';
     wait for 10 ns;
     
     A <= '1';
     B <= '1';
     Carry_in <= '1';
    wait for 10 ns;
    
  end process;


end;