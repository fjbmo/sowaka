library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mem is
  Port(
    clk             : in std_logic;
    nop_operation   : in std_logic;
    nop_num         : in std_logic_vector(2 downto 0);
    use_systemcall  : in std_logic; --will use syscall
    type_of_sys     : in std_logic_vector(1 downto 0); --will use this type of syscall
    use_return_sys  : in std_logic; --write data from top to register
    return_sys      : in std_logic_vector(31 downto 0); --data returned from top
    load_heap_sig   : in std_logic; --load data to mem in reading instruction phase
    load_heap_data  : in std_logic_vector(31 downto 0); --data to load from file
    write_sig       : in std_logic;
    read_sig        : in std_logic; --(unused)
    send_R_sig      : in std_logic; --write data to R
    send_R_type     : in std_logic; --write data to GPR when 0 and FPR when 1    
    target_R        : in std_logic_vector(4 downto 0); --write data to this R
    address_data    : in std_logic_vector(31 downto 0); --address of memory
    write_mem_data  : in std_logic_vector(31 downto 0); --data for memory
    heap_addr       : out std_logic_vector(19 downto 0); --set $hp with this address
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
  signal R_sig_buf       : std_logic := '0';
  signal R_type_buf      : std_logic := '0';
  signal R_num_buf       : std_logic_vector(4 downto 0) := "00000";
  signal data_out_buf    : std_logic_vector(31 downto 0) := x"00000000";

  signal write_counter : std_logic_vector(1 downto 0) := "00"; --sequential mode state(write on memory only when store instruction first came)
  signal mem_read      : std_logic_vector(31 downto 0) := x"00000000";
  signal nop_counter   : std_logic_vector(2 downto 0) := "000";
  signal nop_buf       : std_logic := '0';
  signal nop_send_data : std_logic := '0';

  signal load_heap_stat       : std_logic_vector(1 downto 0) := "00";
  signal load_heap_addr       : std_logic_vector(19 downto 0) := x"00000";
  signal load_heap_data_store : std_logic_vector(31 downto 0) := x"00000000"; --1st buf
  signal load_heap_data_save  : std_logic_vector(31 downto 0) := x"00000000"; --2nd buf

  signal save_send_R_sig       : std_logic := '0';
  signal save_send_R_sig_sub   : std_logic := '0';
  signal save_send_R_type      : std_logic := '0';
  signal save_send_R_type_sub  : std_logic := '0';
  signal save_target_R         : std_logic_vector(4 downto 0) := "00000";
  signal save_target_R_sub     : std_logic_vector(4 downto 0) := "00000";
  signal save_mem_read         : std_logic_vector(31 downto 0) := x"00000000";
  signal save_mem_write        : std_logic_vector(31 downto 0) := x"00000000";
  signal save_mem_write_sub    : std_logic_vector(31 downto 0) := x"00000000";
  signal save_counter          : std_logic := '0';
  signal save_counter_sub      : std_logic := '0';

begin
  heap_addr <= load_heap_addr;
  R_sig <= R_sig_buf;
  R_type <= R_type_buf;
  R_num <= R_num_buf;
  data_out <= data_out_buf;

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
        save_mem_write when save_counter = '1' and save_send_R_sig = '0' else
        "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
  XWA <= '0' when (load_heap_sig = '1' or write_sig = '1') and nop_counter = "000" else
         '1';
  XFT <= '1';
  XZBE <= "0000";
  ZA <= load_heap_addr when load_heap_sig = '1' else --loading data beforehand
        address_data(19 downto 0);
  mem_read <= ZD;

  systemcall <= use_systemcall;
  systemcall_type <= type_of_sys;

  --direct pass
  R_sig_buf <= save_send_R_sig when nop_counter = "000" and nop_send_data = '1' else
               '1' when use_return_sys = '1' else
               '0';
  R_type_buf <= save_send_R_type when nop_counter = "000" and nop_send_data = '1' else
                '0' when use_return_sys = '1' else
                '0';
  R_num_buf <= save_target_R when nop_counter = "000" and nop_send_data = '1' else
               "00010" when use_return_sys = '1' else
               "00000";
  data_out_buf <= save_mem_read when nop_counter = "000" and nop_send_data = '1' else
                  return_sys when use_return_sys = '1' else
                  x"00000000";

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
        null;
      end if;
      if nop_operation = '1' and nop_counter = "000" then
        nop_counter <= nop_num;
        nop_buf <= '1';
        nop_send_data <= '1';
        save_send_R_sig_sub <= send_R_sig;
        save_send_R_type_sub <= send_R_type;
        save_target_R_sub <= target_R;
        save_mem_write_sub <= write_mem_data;
        save_counter_sub <= '1';
      else
        save_counter_sub <= '0';
        if nop_counter /= "000" then
          if nop_operation = '1' then
            nop_counter <= nop_num;
          else
            nop_counter <= nop_counter - "001";
          end if;
        else
          nop_send_data <= '0';
        end if;
      end if;
      if save_counter = '1' then 
        save_mem_read <= mem_read;
      end if;
      save_send_R_sig <= save_send_R_sig_sub;
      save_send_R_type <= save_send_R_type_sub;
      save_target_R <= save_target_R_sub;
      save_mem_write <= save_mem_write_sub;
      save_counter <= save_counter_sub;
    end if;
  end process mem_process;
end mem;
