library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity siki_test is
  Port(
    MCLK1  : in std_logic;
    RS_RX  : in std_logic;
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
    XWA    : out std_logic;
    XFT    : out std_logic;
    XZBE   : out std_logic_vector(3 downto 0);
    ZA     : out std_logic_vector(19 downto 0);
    RS_TX  : out std_logic);
end siki_test;

architecture siki_test of siki_test is
  component fifo8
    port(
      CLK   : in std_logic;
      WR_EN : in std_logic;
      RD_EN : in std_logic;
      DIN   : in std_logic_vector(7 downto 0);
      EMPTY : out std_logic;
      FULL  : out std_logic;
      DOUT  : out std_logic_vector(7 downto 0));
  end component;

  component rx
    generic(
      wtime : std_logic_vector(15 downto 0) := x"1B16"); -- for CLK:66MHz Baudrate:9600bps
    port(
      clk      : in std_logic;
      go       : in std_logic;
      input    : in std_logic;
      busy     : out std_logic;
      received : out std_logic;
      output   : out std_logic_vector(7 downto 0));
  end component;

  component tx
    generic(
      wtime : std_logic_vector(15 downto 0) := x"1B16");
    port(
      clk    : in std_logic;
      go     : in std_logic;
      input  : in std_logic_vector(7 downto 0);
      busy   : out std_logic;
      sent   : out std_logic;
      output : out std_logic);
  end component;

  component ife_test
    port(
      clk         : in std_logic;
      state       : in std_logic_vector(1 downto 0);
      exec_mode   : in std_logic;
      write_mem   : in std_logic;
      write_BRAM  : in std_logic_vector(15 downto 0);
      next_PC     : in std_logic_vector(15 downto 0);
      instruction : in std_logic_vector(31 downto 0);
      prev_PC     : out std_logic_vector(15 downto 0);
      recv_data   : out std_logic_vector(31 downto 0));
  end component;

  component id
    port(
      clk                 : in std_logic;
      state               : in std_logic_vector(1 downto 0);
      write_PC            : in std_logic_vector(15 downto 0);
      instr               : in std_logic_vector(31 downto 0);
      mem_to_R_sig_return : in std_logic;
      mem_to_R_pointer    : in std_logic_vector(4 downto 0);
      mem_to_R            : in std_logic_vector(31 downto 0);
      sys_sig             : out std_logic;
      sys_type            : out std_logic_vector(1 downto 0);
      branch_instr        : out std_logic;
      branch_cond         : out std_logic_vector(2 downto 0);
      jump_instr          : out std_logic;
      store_instr         : out std_logic;
      load_instr          : out std_logic;
      mem_write           : out std_logic;
      mem_to_R_sig        : out std_logic;
      write_data_R        : out std_logic_vector(4 downto 0);
      now_PC              : out std_logic_vector(15 downto 0);
      add_to_PC           : out std_logic_vector(15 downto 0);
      change_PC           : out std_logic_vector(15 downto 0);
      data_1              : out std_logic_vector(31 downto 0);
      data_2              : out std_logic_vector(31 downto 0);
      data_to_mem         : out std_logic_vector(31 downto 0);
      ALU_control         : out std_logic_vector(3 downto 0);
      r0_data             : out std_logic_vector(31 downto 0);
      r1_data             : out std_logic_vector(31 downto 0);
      r2_data             : out std_logic_vector(31 downto 0);
      r3_data             : out std_logic_vector(31 downto 0);
      r4_data             : out std_logic_vector(31 downto 0);
      r5_data             : out std_logic_vector(31 downto 0);
      r6_data             : out std_logic_vector(31 downto 0);
      r7_data             : out std_logic_vector(31 downto 0);
      r8_data             : out std_logic_vector(31 downto 0);
      r9_data             : out std_logic_vector(31 downto 0);
      r10_data            : out std_logic_vector(31 downto 0);
      r11_data            : out std_logic_vector(31 downto 0);
      r12_data            : out std_logic_vector(31 downto 0);
      r13_data            : out std_logic_vector(31 downto 0);
      r14_data            : out std_logic_vector(31 downto 0);
      r15_data            : out std_logic_vector(31 downto 0);
      r16_data            : out std_logic_vector(31 downto 0);
      r17_data            : out std_logic_vector(31 downto 0);
      r18_data            : out std_logic_vector(31 downto 0);
      r19_data            : out std_logic_vector(31 downto 0);
      r20_data            : out std_logic_vector(31 downto 0);
      r21_data            : out std_logic_vector(31 downto 0);
      r22_data            : out std_logic_vector(31 downto 0);
      r23_data            : out std_logic_vector(31 downto 0);
      r24_data            : out std_logic_vector(31 downto 0);
      r25_data            : out std_logic_vector(31 downto 0);
      r26_data            : out std_logic_vector(31 downto 0);
      r27_data            : out std_logic_vector(31 downto 0);
      r28_data            : out std_logic_vector(31 downto 0);
      r29_data            : out std_logic_vector(31 downto 0);
      r30_data            : out std_logic_vector(31 downto 0);
      r31_data            : out std_logic_vector(31 downto 0));
  end component;

  component ALU
    port(
      clk           : in std_logic;
      state         : in std_logic_vector(1 downto 0);
      sys_call_sig  : in std_logic;
      sys_call_type : in std_logic_vector(1 downto 0);
      check_branch  : in std_logic;
      which_cond    : in std_logic_vector(2 downto 0);
      check_jump    : in std_logic;
      store_sig     : in std_logic;
      load_sig      : in std_logic;
      write_mem_sig : in std_logic;
      write_R_sig   : in std_logic;
      write_R       : in std_logic_vector(4 downto 0);
      base_PC       : in std_logic_vector(15 downto 0);
      add_PC        : in std_logic_vector(15 downto 0);
      jump_PC       : in std_logic_vector(15 downto 0);
      input_int_1   : in std_logic_vector(31 downto 0);
      input_int_2   : in std_logic_vector(31 downto 0);
      store_data    : in std_logic_vector(31 downto 0);
      calcu_type    : in std_logic_vector(3 downto 0);
      sys_activate  : out std_logic;
      sys_act_type  : out std_logic_vector(1 downto 0);
      store_mem     : out std_logic;
      load_mem      : out std_logic;
      send_to_R     : out std_logic;
      dest_R        : out std_logic_vector(4 downto 0);
      new_PC        : out std_logic_vector(15 downto 0);
      output        : out std_logic_vector(31 downto 0);
      mem_data      : out std_logic_vector(31 downto 0));
  end component;

  component mem
    port(
      clk             : in std_logic;
      state           : in std_logic_vector(1 downto 0);
      use_systemcall  : in std_logic;
      type_of_sys     : in std_logic_vector(1 downto 0);
      return_sys      : in std_logic_vector(31 downto 0);
      load_f_sig      : in std_logic;
      load_f_data     : in std_logic_vector(31 downto 0);
      write_sig       : in std_logic;
      read_sig        : in std_logic;
      send_R_sig      : in std_logic;
      target_R        : in std_logic_vector(4 downto 0);
      write_data      : in std_logic_vector(31 downto 0);
      write_mem_data  : in std_logic_vector(31 downto 0);
      R_sig           : out std_logic;
      R_num           : out std_logic_vector(4 downto 0);
      data_out        : out std_logic_vector(31 downto 0);
      systemcall      : out std_logic;
      systemcall_type : out std_logic_vector(1 downto 0);

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
      XWA    : out std_logic;
      XFT    : out std_logic;
      XZBE   : out std_logic_vector(3 downto 0);
      ZA     : out std_logic_vector(19 downto 0));
  end component;

  signal clk           : std_logic := '0';
  signal iclk          : std_logic := '0';
  signal state         : std_logic_vector(1 downto 0) := "00";
  signal top_state     : std_logic_vector(4 downto 0) := "11111";
  signal activate_fifo : std_logic := '0'; --start loading to fifo
  signal wr_en         : std_logic := '0'; --write to fifo
  signal rd_en         : std_logic := '0'; --read from fifo
  signal fifo_in       : std_logic_vector(7 downto 0) := x"00"; --data send to fifo
  signal fifo_emp      : std_logic := '0'; --check if fifo is empty
  signal fifo_full     : std_logic := '0'; --check if fifo is full
  signal fifo_out      : std_logic_vector(7 downto 0) := x"00"; --data get from fifo
  signal rx_go         : std_logic := '0';
  signal check_rx      : std_logic := '0'; --if rx is busy(can check if state is "1010")
  signal tx_go         : std_logic := '0';
  signal check_tx      : std_logic := '0'; --if tx is busy(can check if state is "1010")
  signal load_instr    : std_logic := '0'; --load instruction
  signal received      : std_logic := '0'; --received 8 bits data at rx
  signal sent          : std_logic := '0'; --sent 8 bits data from tx
  signal byte_recv     : std_logic_vector(7 downto 0) := x"00"; --8bits of instruction
  signal full_recv     : std_logic_vector(31 downto 0) := x"00000000"; --32bits of instruction
  signal full_buf      : std_logic_vector(23 downto 0) := x"000000"; --collect instruction here
  signal byte_tran     : std_logic_vector(7 downto 0) := x"00"; --8bits data from register
  signal full_tran     : std_logic_vector(31 downto 0) := x"00000000"; --32bits data from register
  signal load_f_sig    : std_logic := '0'; --load data from file
  signal load_f_data   : std_logic_vector(31 downto 0) := x"000ee000"; --data from file
  signal write_BRAM    : std_logic_vector(15 downto 0) := x"ffff"; --PC for BRAM
  signal init_PC       : std_logic_vector(15 downto 0) := x"abcd"; --first PC
  signal change_PC     : std_logic_vector(1 downto 0) := "00"; --change PC from init_PC
  signal print_regs    : std_logic_vector(4 downto 0) := "00000"; --print registers
  signal sys_call_act  : std_logic := '0'; --begin systemcall
  signal sys_call_stat : std_logic_vector(1 downto 0) := "00"; --sys_call type
  signal sys_ans_data  : std_logic_vector(31 downto 0) := x"00000000"; --result of syscall
  signal sys_check     : std_logic := '0'; --check if systemcall has ended
  signal sys_check_sub : std_logic := '0'; --used in systemcall
  signal return_state  : std_logic_vector(4 downto 0) := "00000"; --return to this state from systemcall
  signal support_seq   : std_logic_vector(1 downto 0) := "00"; --support sequential mode at systemcall
  signal pipeline_mode : std_logic := '0'; --activate pipeline mode when '1' and activate sequential mode when '0'
  signal r0_data       : std_logic_vector(31 downto 0) := x"00000000";
  signal r1_data       : std_logic_vector(31 downto 0) := x"00000000";
  signal r2_data       : std_logic_vector(31 downto 0) := x"00000000";
  signal r3_data       : std_logic_vector(31 downto 0) := x"00000000";
  signal r4_data       : std_logic_vector(31 downto 0) := x"00000000";
  signal r5_data       : std_logic_vector(31 downto 0) := x"00000000";
  signal r6_data       : std_logic_vector(31 downto 0) := x"00000000";
  signal r7_data       : std_logic_vector(31 downto 0) := x"00000000";
  signal r8_data       : std_logic_vector(31 downto 0) := x"00000000";
  signal r9_data       : std_logic_vector(31 downto 0) := x"00000000";
  signal r10_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r11_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r12_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r13_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r14_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r15_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r16_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r17_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r18_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r19_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r20_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r21_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r22_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r23_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r24_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r25_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r26_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r27_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r28_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r29_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r30_data      : std_logic_vector(31 downto 0) := x"00000000";
  signal r31_data      : std_logic_vector(31 downto 0) := x"00000000";

  --to IF
  signal next_PC : std_logic_vector(15 downto 0) := x"0000";

  --to ID
  signal write_PC            : std_logic_vector(15 downto 0) := x"0000";
  signal instr               : std_logic_vector(31 downto 0) := x"00000000";
  signal mem_to_R_sig_return : std_logic := '0';
  signal mem_to_R_pointer    : std_logic_vector(4 downto 0) := "00000";
  signal mem_to_R            : std_logic_vector(31 downto 0) := x"00000000";

  --to ALU
  signal sys_call_sig  : std_logic := '0';
  signal sys_call_type : std_logic_vector(1 downto 0) := "00";
  signal check_branch  : std_logic := '0';
  signal which_cond    : std_logic_vector(2 downto 0) := "000";
  signal check_jump    : std_logic := '0';
  signal store_sig     : std_logic := '0';
  signal load_sig      : std_logic := '0';
  signal write_mem_sig : std_logic := '0';
  signal write_R_sig   : std_logic := '0';
  signal write_R       : std_logic_vector(4 downto 0) := "00000";
  signal pass_data     : std_logic_vector(31 downto 0) := x"00000000";
  signal base_PC       : std_logic_vector(15 downto 0) := x"0000";
  signal add_PC        : std_logic_vector(15 downto 0) := x"0000";
  signal jump_PC       : std_logic_vector(15 downto 0) := x"0000";
  signal input_int_1   : std_logic_vector(31 downto 0) := x"00000000";
  signal input_int_2   : std_logic_vector(31 downto 0) := x"00000000";
  signal store_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal calcu_type    : std_logic_vector(3 downto 0) := "0000";

  signal new_PC        : std_logic_vector(15 downto 0) := x"0000";
  --to mem
  signal use_systemcall : std_logic := '0';
  signal type_of_sys    : std_logic_vector(1 downto 0) := "00";
  signal return_sys     : std_logic_vector(31 downto 0) := x"00000000";
  signal write_sig      : std_logic := '0';
  signal read_sig       : std_logic := '0';
  signal send_R_sig     : std_logic := '0';
  signal target_R       : std_logic_vector(4 downto 0) := "00000";
  signal write_addr     : std_logic_vector(31 downto 0) := x"00000000";
  signal write_data     : std_logic_vector(31 downto 0) := x"00000000";
  signal write_mem_data : std_logic_vector(31 downto 0) := x"00000000";

  signal simclk   : std_logic := '0';
  signal first_PC : std_logic_vector(15 downto 0) := x"0033";
  
