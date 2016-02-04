library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity rx is
  generic(
    wtime : std_logic_vector(15 downto 0));  -- for CLK:66MHz Baudrate:9600bps
  port(
    clk      : in std_logic;
    go       : in std_logic;
    input    : in std_logic;
    busy     : out std_logic;
    received : out std_logic;
    output   : out std_logic_vector(7 downto 0));
end rx;

architecture rx of rx is
  signal received_buf : std_logic := '0';
  signal output_buf   : std_logic_vector(7 downto 0) := x"FF";

  signal data_trim    : std_logic := '1';
  signal data_buf     : std_logic_vector(7 downto 0) := x"FF";
  signal state_count  : std_logic_vector(15 downto 0) := x"0000";
  signal data_count   : std_logic_vector(15 downto 0) := wtime;
  signal state        : std_logic_vector(3 downto 0) := "1111";

begin
  busy <= '0' when state > "1001" else '1';
  received <= received_buf;
  output <= output_buf;

  rx_state: process(clk)
  begin
    if rising_edge(clk) then
      data_trim <= input;
      if state > "1001" then --waiting for data
        received_buf <= '0';
        if go = '1' then
          if data_trim = '0' then
            state <= "0000";
            state_count <= wtime;
            data_count <= wtime + ('0' & wtime(15 downto 1));
          end if;
        end if;
      else --receiving
        if state_count = x"0000" then --change state
          state <= state + "0001";
          if state = "1000" then
            state_count <= ('0' & wtime(15 downto 1));
          else
            state_count <= wtime;
          end if;
          if state = "1001" then
            received_buf <= '1';
          end if;
        else
          state_count <= state_count - x"0001";
        end if;
        if state < "1001" then --receiving data
          if data_count = x"0000" then
            data_count <= wtime;
            data_buf <= data_trim & data_buf(7 downto 1);
            if state = "1000" then --received 8bit data
              output_buf <= data_trim & data_buf(7 downto 1);
            end if;
          else
            data_count <= data_count - x"0001";
          end if;
        end if;
      end if;
    end if;
  end process rx_state;
end rx;
