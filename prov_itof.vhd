library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity ITOF is
  Port(
    A : in std_logic_vector(31 downto 0);
    S : out std_logic_vector(31 downto 0));
end ITOF;

architecture ITOF of ITOF is
  signal pass_data : std_logic_vector(31 downto 0); --pass input data to output

begin
  pass_data <= A;
  S <= pass_data;
end ITOF;