begin
--  ib: IBUFG
--    port map(
--      i => MCLK1,
--      o => iclk);
--  bg: BUFG
--    port map(
--      i => iclk,
--      o => clk);
  FIFO: fifo8
    port map(
      CLK => simclk,
      WR_EN => wr_en,
      RD_EN => rd_en,
      DIN => fifo_in,
      EMPTY => fifo_emp,
      FULL => fifo_full,
      DOUT => fifo_out);
  SIKI_RX: rx
    generic map(
      wtime => x"1B16")
    port map(
      clk => simclk,
      go => rx_go,
      input => RS_RX,
      busy => check_rx,
      received => received,
      output => byte_recv);
  SIKI_TX: tx
    generic map(
      wtime => x"1B16")
    port map(
      clk => simclk,
      go => tx_go,
      input => byte_tran,
      busy => check_tx,
      sent => sent,
      output => RS_TX);
  SIKI_IFE: ife_test
    port map(
      clk => simclk,
      state => state,
      exec_mode => pipeline_mode,
      write_mem => load_instr,
      write_BRAM => write_BRAM,
      next_PC => next_PC,
      instruction => full_recv,
      prev_PC => write_PC,
      recv_data => instr);
  SIKI_ID: id
    port map(
      clk => simclk,
      state => state,
      write_PC => write_PC,
      instr => instr,
      mem_to_R_sig_return => mem_to_R_sig_return,
      mem_to_R_pointer => mem_to_R_pointer,
      mem_to_R => mem_to_R,
      sys_sig => sys_call_sig,
      sys_type => sys_call_type,
      branch_instr => check_branch,
      branch_cond => which_cond,
      jump_instr => check_jump,
      store_instr => store_sig,
      load_instr => load_sig,
      mem_write => write_mem_sig,
      mem_to_R_sig => write_R_sig,
      write_data_R => write_R,
      now_PC => base_PC,
      add_to_PC => add_PC,
      change_PC => jump_PC,
      data_1 => input_int_1,
      data_2 => input_int_2,
      data_to_mem => store_data,
      ALU_control => calcu_type,
      r0_data => r0_data,
      r1_data => r1_data,
      r2_data => r2_data,
      r3_data => r3_data,
      r4_data => r4_data,
      r5_data => r5_data,
      r6_data => r6_data,
      r7_data => r7_data,
      r8_data => r8_data,
      r9_data => r9_data,
      r10_data => r10_data,
      r11_data => r11_data,
      r12_data => r12_data,
      r13_data => r13_data,
      r14_data => r14_data,
      r15_data => r15_data,
      r16_data => r16_data,
      r17_data => r17_data,
      r18_data => r18_data,
      r19_data => r19_data,
      r20_data => r20_data,
      r21_data => r21_data,
      r22_data => r22_data,
      r23_data => r23_data,
      r24_data => r24_data,
      r25_data => r25_data,
      r26_data => r26_data,
      r27_data => r27_data,
      r28_data => r28_data,
      r29_data => r29_data,
      r30_data => r30_data,
      r31_data => r31_data);
  SIKI_ALU: ALU
    port map(
      clk => simclk,
      state => state,
      sys_call_sig => sys_call_sig,
      sys_call_type => sys_call_type,
      check_branch => check_branch,
      which_cond => which_cond,
      check_jump => check_jump,
      store_sig => store_sig,
      load_sig => load_sig,
      write_mem_sig => write_mem_sig,
      write_R_sig => write_R_sig,
      write_R => write_R,
      base_PC => base_PC,
      add_PC => add_PC,
      jump_PC => jump_PC,
      input_int_1 => input_int_1,
      input_int_2 => input_int_2,
      store_data => store_data,
      calcu_type => calcu_type,
      sys_activate => use_systemcall,
      sys_act_type => type_of_sys,
      store_mem => write_sig,
      load_mem => read_sig,
      send_to_R => send_R_sig,
      dest_R => target_R,
      new_PC => new_PC,
      output => write_data,
      mem_data => write_mem_data);
  SIKI_MEM: mem
    port map(
      clk => simclk,
      state => state,
      use_systemcall => use_systemcall,
      type_of_sys => type_of_sys,
      return_sys => return_sys,
      load_f_sig => load_f_sig,
      load_f_data => load_f_data,
      write_sig => write_sig,
      read_sig => read_sig,
      send_R_sig => send_R_sig,
      target_R => target_R,
      write_data => write_data,
      write_mem_data => write_mem_data,
      R_sig => mem_to_R_sig_return,
      R_num => mem_to_R_pointer,
      data_out => mem_to_R,
      systemcall => sys_call_act,
      systemcall_type => sys_call_stat,
      XE1 => XE1,
      E2A => E2A,
      XE3 => XE3,
      XGA => XGA,
      XZCKE => XZCKE,
      ADVA => ADVA,
      XLBO => XLBO,
      ZZA => ZZA,
      ZCLKMA => ZCLKMA,
      ZD => ZD,
      XWA => XWA,
      XFT => XFT,
      XZBE => XZBE,
      ZA => ZA);

  next_PC <= init_PC when change_PC /= "11" else
             new_PC;
  
  full_tran <= r0_data when print_regs = "00000" else
               r1_data when print_regs = "00001" else
               r2_data when print_regs = "00010" else
               r3_data when print_regs = "00011" else
               r4_data when print_regs = "00100" else
               r5_data when print_regs = "00101" else
               r6_data when print_regs = "00110" else
               r7_data when print_regs = "00111" else
               r8_data when print_regs = "01000" else
               r9_data when print_regs = "01001" else
               r10_data when print_regs = "01010" else
               r11_data when print_regs = "01011" else
               r12_data when print_regs = "01100" else
               r13_data when print_regs = "01101" else
               r14_data when print_regs = "01110" else
               r15_data when print_regs = "01111" else
               r16_data when print_regs = "10000" else
               r17_data when print_regs = "10001" else
               r18_data when print_regs = "10010" else
               r19_data when print_regs = "10011" else
               r20_data when print_regs = "10100" else
               r21_data when print_regs = "10101" else
               r22_data when print_regs = "10110" else
               r23_data when print_regs = "10111" else
               r24_data when print_regs = "11000" else
               r25_data when print_regs = "11001" else
               r26_data when print_regs = "11010" else
               r27_data when print_regs = "11011" else
               r28_data when print_regs = "11100" else
               r29_data when print_regs = "11101" else
               r30_data when print_regs = "11110" else
               r31_data;

  siki_process: process(simclk)
  begin
    if rising_edge(simclk) then
      case top_state is
        when "11111" => --start
          top_state <= "00111"; --(original: top_state <= "00000";)
