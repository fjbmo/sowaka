library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity hannya is
  Port(
    MCLK1  : in std_logic; --(original: existed)
--    clk    : in std_logic; --(original: did not existed)
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
end hannya;

architecture hannya of hannya is
--  component clk_changer
--    port(
--      CLKIN_IN        : in std_logic;
--      RST_IN          : in std_logic;
--      CLKFX_OUT       : out std_logic;
--      CLK0_OUT        : out std_logic;
--      LOCKED_OUT      : out std_logic);
--  end component;

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

  component output_buf
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
      wtime : std_logic_vector(15 downto 0) := x"1B16"); -- for CLK:66MHz Baudrate:9600bps --(original: x"1B16", 77MHx: x"1FA5", 88MHz: x"242A", 99MHz: "28B0")
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
      wtime : std_logic_vector(15 downto 0) := x"1B16"); --(original: x"1B16", 77MHz: x"1FA5, 88MHz: x"242A", 99MHz: x"28B0")
    port(
      clk    : in std_logic;
      go     : in std_logic;
      input  : in std_logic_vector(7 downto 0);
      busy   : out std_logic;
      sent   : out std_logic;
      output : out std_logic);
  end component;

  component ife
    port(
      clk           : in std_logic;
      write_mem     : in std_logic;
      write_BRAM    : in std_logic_vector(15 downto 0);
      instruction   : in std_logic_vector(31 downto 0);
      exec_sig      : in std_logic;
      nop_operation : in std_logic;
      nop_num       : in std_logic_vector(2 downto 0);
      set_new_PC    : in std_logic;
      new_PC        : in std_logic_vector(15 downto 0);
      prev_PC       : out std_logic_vector(15 downto 0);
      recv_data     : out std_logic_vector(31 downto 0));
  end component;

  component id
    port(
      clk                 : in std_logic;
      will_jump           : in std_logic;
      write_PC            : in std_logic_vector(15 downto 0);
      recv_instr          : in std_logic_vector(31 downto 0);
      fcc_return          : in std_logic_vector(7 downto 0);
      ALU_to_R_sig_return : in std_logic;
      ALU_to_R_type       : in std_logic;
      ALU_to_R_pointer    : in std_logic_vector(4 downto 0);
      ALU_to_R            : in std_logic_vector(31 downto 0);
      mem_to_R_sig_return : in std_logic;
      mem_to_R_type       : in std_logic;
      mem_to_R_pointer    : in std_logic_vector(4 downto 0);
      mem_to_R            : in std_logic_vector(31 downto 0);
      insert_nop          : out std_logic;
      insert_nop_num      : out std_logic_vector(2 downto 0);
      sys_sig             : out std_logic;
      sys_type            : out std_logic_vector(1 downto 0);
      branch_instr        : out std_logic;
      branch_cond         : out std_logic_vector(3 downto 0);
      fcc_sig             : out std_logic;
      fcc_comp            : out std_logic_vector(1 downto 0);
      fcc_pointer         : out std_logic_vector(2 downto 0);
      fcc_update          : out std_logic_vector(7 downto 0);
      jump_instr          : out std_logic;
      store_instr         : out std_logic;
      load_instr          : out std_logic;
      ALU_to_R_sig        : out std_logic;
      ALU_data_R_type     : out std_logic;
      ALU_write_data_R    : out std_logic_vector(4 downto 0);
      mem_to_R_sig        : out std_logic;
      mem_data_R_type     : out std_logic;
      mem_write_data_R    : out std_logic_vector(4 downto 0);
      now_PC              : out std_logic_vector(15 downto 0);
      add_to_PC           : out std_logic_vector(15 downto 0);
      change_PC           : out std_logic_vector(15 downto 0);
      data_1              : out std_logic_vector(31 downto 0);
      data_2              : out std_logic_vector(31 downto 0);
      data_to_mem         : out std_logic_vector(31 downto 0);
      data_with_offset    : out std_logic_vector(31 downto 0);
      ALU_control         : out std_logic_vector(4 downto 0);
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
      r31_data            : out std_logic_vector(31 downto 0);
      f0_data             : out std_logic_vector(31 downto 0);
      f1_data             : out std_logic_vector(31 downto 0);
      f2_data             : out std_logic_vector(31 downto 0);
      f3_data             : out std_logic_vector(31 downto 0);
      f4_data             : out std_logic_vector(31 downto 0);
      f5_data             : out std_logic_vector(31 downto 0);
      f6_data             : out std_logic_vector(31 downto 0);
      f7_data             : out std_logic_vector(31 downto 0);
      f8_data             : out std_logic_vector(31 downto 0);
      f9_data             : out std_logic_vector(31 downto 0);
      f10_data            : out std_logic_vector(31 downto 0);
      f11_data            : out std_logic_vector(31 downto 0);
      f12_data            : out std_logic_vector(31 downto 0);
      f13_data            : out std_logic_vector(31 downto 0);
      f14_data            : out std_logic_vector(31 downto 0);
      f15_data            : out std_logic_vector(31 downto 0);
      f16_data            : out std_logic_vector(31 downto 0);
      f17_data            : out std_logic_vector(31 downto 0);
      f18_data            : out std_logic_vector(31 downto 0);
      f19_data            : out std_logic_vector(31 downto 0);
      f20_data            : out std_logic_vector(31 downto 0);
      f21_data            : out std_logic_vector(31 downto 0);
      f22_data            : out std_logic_vector(31 downto 0);
      f23_data            : out std_logic_vector(31 downto 0);
      f24_data            : out std_logic_vector(31 downto 0);
      f25_data            : out std_logic_vector(31 downto 0);
      f26_data            : out std_logic_vector(31 downto 0);
      f27_data            : out std_logic_vector(31 downto 0);
      f28_data            : out std_logic_vector(31 downto 0);
      f29_data            : out std_logic_vector(31 downto 0);
      f30_data            : out std_logic_vector(31 downto 0);
      f31_data            : out std_logic_vector(31 downto 0));
  end component;

  component ALU
    port(
      clk                : in std_logic;
      nop_operation      : in std_logic;
      nop_num            : in std_logic_vector(2 downto 0);
      check_branch       : in std_logic;
      which_cond         : in std_logic_vector(3 downto 0);
      change_fcc         : in std_logic;
      change_type        : in std_logic_vector(1 downto 0);
      fcc_part           : in std_logic_vector(2 downto 0);
      fcc_base           : in std_logic_vector(7 downto 0);
      check_jump         : in std_logic;
      write_R_ALU_sig    : in std_logic;
      write_R_ALU_type   : in std_logic;
      write_R_ALU        : in std_logic_vector(4 downto 0);
      base_PC            : in std_logic_vector(15 downto 0);
      add_PC             : in std_logic_vector(15 downto 0);
      jump_PC            : in std_logic_vector(15 downto 0);
      input_1            : in std_logic_vector(31 downto 0);
      input_2            : in std_logic_vector(31 downto 0);
      calcu_type         : in std_logic_vector(4 downto 0);
      new_fcc            : out std_logic_vector(7 downto 0);
      send_to_R_ALU      : out std_logic;
      send_to_R_ALU_type : out std_logic;
      dest_R_ALU         : out std_logic_vector(4 downto 0);
      data_from_ALU      : out std_logic_vector(31 downto 0);
      next_PC_sig        : out std_logic;
      next_PC            : out std_logic_vector(15 downto 0));
  end component;

  component mem
    port(
      clk             : in std_logic;
      nop_operation   : in std_logic;
      nop_num         : in std_logic_vector(2 downto 0);
      use_systemcall  : in std_logic;
      type_of_sys     : in std_logic_vector(1 downto 0);
      use_return_sys  : in std_logic;
      return_sys      : in std_logic_vector(31 downto 0);
      load_heap_sig   : in std_logic;
      load_heap_data  : in std_logic_vector(31 downto 0);
      write_sig       : in std_logic;
      read_sig        : in std_logic;
      send_R_sig      : in std_logic;
      send_R_type     : in std_logic;
      target_R        : in std_logic_vector(4 downto 0);
      address_data    : in std_logic_vector(31 downto 0);
      write_mem_data  : in std_logic_vector(31 downto 0);
      heap_addr       : out std_logic_vector(19 downto 0);
      R_sig           : out std_logic;
      R_type          : out std_logic;
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

  signal clk             : std_logic := '0'; --(original: existed)
--  signal clk_base        : std_logic := '0'; --(original: existed)
  signal iclk            : std_logic := '0'; --(original: existed)
--  signal rst_in          : std_logic := '0'; --(original: existed)
--  signal clk0_out        : std_logic := '0'; --(original: existed)
--  signal locked_out      : std_logic := '0'; --(original: existed)
  signal top_state       : std_logic_vector(4 downto 0) := "11111";
  signal activate_fifo   : std_logic := '0'; --start loading to fifo
  signal fifo_wr_en      : std_logic := '0'; --write to fifo
  signal fifo_rd_en      : std_logic := '0'; --read from fifo
  signal fifo_in         : std_logic_vector(7 downto 0) := x"00"; --data send to fifo
  signal fifo_emp        : std_logic := '0'; --check if fifo is empty
  signal fifo_full       : std_logic := '0'; --check if fifo is full
  signal fifo_out        : std_logic_vector(7 downto 0) := x"00"; --data get from fifo
  signal rx_go           : std_logic := '0';
  signal check_rx        : std_logic := '0'; --if rx is busy(can check if state is "1010")
  signal output_wr_en    : std_logic := '0';
  signal output_rd_en    : std_logic := '0';
  signal output_in       : std_logic_vector(7 downto 0) := x"00"; --data send to output_buf
  signal output_emp      : std_logic := '0'; --check if outbuf_buf is empty
  signal output_full     : std_logic := '0'; --check if outbuf_buf is full
  signal output_out      : std_logic_vector(7 downto 0) := x"00"; --data get from output_buf
  signal tx_go           : std_logic := '0';
  signal check_tx        : std_logic := '0'; --if tx is busy(can check if state is "1010")
  signal load_instr      : std_logic := '0'; --load instruction
  signal received        : std_logic := '0'; --received 8 bits data at rx
  signal sent            : std_logic := '0'; --sent 8 bits data from tx
  signal byte_recv       : std_logic_vector(7 downto 0) := x"00"; --8bits of instruction
  signal full_recv       : std_logic_vector(31 downto 0) := x"00000000"; --32bits of instruction
  signal full_buf        : std_logic_vector(23 downto 0) := x"000000"; --collect instruction here
  signal byte_tran       : std_logic_vector(7 downto 0) := x"00"; --8bits data from register
  signal full_tran       : std_logic_vector(31 downto 0) := x"00000000"; --32bits data from register
  signal load_heap_sig   : std_logic := '0'; --load data from file
  signal load_heap_data  : std_logic_vector(31 downto 0) := x"00000000"; --data from file
  signal write_BRAM      : std_logic_vector(15 downto 0) := x"ffff"; --PC for BRAM
  signal init_PC         : std_logic_vector(15 downto 0) := x"0000"; --first PC
  signal change_PC       : std_logic := '0'; --change PC from init_PC
  signal set_R_sig       : std_logic_vector(1 downto 0) := "00"; --set r30(=$hp), r31(=$ra) with address of the last instruction
  signal exec_counter    : std_logic_vector(15 downto 0) := x"ffff"; --count instruction and set r31(=$ra) with this
  signal start_exec      : std_logic := '0'; --start execution signal
  signal print_regs      : std_logic_vector(5 downto 0) := "000000"; --print registers
  signal step_cont       : std_logic_vector(1 downto 0) := "00"; --controll step_counter(unsupported)
  signal sys_call_act    : std_logic := '0'; --begin systemcall
  signal sys_call_stat   : std_logic_vector(1 downto 0) := "00"; --sys_call type
  signal sys_ans_data    : std_logic_vector(31 downto 0) := x"00000000"; --result of syscall
  signal sys_check       : std_logic := '0'; --check if systemcall has ended
  signal use_sys_sig     : std_logic := '0'; --write data from systemcall to register
  signal sys_check_sub   : std_logic := '0'; --used in systemcall
  signal return_state    : std_logic_vector(4 downto 0) := "00000"; --return to this state from systemcall
  signal r0_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal r1_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal r2_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal r3_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal r4_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal r5_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal r6_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal r7_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal r8_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal r9_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal r10_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r11_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r12_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r13_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r14_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r15_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r16_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r17_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r18_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r19_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r20_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r21_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r22_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r23_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r24_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r25_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r26_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r27_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r28_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r29_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r30_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal r31_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f0_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal f1_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal f2_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal f3_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal f4_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal f5_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal f6_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal f7_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal f8_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal f9_data         : std_logic_vector(31 downto 0) := x"00000000";
  signal f10_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f11_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f12_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f13_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f14_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f15_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f16_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f17_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f18_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f19_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f20_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f21_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f22_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f23_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f24_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f25_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f26_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f27_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f28_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f29_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f30_data        : std_logic_vector(31 downto 0) := x"00000000";
  signal f31_data        : std_logic_vector(31 downto 0) := x"00000000";

  --to IF
  signal nop_operation : std_logic := '0';
  signal nop_num       : std_logic_vector(2 downto 0) := "000";

  signal set_PC_sig    : std_logic := '0';
  signal set_PC        : std_logic_vector(15 downto 0) := x"0000";

  --to ID
  signal write_PC            : std_logic_vector(15 downto 0) := x"0000";
  signal recv_instr          : std_logic_vector(31 downto 0) := x"00000000";
  signal fcc_return          : std_logic_vector(7 downto 0) := "00000000";
  signal ALU_to_R_sig_return : std_logic := '0';
  signal ALU_to_R_type       : std_logic := '0';
  signal ALU_to_R_pointer    : std_logic_vector(4 downto 0) := "00000";
  signal ALU_to_R            : std_logic_vector(31 downto 0) := x"00000000";
  signal mem_to_R_sig_return : std_logic := '0';
  signal mem_to_R_type       : std_logic := '0';
  signal mem_to_R_pointer    : std_logic_vector(4 downto 0) := "00000";
  signal mem_to_R            : std_logic_vector(31 downto 0) := x"00000000";

  signal nop_operation_base  : std_logic := '0';
  signal nop_num_base        : std_logic_vector(2 downto 0) := "000";

  --to ALU
  signal check_branch     : std_logic := '0';
  signal which_cond       : std_logic_vector(3 downto 0) := "0000";
  signal change_fcc       : std_logic := '0';
  signal change_type      : std_logic_vector(1 downto 0) := "00";
  signal fcc_part         : std_logic_vector(2 downto 0) := "000";
  signal fcc_base         : std_logic_vector(7 downto 0) := "00000000";
  signal check_jump       : std_logic := '0';
  signal write_R_ALU_sig  : std_logic := '0';
  signal write_R_ALU_type : std_logic := '0';
  signal write_R_ALU      : std_logic_vector(4 downto 0) := "00000";
  signal base_PC          : std_logic_vector(15 downto 0) := x"0000";
  signal add_PC           : std_logic_vector(15 downto 0) := x"0000";
  signal jump_PC          : std_logic_vector(15 downto 0) := x"0000";
  signal input_1          : std_logic_vector(31 downto 0) := x"00000000";
  signal input_2          : std_logic_vector(31 downto 0) := x"00000000";
  signal calcu_type       : std_logic_vector(4 downto 0) := "00000";

  signal goto_new_PC      : std_logic := '0';
  signal new_PC           : std_logic_vector(15 downto 0) := x"0000";

  --to mem
  signal use_systemcall           : std_logic := '0';
  signal type_of_sys              : std_logic_vector(1 downto 0) := "00";
  signal use_return_sys           : std_logic := '0';
  signal return_sys               : std_logic_vector(31 downto 0) := x"00000000";
  signal write_sig                : std_logic := '0';
  signal read_sig                 : std_logic := '0';
  signal send_R_sig               : std_logic := '0';
  signal send_R_type              : std_logic := '0';
  signal target_R                 : std_logic_vector(4 downto 0) := "00000";
  signal address_data             : std_logic_vector(31 downto 0) := x"00000000";
  signal write_mem_data           : std_logic_vector(31 downto 0) := x"00000000";

  signal heap_counter             : std_logic_vector(19 downto 0) := x"00000";
  signal mem_to_R_sig_return_base : std_logic := '0';
  signal mem_to_R_type_base       : std_logic := '0';
  signal mem_to_R_pointer_base    : std_logic_vector(4 downto 0) := "00000";
  signal mem_to_R_base            : std_logic_vector(31 downto 0) := x"00000000";

  --system controll
  signal endianness_mode : std_logic := '0'; --little-endian mode when '0' and big-endian mode when '1'
  signal step_counter    : std_logic_vector(35 downto 0) := x"fffffffff"; --stop when x steps were done(default is x"ffffffffff": cannot pass x"0000000000")(unsupported)
  signal print_register  : std_logic := '0'; --print register when '1'

begin
  ib: IBUFG --(original: existed)
    port map(
      i => MCLK1,
      o => iclk);
  bg: BUFG
    port map(
      i => iclk,
--      o => clk_base); --(use to change Hz)
      o => clk);
--  CLK_CHANGE: clk_changer
--    port map(
--      CLKIN_IN => clk_base,
--      RST_IN => rst_in,
--      CLKFX_OUT => clk,
--      CLK0_OUT => clk0_out,
--      LOCKED_OUT => locked_out);
  FIFO: fifo8
    port map(
      CLK => clk,
      WR_EN => fifo_wr_en,
      RD_EN => fifo_rd_en,
      DIN => fifo_in,
      EMPTY => fifo_emp,
      FULL => fifo_full,
      DOUT => fifo_out);
  OUTPUT_B: output_buf
    port map(
      CLK => clk,
      WR_EN => output_wr_en,
      RD_EN => output_rd_en,
      DIN => output_in,
      EMPTY => output_emp,
      FULL => output_full,
      DOUT => output_out);
  HANNYA_RX: rx
    generic map(
      wtime => x"1B16") --(original: x"1B16", 77MHz: x"1FA5", 88MHz: x"242A", 99MHz: x"28B0")
    port map(
      clk => clk,
      go => rx_go,
      input => RS_RX,				
      busy => check_rx,
      received => received,
      output => byte_recv);
  HANNYA_TX: tx
    generic map(
      wtime => x"1B16") --(original: x"1B16", 77MHz: x"1FA5", 88MHz: x"242A", 99MHz: x"28B0")
    port map(
      clk => clk,
      go => tx_go,
      input => byte_tran,
      busy => check_tx,
      sent => sent,
      output => RS_TX);
  HANNYA_IFE: ife
    port map(
      clk => clk,
      write_mem => load_instr,
      write_BRAM => write_BRAM,
      instruction => full_recv,
      exec_sig => start_exec,
      nop_operation => nop_operation,
      nop_num => nop_num,
      set_new_PC => set_PC_sig,
      new_PC => set_PC,
      prev_PC => write_PC,
      recv_data => recv_instr);
  HANNYA_ID: id
    port map(
      clk => clk,
      will_jump => set_PC_sig,
      write_PC => write_PC,
      recv_instr => recv_instr,
      fcc_return => fcc_return,
      ALU_to_R_sig_return => ALU_to_R_sig_return,
      ALU_to_R_type => ALU_to_R_type,
      ALU_to_R_pointer => ALU_to_R_pointer,
      ALU_to_R => ALU_to_R,
      mem_to_R_sig_return => mem_to_R_sig_return,
      mem_to_R_type =>mem_to_R_type,
      mem_to_R_pointer => mem_to_R_pointer,
      mem_to_R => mem_to_R,
      insert_nop => nop_operation_base,
      insert_nop_num => nop_num_base,
      sys_sig => use_systemcall,
      sys_type => type_of_sys,
      branch_instr => check_branch,
      branch_cond => which_cond,
      fcc_sig => change_fcc,
      fcc_comp => change_type,
      fcc_pointer => fcc_part,
      fcc_update => fcc_base,
      jump_instr => check_jump,
      store_instr => write_sig,
      load_instr => read_sig,
      ALU_to_R_sig => write_R_ALU_sig,
      ALU_data_R_type => write_R_ALU_type,
      ALU_write_data_R => write_R_ALU,
      mem_to_R_sig => send_R_sig,
      mem_data_R_type => send_R_type,
      mem_write_data_R => target_R,
      now_PC => base_PC,
      add_to_PC => add_PC,
      change_PC => jump_PC,
      data_1 => input_1,
      data_2 => input_2,
      data_to_mem => write_mem_data,
      data_with_offset => address_data,
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
      r31_data => r31_data,
      f0_data => f0_data,
      f1_data => f1_data,
      f2_data => f2_data,
      f3_data => f3_data,
      f4_data => f4_data,
      f5_data => f5_data,
      f6_data => f6_data,
      f7_data => f7_data,
      f8_data => f8_data,
      f9_data => f9_data,
      f10_data => f10_data,
      f11_data => f11_data,
      f12_data => f12_data,
      f13_data => f13_data,
      f14_data => f14_data,
      f15_data => f15_data,
      f16_data => f16_data,
      f17_data => f17_data,
      f18_data => f18_data,
      f19_data => f19_data,
      f20_data => f20_data,
      f21_data => f21_data,
      f22_data => f22_data,
      f23_data => f23_data,
      f24_data => f24_data,
      f25_data => f25_data,
      f26_data => f26_data,
      f27_data => f27_data,
      f28_data => f28_data,
      f29_data => f29_data,
      f30_data => f30_data,
      f31_data => f31_data);
  HANNYA_ALU: ALU
    port map(
      clk => clk,
      nop_operation => nop_operation,
      nop_num => nop_num,
      check_branch => check_branch,
      which_cond => which_cond,
      change_fcc => change_fcc,
      change_type => change_type,
      fcc_part => fcc_part,
      fcc_base => fcc_base,
      check_jump => check_jump,
      write_R_ALU_sig => write_R_ALU_sig,
      write_R_ALU_type => write_R_ALU_type,
      write_R_ALU => write_R_ALU,
      base_PC => base_PC,
      add_PC => add_PC,
      jump_PC => jump_PC,
      input_1 => input_1,
      input_2 => input_2,
      calcu_type => calcu_type,
      new_fcc => fcc_return,
      send_to_R_ALU => ALU_to_R_sig_return,
      send_to_R_ALU_type => ALU_to_R_type,
      dest_R_ALU => ALU_to_R_pointer,
      data_from_ALU => ALU_to_R,
      next_PC_sig => goto_new_PC,
      next_PC => new_PC);
  HANNYA_MEM: mem
    port map(
      clk => clk,
      nop_operation => nop_operation,
      nop_num => nop_num,
      use_systemcall => use_systemcall,
      type_of_sys => type_of_sys,
      use_return_sys => use_return_sys,
      return_sys => return_sys,
      load_heap_sig => load_heap_sig,
      load_heap_data => load_heap_data,
      write_sig => write_sig,
      read_sig => read_sig,
      send_R_sig => send_R_sig,
      send_R_type => send_R_type,
      target_R => target_R,
      address_data => address_data,
      write_mem_data => write_mem_data,
      heap_addr => heap_counter,
      R_sig => mem_to_R_sig_return_base,
      R_type => mem_to_R_type_base,
      R_num => mem_to_R_pointer_base,
      data_out => mem_to_R_base,
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

  nop_operation <= '1' when top_state = "11000" else
                   nop_operation_base;

  nop_num <= "111" when top_state = "11000" and sys_check_sub = '0' else
             "001" when top_state = "11000" and sys_check_sub = '1' else
             nop_num_base;

  set_PC_sig <= '1' when change_PC = '0' else
                goto_new_PC;

  set_PC <= init_PC when change_PC = '0' else
            new_PC;

  mem_to_R_sig_return <= '1' when set_R_sig(1) = '1' else
                         mem_to_R_sig_return_base;

  mem_to_R_type <= '0' when set_R_sig(1) = '1' else
                   mem_to_R_type_base;

  mem_to_R_pointer <= "111" & set_R_sig when set_R_sig(1) = '1' else
                      mem_to_R_pointer_base;
  
  mem_to_R <= x"000" & heap_counter when set_R_sig = "10" else
              x"0000" & exec_counter when set_R_sig = "11" else
              mem_to_R_base;

  use_return_sys <= use_sys_sig;

  return_sys <= sys_ans_data;

  full_tran <= r0_data when print_regs = "000000" else
               r1_data when print_regs = "000001" else
               r2_data when print_regs = "000010" else
               r3_data when print_regs = "000011" else
               r4_data when print_regs = "000100" else
               r5_data when print_regs = "000101" else
               r6_data when print_regs = "000110" else
               r7_data when print_regs = "000111" else
               r8_data when print_regs = "001000" else
               r9_data when print_regs = "001001" else
               r10_data when print_regs = "001010" else
               r11_data when print_regs = "001011" else
               r12_data when print_regs = "001100" else
               r13_data when print_regs = "001101" else
               r14_data when print_regs = "001110" else
               r15_data when print_regs = "001111" else
               r16_data when print_regs = "010000" else
               r17_data when print_regs = "010001" else
               r18_data when print_regs = "010010" else
               r19_data when print_regs = "010011" else
               r20_data when print_regs = "010100" else
               r21_data when print_regs = "010101" else
               r22_data when print_regs = "010110" else
               r23_data when print_regs = "010111" else
               r24_data when print_regs = "011000" else
               r25_data when print_regs = "011001" else
               r26_data when print_regs = "011010" else
               r27_data when print_regs = "011011" else
               r28_data when print_regs = "011100" else
               r29_data when print_regs = "011101" else
               r30_data when print_regs = "011110" else
               r31_data when print_regs = "011111" else
               f0_data when print_regs = "100000" else
               f1_data when print_regs = "100001" else
               f2_data when print_regs = "100010" else
               f3_data when print_regs = "100011" else
               f4_data when print_regs = "100100" else
               f5_data when print_regs = "100101" else
               f6_data when print_regs = "100110" else
               f7_data when print_regs = "100111" else
               f8_data when print_regs = "101000" else
               f9_data when print_regs = "101001" else
               f10_data when print_regs = "101010" else
               f11_data when print_regs = "101011" else
               f12_data when print_regs = "101100" else
               f13_data when print_regs = "101101" else
               f14_data when print_regs = "101110" else
               f15_data when print_regs = "101111" else
               f16_data when print_regs = "110000" else
               f17_data when print_regs = "110001" else
               f18_data when print_regs = "110010" else
               f19_data when print_regs = "110011" else
               f20_data when print_regs = "110100" else
               f21_data when print_regs = "110101" else
               f22_data when print_regs = "110110" else
               f23_data when print_regs = "110111" else
               f24_data when print_regs = "111000" else
               f25_data when print_regs = "111001" else
               f26_data when print_regs = "111010" else
               f27_data when print_regs = "111011" else
               f28_data when print_regs = "111100" else
               f29_data when print_regs = "111101" else
               f30_data when print_regs = "111110" else
               f31_data;

  hannya_process: process(clk)
  begin
    if rising_edge(clk) then
      case top_state is
        when "11111" => --start
          top_state <= "00000";
          rx_go <= '1';
        when "00000" => --waiting for instruction
          if received = '1' then
            top_state <= "00010";
            if endianness_mode = '0' then --little endian mode
              full_buf(7 downto 0) <= byte_recv;
            else --big endian mode
              full_buf(23 downto 16) <= byte_recv;
            end if;
          end if;
        when "00001" => --reading instruction floating point part(7 downto 0)(little)
          if load_heap_data = x"7000003f" then
            top_state <= "00101";
          else
            if received = '1' then
              top_state <= "00010";
              load_heap_sig <= '1';
              if endianness_mode = '0' then
                full_buf(7 downto 0) <= byte_recv;
              else
                full_buf(23 downto 16) <= byte_recv;
              end if;
            end if;
          end if;
        when "00010" => --reading instruction floating poing part(15 downto 8)(little)
          load_heap_sig <= '0';
          if received = '1' then
            top_state <= "00011";
            full_buf(15 downto 8) <= byte_recv;
          end if;
        when "00011" => --reading instruction floating poing part(23 downto 16)(little)
          if received = '1' then
            top_state <= "00100";
            if endianness_mode = '0' then
              full_buf(23 downto 16) <= byte_recv;
            else
              full_buf(7 downto 0) <= byte_recv;
            end if;
          end if;
        when "00100" => --reading instruction floating poing part(31 downto 24)(little)
          if received = '1' then
            top_state <= "00001";
            if endianness_mode = '0' then
              load_heap_data <= byte_recv & full_buf;
            else
              load_heap_data <= full_buf & byte_recv;
            end if;
          end if;
        when "00101" => --reading instruction initial PC part(7 downto 0)(little)
          if received = '1' then
            top_state <= "00110";
            if endianness_mode = '0' then
              init_PC(7 downto 0) <= byte_recv;
            end if;
          end if;
        when "00110" => --reading insturction initial PC part(15 downto 8)(little)
          if received = '1' then
            top_state <= "00111";
            if endianness_mode = '0' then
              init_PC(15 downto 8) <= byte_recv;
            end if;
          end if;
        when "00111" => --reading instruction initial PC part(23 downto 16)(little)
          if received = '1' then
            top_state <= "01000";
            if endianness_mode = '1' then
              init_PC(15 downto 8) <= byte_recv;
            end if;
          end if;
        when "01000" => --reading instruction initial PC part(31 downto 24)(little)
          if received = '1' then
            top_state <= "01001";
            if endianness_mode = '1' then
              init_PC(7 downto 0) <= byte_recv;
            end if;
          end if;
        when "01001" => --reading instruction body part(7 downto 0)(little)
          if full_recv = x"ffffffff" then
            top_state <= "01101";
            load_instr <= '0';
            rx_go <= '0';
          else
            if received = '1' then
              top_state <= "01010";
              if endianness_mode = '0' then
                full_buf(7 downto 0) <= byte_recv;
              else
                full_buf(23 downto 16) <= byte_recv;
              end if;
              write_BRAM <= write_BRAM + x"0001";
              exec_counter <= exec_counter + x"0001";
            end if;
          end if;
        when "01010" => --reading instruction body part(15 downto 8)(little)
          if received = '1' then
            top_state <= "01011";
            full_buf(15 downto 8) <= byte_recv;
          end if;
        when "01011" => --reading instruction body part(23 downto 16)(little)
          if received = '1' then
            top_state <= "01100";
            if endianness_mode = '0' then
              full_buf(23 downto 16) <= byte_recv;
            else
              full_buf(7 downto 0) <= byte_recv;
            end if;
          end if;
        when "01100" => --reading instruction body part(31 downto 24)(little)
          if received = '1' then
            top_state <= "01001";
            load_instr <= '1';
            if endianness_mode = '0' then
              full_recv <= byte_recv & full_buf;
            else
              full_recv <= full_buf & byte_recv;
            end if;
          end if;
        when "01101" => --require data(send x"aa")
          top_state <= "01110";
          rx_go <= '1';
          output_wr_en <= '1';
          output_in <= x"aa";
          activate_fifo <= '1';
          set_R_sig <= "10";
          start_exec <= '1';
        when "01110" =>  --execute instruction
          output_wr_en <= '0';
          if sys_call_act = '1' then --activate systemcall
            top_state <= "11000";
            return_state <= "01110";
            if sys_call_stat = "01" then --systemcall print char: set register r4
              print_regs <= "000100";
            else
              print_regs <= "000000";
            end if;
          else
            if recv_instr = x"ffffffff" and goto_new_PC = '0' then
              top_state <= "01111";
            end if;
            print_regs <= "000000";
          end if;
          sys_check <= '0';
          use_sys_sig <= '0';
          if change_PC = '0' then
            change_PC <= '1';
          end if;
          if set_R_sig /= "00" then
            set_R_sig <= set_R_sig + "01";
          end if;
        when "01111" => --halt instruction is at ID
          top_state <= "10000";
          output_wr_en <= '0';
          if set_R_sig /= "00" then
            set_R_sig <= set_R_sig + "01";
          end if;
        when "10000" => --halt instruction is at ALU
          top_state <= "10001";
          output_wr_en <= '0';
        when "10001" => --halt instruction is at MEM
          top_state <= "10010";
          output_wr_en <= '0';
        when "10010" => --halt instruction is at WR(Writing Register)
          if print_register <= '0' then
            top_state <= "10111";
          else
            top_state <= "10011";
          end if;
          output_wr_en <= '0';
        when "10011" => --print register
          if output_full = '0' then
            top_state <= "10100";
            output_wr_en <= '1';
            output_in <= full_tran(31 downto 24);
          else
            output_wr_en <= '0';
          end if;
        when "10100" =>
          if output_full = '0' then
            top_state <= "10101";
            output_wr_en <= '1';
            output_in <= full_tran(23 downto 16);
          else
            output_wr_en <= '0';
          end if;
        when "10101" =>
          if output_full = '0' then
            top_state <= "10110";
            output_wr_en <= '1';
            output_in <= full_tran(15 downto 8);
          else
            output_wr_en <= '0';
          end if;
        when "10110" =>
          if output_full = '0' then
            if print_regs = "111111" then
              top_state <= "10111";
            else
              top_state <= "10011";
            end if;
            output_wr_en <= '1';
            output_in <= full_tran(7 downto 0);
            print_regs <= print_regs + "000001";
          else
            output_wr_en <= '0';
          end if;  
        when "10111" => --end state
          output_wr_en <= '0';
        when "11000" =>
          if sys_call_stat = "01" then --special state sys_call:print character v0(=r2) = x"0000000b" || print a0(=r4)(7 downto 0)
            if sys_check_sub = '0' and output_full = '0' then
              sys_check_sub <= '1';
              output_wr_en <= '1';
              output_in <= r4_data(7 downto 0);
            elsif sys_check_sub = '1' and output_full = '0' then
              top_state <= return_state;
              sys_check <= '1';
              sys_check_sub <= '0';
              output_wr_en <= '0';
            else
              output_wr_en <= '0';
            end if;
          elsif sys_call_stat = "10" then --special state sys_call:read character v0(=r2) = x"0000000c" || v0 <- x"000000" & read byte
            if sys_check_sub = '0' and fifo_emp = '0' then
              sys_check_sub <= '1';
              fifo_rd_en <= '1';
            elsif sys_check_sub = '1' then
              top_state <= return_state;
              sys_ans_data <= x"000000" & fifo_out;
              sys_check <= '1';
              sys_check_sub <= '0';
              fifo_rd_en <= '0';
              use_sys_sig <= '1';
            end if;
          else
            top_state <= return_state;
            sys_check <= '1';
          end if;
        when others =>
          null;
      end case;

      if activate_fifo = '1' then --read SLD file
        if received = '1' and fifo_full = '0' then
          fifo_wr_en <= '1';
          fifo_in <= byte_recv;
        else
          fifo_wr_en <= '0';
        end if;
      end if;

      if output_emp = '0' and check_tx = '0' then --print data
        if output_rd_en = '0' then
          tx_go <= '0';
          output_rd_en <= '1';
        else
          tx_go <= '1';
          output_rd_en <= '0';
          byte_tran <= output_out;
        end if;
      else
        tx_go <= '0';
      end if;  

    end if;
  end process hannya_process;
end hannya;
