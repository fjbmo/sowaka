library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mem is
  Port(
    clk             : in std_logic;
    state           : in std_logic_vector(1 downto 0);
    exec_mode       : in std_logic; --activate pipeline mode when '1'
    use_systemcall  : in std_logic; --will use syscall
    type_of_sys     : in std_logic_vector(1 downto 0); --will use this type of syscall
    return_sys      : in std_logic_vector(31 downto 0); --data returned from top
    load_heap_sig   : in std_logic; --load data to mem in reading instruction phase
    load_heap_data  : in std_logic_vector(31 downto 0); --data to load from file
    received_fcc    : in std_logic_vector(7 downto 0); --new fcc from ALU
 	write_sig       : in std_logic;
    read_sig        : in std_logic;
    send_R_sig      : in std_logic; --write data to R
    send_R_type     : in std_logic; --write data to GPR when 0 and FPR when 1    
    target_R        : in std_logic_vector(4 downto 0); --write data to this R
    write_data      : in std_logic_vector(31 downto 0); --data for register(or address)
    write_mem_data  : in std_logic_vector(31 downto 0); --data for memory
    heap_addr       : out std_logic_vector(19 downto 0); --set $hp with this address
    send_fcc        : out std_logic_vector(7 downto 0);
    R_sig           : out std_logic; --write register
    R_type          : out std_logic; --write to GPR when 0 and FPR when 1
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
  signal send_fcc_buf : std_logic_vector(7 downto 0) := "00000000";
  signal R_sig_buf    : std_logic := '0';
  signal R_type_buf   : std_logic := '0';
  signal R_num_buf    : std_logic_vector(4 downto 0) := "00000";
  signal data_out_buf : std_logic_vector(31 downto 0) := x"00000000";
  signal data_out_sub : std_logic_vector(31 downto 0) := x"00000000";

  signal write_counter : std_logic_vector(1 downto 0) := "00"; --sequential mode state(write on memory only when store instruction first came)
  signal mem_read      : std_logic_vector(31 downto 0) := x"00000000"; 

  signal load_heap_stat       : std_logic_vector(1 downto 0) := "00";
  signal load_heap_addr       : std_logic_vector(19 downto 0) := x"00000";
  signal load_heap_data_store : std_logic_vector(31 downto 0) := x"00000000"; --1st buf
  signal load_heap_data_save  : std_logic_vector(31 downto 0) := x"00000000"; --2nd buf

begin
  heap_addr <= load_heap_addr;
  send_fcc <= send_fcc_buf;
  R_sig <= R_sig_buf;
  R_type <= R_type_buf;
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
  ZD <= load_heap_data_save when load_heap_stat = "10" else --loading data beforehand
        write_mem_data when write_sig = '1' else
        "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
  XWA <= '0' when load_heap_sig = '1' or (write_sig = '1' and state = "00" and write_counter = "00") else
         '1';
  XFT <= '1';
  XZBE <= "0000";
  ZA <= load_heap_addr when load_heap_sig = '1' else --loading data beforehand
        write_data(19 downto 0);
  mem_read <= ZD;

  systemcall <= use_systemcall;
  systemcall_type <= type_of_sys;

  mem_process: process(clk)
  begin
    if rising_edge(clk) then
      if load_heap_stat = "00" and load_heap_sig = '1' then --start loading
        load_heap_stat <= "01";
        load_heap_data_store <= load_heap_data;
      elsif load_heap_stat = "01" then
        load_heap_stat <= "10";
        load_heap_data_save <= load_heap_data_store;
      elsif load_heap_stat = "10" then
        load_heap_stat <= "00";
        load_heap_addr <= load_heap_addr + x"00001";
      else
        case state is --executing instruction
          when "00" | "01" | "10" =>
            null;
          when "11" =>
            send_fcc_buf <= received_fcc;
            R_sig_buf <= send_R_sig;
            R_type_buf <= send_R_type;
            R_num_buf <= target_R;
            if use_systemcall = '1' then
              data_out_buf <= return_sys;
            else
              data_out_buf <= data_out_sub;
            end if;
            if exec_mode = '0' and write_sig = '1' then --use in sequential mode
              if write_counter = "10" then
                write_counter <= "00";
              else
                write_counter <= write_counter + "01";
              end if;
            end if;
          when others =>
            null;
        end case;
      end if;
    end if;
  end process mem_process;
end mem;