--          rx_go <= '1';
        when "00000" => --waiting for instruction
          if received = '1' then
            top_state <= "00010";
            full_buf(23 downto 16) <= byte_recv;
          end if;
        when "00001" => --reading instruction floating point part(31 downto 24)
          load_f_sig <= '0';
          if load_f_data = x"7000003f" then
            top_state <= "00101";
          else
            if received = '1' then
              top_state <= "00010";
              full_buf(23 downto 16) <= byte_recv;
            end if;
          end if;
        when "00010" => --reading instruction floating poing part(23 downto 16)
          if received = '1' then
            top_state <= "00011";
            full_buf(15 downto 8) <= byte_recv;
          end if;
        when "00011" => --reading instruction floating poing part(15 downto 8)
          if received = '1' then
            top_state <= "00100";
            full_buf(7 downto 0) <= byte_recv;
          end if;
        when "00100" => --reading instruction floating poing part(7 downto 0)
          if received = '1' then
            top_state <= "00001";
            load_f_sig <= '1';
            load_f_data <= full_buf & byte_recv;
          end if;
        when "00101" => --reading instruction initial PC part(31 downto 24)
          if received = '1' then
            top_state <= "00110";
          end if;
        when "00110" => --reading insturction initial PC part(23 downto 16)
          if received = '1' then
            top_state <= "00111";
          end if;
        when "00111" => --reading instruction initial PC part(15 downto 8)
