library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mem is
  Port(
    clk             : in std_logic;
    state           : in std_logic_vector(1 downto 0);
    use_systemcall  : in std_logic; --will use syscall
    type_of_sys     : in std_logic_vector(1 downto 0); --will use this type of syscall
    return_sys      : in std_logic_vector(31 downto 0); --data returned from top
    load_f_sig      : in std_logic; --load data to mem in reading instruction phase
    load_f_data     : in std_logic_vector(31 downto 0); -- data to load from file
 	write_sig       : in std_logic;
    read_sig        : in std_logic;
    send_R_sig      : in std_logic; --write data to R
    target_R        : in std_logic_vector(4 downto 0); --write data to this R
    write_data      : in std_logic_vector(31 downto 0); --data for register(or address)
    write_mem_data  : in std_logic_vector(31 downto 0); --data for memory
    R_sig           : out std_logic; --write register
    R_num           : out std_logic_vector(4 downto 0); --write to this register
    data_out        : out std_logic_vector(31 downto 0);
    systemcall      : out std_logic; --call top for systemcall execution
    systemcall_type : out std_logic_vector(1 downto 0); --show type of systemcall

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
  signal R_sig_buf       : std_logic := '0';
  signal R_num_buf       : std_logic_vector(4 downto 0) := "00000";
  signal data_out_buf    : std_logic_vector(31 downto 0) := x"bbbbbbbb";
  signal data_out_sub    : std_logic_vector(31 downto 0) := x"aaaaaaaa";

  signal mem_read : std_logic_vector(31 downto 0) := x"00000000"; 

  signal load_f_stat       : std_logic_vector(1 downto 0) := "00";
  signal load_f_addr       : std_logic_vector(19 downto 0) := x"fffff";
  signal load_f_data_store : std_logic_vector(31 downto 0) := x"00000000"; --1st buf
  signal load_f_data_save  : std_logic_vector(31 downto 0) := x"00000000"; --2nd buf

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
  ZD <= load_f_data_save when load_f_stat /= "00" else --loading data beforehand
        write_mem_data when write_sig = '1' else
        "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
  XWA <= '0' when load_f_sig = '1' or write_sig = '1' else
         '1';
  XFT <= '1';
  XZBE <= "0000";
  ZA <= load_f_addr when load_f_sig = '1' or load_f_stat /= "00" else --loading data beforehand
        write_data(19 downto 0);
  mem_read <= ZD;

  systemcall <= use_systemcall;
  systemcall_type <= type_of_sys;

  mem_process: process(clk)
  begin
    if rising_edge(clk) then
      if load_f_stat = "00" and load_f_sig = '1' then --start loading
        load_f_stat <= "01";
        load_f_data_store <= load_f_data;
      elsif load_f_stat = "01" then
        load_f_stat <= "10";
        load_f_data_save <= load_f_data_store;
      elsif load_f_stat = "10" then
        load_f_stat <= "00";
        load_f_addr <= load_f_addr - x"00001";
      else
        case state is --executing instruction
          when "00" | "01" | "10" =>
            null;
          when "11" =>
            R_sig_buf <= send_R_sig;
            R_num_buf <= target_R;
            if use_systemcall = '1' then
              data_out_buf <= return_sys;
            else
              data_out_buf <= data_out_sub;
            end if;
          when others =>
            null;
        end case;
      end if;
    end if;
  end process mem_process;
end mem;
