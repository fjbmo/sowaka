library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tx is
  generic(
    wtime : std_logic_vector(15 downto 0)); -- for CLK:66MHz Baudrate:9600bps
  port(
    clk    : in std_logic;
    go     : in std_logic;
    input  : in std_logic_vector(7 downto 0);
    busy   : out std_logic;
    sent   : out std_logic;
    output : out std_logic);
end tx;

architecture tx of tx is
  signal data_buf    : std_logic_vector(9 downto 0) := "1111111111";
  signal state_count : std_logic_vector(15 downto 0) := wtime;
  signal state       : std_logic_vector(3 downto 0) := "1111";

begin
  output <= data_buf(0);
  busy <= go when state > "1001" else '1';

  tx_state: process (clk)
  begin
    if rising_edge(clk) then
      if state > "1001" then --waiting for data
        sent <= '0';
        if go = '1' then
          state <= "0000";
          state_count <= wtime;
          data_buf <= '1' & input & '0';
        end if;
      else --sending
        if state_count <= x"0000" then --change state
          state <= state + "0001";
          state_count <= wtime;
          data_buf <= '1' & data_buf(9 downto 1);
          if state = "1001" then
            sent <= '1';
          end if;
        else
          state_count <= state_count - x"0001";
        end if;
      end if;
    end if;
  end process tx_state;
end tx;