--          if received = '1' then
            top_state <= "01000";
            init_PC(15 downto 8) <= first_PC(15 downto 8); --(original: init_PC(15 downto 8) <= byte_recv;)
--          end if;
        when "01000" => --reading instruction initial PC part(7 downto 0)
--          if received = '1' then
            top_state <= "01101"; --(original: top_state <= "01001";)
            init_PC(7 downto 0) <= first_PC(7 downto 0); --(original: init_PC(7 downto 0) <= byte_recv;)
--          end if;
        when "01001" => --reading instruction body part(31 downto 24)
          if full_recv = x"ffffffff" then
            top_state <= "01101";
            load_instr <= '0';
            rx_go <= '0';
          else
            if received = '1' then
              top_state <= "01010";
              full_buf(23 downto 16) <= byte_recv;
              write_BRAM <= write_BRAM + x"0001";
            end if;
          end if;
        when "01010" => --reading instruction body part(23 downto 16)
          if received = '1' then
            top_state <= "01011";
            full_buf(15 downto 8) <= byte_recv;
          end if;
        when "01011" => --reading instruction body part(15 downto 8)
          if received = '1' then
            top_state <= "01100";
            full_buf(7 downto 0) <= byte_recv;
          end if;
        when "01100" => --reading instruction body part(7 downto 0)
          if received = '1' then
            top_state <= "01001";
            load_instr <= '1';
            full_recv <= full_buf & byte_recv;
          end if;
        when "01101" => --require data(send x"aa")
          top_state <= "01110";
          tx_go <= '1';
          byte_tran <= x"aa";
          activate_fifo <= '1';
        when "01110" => --execute instruction
          tx_go <= '0';
          if instr = x"ffffffff" and state = "00" then
            top_state <= "01111";
          end if;
          if sys_call_act = '1' and sys_check = '0' and support_seq = "00" then --activate systemcall
            top_state <= "11001";
            return_state <= "01110";
            if sys_call_stat = "01" then --systemcall print char: set register r4
              print_regs <= "00100";
            end if;
          end if;
          if state = "11" then
            if change_PC /= "11" then
              change_PC <= change_PC + "01";
            end if;
            if sys_call_act = '1' and sys_check = '1' and support_seq = "00" and pipeline_mode = '0' then --use only in sequential
                                                                                                          --mode
                                                                                                          ----changed here!
              support_seq <= "01"; --(original: "01";)
            elsif support_seq = "01" then
              support_seq <= "10"; --(original: "10";)
            elsif support_seq = "10" then
              support_seq <= "00";
            end if;
            sys_check <= '0';
            print_regs <= "00000";
          end if;
          state <= state + "01";
        when "01111" => --halt instruction is at IFE
          if state = "00" then
            top_state <= "10000";
          end if;
          if sys_call_act = '1' and sys_check = '0' and support_seq = "00" then
            top_state <= "11001";
            return_state <= "01111";
            if sys_call_stat = "01" then
              print_regs <= "00100";
            end if;
          end if;
          if state = "11" then
            if sys_call_act = '1' and sys_check = '0' and support_seq = "00" and pipeline_mode = '0' then
              support_seq <= "01"; --(original: "01";)
            elsif support_seq = "01" then
              support_seq <= "10"; --(original: "10";)
            elsif support_seq = "10" then
              support_seq <= "00";
            end if;
            sys_check <= '0';
            print_regs <= "00000";
          end if;
          state <= state + "01";
        when "10000" => --halt instruction is at ID
          if state = "00" then
            top_state <= "10001";
          end if;
          if sys_call_act = '1' and sys_check = '0' and support_seq = "00" then
            top_state <= "11001";
            return_state <= "10000";
            if sys_call_stat = "01" then
              print_regs <= "00100";
            end if;
          end if;
          if state = "11" then
            if sys_call_act = '1' and sys_check = '0' and support_seq = "00" and pipeline_mode = '0' then
              support_seq <= "01"; --(original: "01";)
            elsif support_seq = "01" then
              support_seq <= "10"; --(original: "10";)
            elsif support_seq = "10" then
              support_seq <= "00";
            end if;
            sys_check <= '0';
            print_regs <= "00000";
          end if;
          state <= state + "01";
        when "10001" => --halt instruction is at ALU
          if state = "00" then
            top_state <= "10010";
          end if;
          if sys_call_act = '1' and sys_check = '0' and support_seq = "00" then
            top_state <= "11001";
            return_state <= "10001";
            if sys_call_stat = "01" then
              print_regs <= "00100";
            end if;
          end if;
          if state = "11" then
            if sys_call_act = '1' and sys_check = '0' and support_seq = "00" and pipeline_mode = '0' then
              support_seq <= "01"; --(original: "01";)
            elsif support_seq = "01" then
              support_seq <= "10"; --(original: "10";)
            elsif support_seq = "10" then
              support_seq <= "00";
            end if;
            sys_check <= '0';
            print_regs <= "00000";
          end if;
          state <= state + "01";
        when "10010" => --halt instruction is at MEM
          if state = "00" then
            top_state <= "10011";
          end if;
          if sys_call_act = '1' and sys_check = '0' and support_seq = "00" then
            top_state <= "11001";
            return_state <= "10010";
            if sys_call_stat = "01" then
              print_regs <= "00100";
            end if;
          end if;
          if state = "11" then
            if sys_call_act = '1' and sys_check = '0' and support_seq = "00" and pipeline_mode = '0' then
              support_seq <= "01"; --(original: "01";)
            elsif support_seq = "01" then
              support_seq <= "10"; --(original: "10";)
            elsif support_seq = "10" then
              support_seq <= "00";
            end if;
            sys_check <= '0';
            print_regs <= "00000";
          end if;
          state <= state + "01";
        when "10011" => --halt instruction is at WR(Writing Register)
          if state = "00" then
            top_state <= "10100";
          end if;
          state <= state + "01";
        when "10100" => --print register
          if check_tx = '0' then
            top_state <= "10101";
            tx_go <= '1';
            byte_tran <= full_tran(31 downto 24);
          else
            tx_go <= '0';
          end if;
        when "10101" =>
          if check_tx = '0' then
            top_state <= "10110";
            tx_go <= '1';
            byte_tran <= full_tran(23 downto 16);
          else
            tx_go <= '0';
          end if;
        when "10110" =>
          if check_tx = '0' then
            top_state <= "10111";
            tx_go <= '1';
            byte_tran <= full_tran(15 downto 8);
          else
            tx_go <= '0';
          end if;
        when "10111" =>
          if check_tx = '0' then
            if print_regs = "11111" then
              top_state <= "11000";
            else
              top_state <= "10011";
            end if;
            tx_go <= '1';
            byte_tran <= full_tran(7 downto 0);
            print_regs <= print_regs + "00001";
          else
            tx_go <= '0';
          end if;  
        when "11000" => --end state
          tx_go <= '0';
        when "11001" =>
          if sys_call_stat = "01" then --special state sys_call:print character v0(=r2) = x"0000000b" || print a0(=r4)(7 downto 0)
            if sys_check_sub = '0' and check_tx = '0' then
              sys_check_sub <= '1';
              tx_go <= '1';
              byte_tran <= r4_data(7 downto 0);
            elsif sys_check_sub = '1' and check_tx = '0' then
              top_state <= return_state;
              sys_check <= '1';
              sys_check_sub <= '0';
              tx_go <= '0';
            else
              tx_go <= '0';
            end if;
          elsif sys_call_stat = "10" then --special state sys_call:read character v0(=r2) = x"0000000c" || v0 <- x"0000000" & read byte
            if sys_check_sub = '0' and fifo_emp = '0' then
              sys_check_sub <= '1';
              rd_en <= '1';
            elsif sys_check_sub = '1' then
              top_state <= return_state;
              sys_ans_data <= x"000000" & fifo_out;
              sys_check <= '1';
              sys_check_sub <= '0';
              rd_en <= '0';
            end if;
          else
            top_state <= return_state;
            sys_check <= '1';
          end if;
        when others =>
          null;
      end case;
      if activate_fifo = '1' then
        if received = '1' and fifo_full = '0' then
          wr_en <= '1';
          fifo_in <= byte_recv;
        else
          wr_en <= '0';
        end if;
      end if;
    end if;
  end process siki_process;

  clockgen: process
  begin
    simclk <= '0';
    wait for 10 ns;
    simclk <= '1';
    wait for 10 ns;
  end process;
  
end siki_test;
