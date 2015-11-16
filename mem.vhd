library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mem is
  Port(
    clk            : in std_logic;
    state          : in std_logic_vector(1 downto 0);
	write_sig      : in std_logic;
    read_sig       : in std_logic;
    send_R_sig     : in std_logic; --write data to R
    target_R       : in std_logic_vector(4 downto 0); --write data to this R
    write_data     : in std_logic_vector(31 downto 0); --data for register(or address)
    write_mem_data : in std_logic_vector(31 downto 0); --data for memory
    R_sig          : out std_logic; --write register
    R_num          : out std_logic_vector(4 downto 0); --write to this register
    data_out       : out std_logic_vector(31 downto 0);

    XE1    : out std_logic;
    E2A    : out std_logic;
    XE3    : out std_logic;
    XGA    : out std_logic;
    XZCKE  : out std_logic;
    ADVA   : out std_logic;
    XLBO   : out std_logic;
    ZZA    : out std_logic;
    ZCLKMA : out std_logic_vector(1 downto 0);
    ZD     : inout std_logic_vector(31 downto 0);
    XWA    : out std_logic; --write: '0', read: '1'
    XFT    : out std_logic;
    XZBE   : out std_logic_vector(3 downto 0);
    ZA     : out std_logic_vector(19 downto 0));
end mem;

architecture mem of mem is
  signal R_sig_buf : std_logic := '0';
  signal R_num_buf       : std_logic_vector(4 downto 0) := "00000";
  signal data_out_buf    : std_logic_vector(31 downto 0) := x"00000000";
  signal data_out_sub    : std_logic_vector(31 downto 0) := x"00000000";

  signal mem_read : std_logic_vector(31 downto 0) := x"00000000"; 

begin
  R_sig <= R_sig_buf;
  R_num <= R_num_buf;
  data_out <= data_out_buf;
  data_out_sub <= mem_read when read_sig = '1' else
                  write_data;

  XE1 <= '0';
  E2A <= '1';
  XE3 <= '0';
  XGA <= '0';
  XZCKE <= '0';
  ADVA <= '0';
  XLBO <= '1';
  ZZA <= '0';
  ZCLKMA <= clk & clk;
  ZD <= write_mem_data when write_sig = '1' else
        "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
  XWA <= '0' when write_sig = '1' else
         '1';
  XFT <= '1';
  XZBE <= "0000";
  ZA <= write_data(19 downto 0);
  mem_read <= ZD;

  mem_process: process(clk)
  begin
    if rising_edge(clk) then
      case state is
        when "00" | "01" | "10" =>
          null;
        when "11" =>
          R_sig_buf <= send_R_sig;
          R_num_buf <= target_R;
          data_out_buf <= data_out_sub;
        when others =>
          null;
      end case;
    end if;
  end process mem_process;
end mem;
