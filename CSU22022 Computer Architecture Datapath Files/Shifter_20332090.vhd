----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2021 11:47:50 AM
-- Design Name: 
-- Module Name: Shifter_20332090 - Behavioral
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

entity Shifter_20332090 is
  Port (
          J: in std_logic_vector (31 downto 0);
           S0 : in std_logic;
           S1 : in std_logic;
           Il, Ir : in std_logic;
        H: out std_logic_vector (31 downto 0) );
end Shifter_20332090;

architecture Behavioral of Shifter_20332090 is

component Mux3_1_20332090 is
port(
   A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        S0 : in std_logic;
        S1 : in std_logic;
        Muxout : out std_logic 
);
end component;

--signal Il, Ir : std_logic;


begin



mux4_1_00:  Mux3_1_20332090
port map(
    A => J(0),
    B => J(1),
    C => Il,
    S0 =>S0,
    S1 => S1,
    Muxout  => H(0)
);

mux4_1_01: Mux3_1_20332090
port map(
    A => J(1),
    B => J(2),
    C => J(0),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(1)
);

mux4_1_02: Mux3_1_20332090
port map(
    A => J(2),
    B => J(3),
    C => J(1),
    S0 =>S0,
    S1 => S1,
    Muxout => H(2)
);

mux4_1_03: Mux3_1_20332090
port map(
    A => J(3),
    B => J(4),
    C => J(2),
    S0 =>S0,
    S1 => S1,
    Muxout => H(3)
);

mux4_1_04: Mux3_1_20332090
port map(
    A => J(4),
    B => J(5),
    C => J(3),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(4)
);

mux4_1_05: Mux3_1_20332090
port map(
    A => J(5),
    B => J(6),
    C => J(4),
    S0 =>S0,
    S1 => S1,
    Muxout => H(5)
);

mux4_1_06: Mux3_1_20332090
port map(
    A => J(6),
    B => J(7),
    C => J(5),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(6)
);

mux4_1_07: Mux3_1_20332090
port map(
    A => J(7),
    B => J(8),
    C => J(6),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(7)
);

mux4_1_08: Mux3_1_20332090
port map(
    A => J(8),
    B => J(9),
    C => J(7),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(8)
);

mux4_1_09: Mux3_1_20332090
port map(
    A => J(9),
    B => J(10),
    C => J(8),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(9)
);

mux4_1_10: Mux3_1_20332090
port map(
    A => J(10),
    B => J(11),
    C => J(9),
    S0 =>S0,
    S1 => S1,
    Muxout  => H(10)
);

mux4_1_11: Mux3_1_20332090
port map(
    A => J(11),
    B => J(12),
    C => J(10),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(11)
);

mux4_1_12: Mux3_1_20332090
port map(
    A => J(12),
    B => J(13),
    C => J(11),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(12)
);

mux4_1_13: Mux3_1_20332090
port map(
    A => J(13),
    B => J(14),
    C => J(12),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(13)
);

mux4_1_14: Mux3_1_20332090
port map(
    A => J(14),
    B => J(15),
    C => J(13),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(14)
);

mux4_1_15: Mux3_1_20332090
port map(
    A => J(15),
    B => J(16),
    C => J(14),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(15)
);

mux4_1_16: Mux3_1_20332090
port map(
    A => J(16),
    B => J(17),
    C => J(15),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(16)
);

mux4_1_17: Mux3_1_20332090
port map(
    A => J(17),
    B => J(18),
    C => J(16),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(17)
);

mux4_1_18: Mux3_1_20332090
port map(
    A => J(18),
    B => J(19),
    C => J(17),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(18)
);

mux4_1_19: Mux3_1_20332090
port map(
    A => J(19),
    B => J(20),
    C => J(18),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(19)
);

mux4_1_20: Mux3_1_20332090
port map(
    A => J(20),
    B => J(21),
    C => J(19),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(20)
);

mux4_1_21: Mux3_1_20332090
port map(
    A => J(21),
    B => J(22),
    C => J(20),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(21)
);

mux4_1_22: Mux3_1_20332090
port map(
    A => J(22),
    B => J(23),
    C => J(21),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(22)
);

mux4_1_23: Mux3_1_20332090
port map(
    A => J(23),
    B => J(24),
    C => J(22),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(23)
);

mux4_1_24: Mux3_1_20332090
port map(
    A => J(24),
    B => J(25),
    C => J(23),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(24)
);

mux4_1_25: Mux3_1_20332090
port map(
    A => J(25),
    B => J(26),
    C => J(24),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(25)
);

mux4_1_26: Mux3_1_20332090
port map(
    A => J(26),
    B => J(27),
    C => J(25),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(26)
);

mux4_1_27: Mux3_1_20332090
port map(
    A => J(27),
    B => J(28),
    C => J(26),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(27)
);

mux4_1_28: Mux3_1_20332090
port map(
    A => J(28),
    B => J(29),
    C => J(27),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(28)
);

mux4_1_29: Mux3_1_20332090
port map(
    A => J(29),
    B => J(30),
    C => J(28),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(29)
);

mux4_1_30: Mux3_1_20332090
port map(
    A => J(30),
    B => J(31),
    C => J(29),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(30)
);

mux4_1_31: Mux3_1_20332090
port map(
    A => J(31),
    B => Ir,
    C => J(30),
    S0 =>S0,
    S1 => S1,
    Muxout=> H(31)
);




end Behavioral;
