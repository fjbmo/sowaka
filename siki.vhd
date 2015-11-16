library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity siki is
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
end siki;

architecture siki of siki is
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

  component ife
    port(
      clk         : in std_logic;
      state       : in std_logic_vector(1 downto 0);
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
      r1_data             : out std_logic_vector(31 downto 0);
      r0_data             : out std_logic_vector(31 downto 0);
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
      clk            : in std_logic;
      state          : in std_logic_vector(1 downto 0);
      write_sig      : in std_logic;
      read_sig       : in std_logic;
      send_R_sig     : in std_logic;
      target_R       : in std_logic_vector(4 downto 0);
      write_data     : in std_logic_vector(31 downto 0);
      write_mem_data : in std_logic_vector(31 downto 0);
      R_sig          : out std_logic;
      R_num          : out std_logic_vector(4 downto 0);
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
      XWA    : out std_logic;
      XFT    : out std_logic;
      XZBE   : out std_logic_vector(3 downto 0);
      ZA     : out std_logic_vector(19 downto 0));
  end component;

  signal clk        : std_logic := '0';
  signal iclk       : std_logic := '0';
  signal state      : std_logic_vector(1 downto 0) := "00";
  signal top_state  : std_logic_vector(4 downto 0) := "11111";
  signal rx_go      : std_logic := '0';
  signal check_rx   : std_logic := '0'; --if rx is busy(can check if state is "1010")
  signal tx_go      : std_logic := '0';
  signal check_tx   : std_logic := '0'; --if tx is busy(can check if state is "1010")
  signal load_instr : std_logic := '0'; --load instruction
  signal received   : std_logic := '0'; --received 8 bits data at rx
  signal sent       : std_logic := '0'; --sent 8 bits data from tx
  signal byte_recv  : std_logic_vector(7 downto 0) := x"00"; --8bits of instruction
  signal full_recv  : std_logic_vector(31 downto 0) := x"00000000"; --32bits of instruction
  signal full_buf   : std_logic_vector(31 downto 0) := x"00000000"; --collect instruction here
  signal byte_tran  : std_logic_vector(7 downto 0) := x"00"; --8bits data from register
  signal full_tran  : std_logic_vector(31 downto 0) := x"00000000"; --32bits data from register
  signal write_BRAM : std_logic_vector(15 downto 0) := x"ffff"; --PC for BRAM
  signal print_regs : std_logic_vector(4 downto 0) := "00000"; --print registers
  signal r0_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r1_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r2_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r3_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r4_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r5_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r6_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r7_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r8_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r9_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r10_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r11_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r12_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r13_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r14_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r15_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r16_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r17_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r18_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r19_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r20_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r21_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r22_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r23_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r24_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r25_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r26_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r27_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r28_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r29_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r30_data    : std_logic_vector(31 downto 0) := x"00000000";
  signal r31_data    : std_logic_vector(31 downto 0) := x"00000000";

  --to IF
  signal next_PC : std_logic_vector(15 downto 0) := x"0000";

  --to ID
  signal write_PC            : std_logic_vector(15 downto 0) := x"0000";
  signal instr               : std_logic_vector(31 downto 0) := x"00000000";
  signal mem_to_R_sig_return : std_logic := '0';
  signal mem_to_R_pointer    : std_logic_vector(4 downto 0) := "00000";
  signal mem_to_R            : std_logic_vector(31 downto 0) := x"00000000";

  --to ALU
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

  --to mem
  signal write_sig      : std_logic := '0';
  signal read_sig       : std_logic := '0';
  signal send_R_sig     : std_logic := '0';
  signal target_R       : std_logic_vector(4 downto 0) := "00000";
  signal write_addr     : std_logic_vector(31 downto 0) := x"00000000";
  signal write_data     : std_logic_vector(31 downto 0) := x"00000000";
  signal write_mem_data : std_logic_vector(31 downto 0) := x"00000000";

begin
  ib: IBUFG
    port map(
      i => MCLK1,
      o => iclk);
  bg: BUFG
    port map(
      i => iclk,
      o => clk);
  SIKI_RX: rx
    generic map(
      wtime => x"1B16")
    port map(
      clk => clk,
      go => rx_go,
      input => RS_RX,
      busy => check_rx,
      received => received,
      output => byte_recv);
  SIKI_TX: tx
    generic map(
      wtime => x"1B16")
    port map(
      clk => clk,
      go => tx_go,
      input => byte_tran,
      busy => check_tx,
      sent => sent,
      output => RS_TX);
  SIKI_IFE: ife
    port map(
      clk => clk,
      state => state,
      write_mem => load_instr,
      write_BRAM => write_BRAM,
      next_PC => next_PC,
      instruction => full_recv,
      prev_PC => write_PC,
      recv_data => instr);
  SIKI_ID: id
    port map(
      clk => clk,
      state => state,
      write_PC => write_PC,
      instr => instr,
      mem_to_R_sig_return => mem_to_R_sig_return,
      mem_to_R_pointer => mem_to_R_pointer,
      mem_to_R => mem_to_R,
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
      clk => clk,
      state => state,
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
      store_mem => write_sig,
      load_mem => read_sig,
      send_to_R => send_R_sig,
      dest_R => target_R,
      new_PC => next_PC,
      output => write_data,
      mem_data => write_mem_data);
  SIKI_MEM: mem
    port map(
      clk => clk,
      state => state,
      write_sig => write_sig,
      read_sig => read_sig,
      send_R_sig => send_R_sig,
      target_R => target_R,
      write_data => write_data,
      write_mem_data => write_mem_data,
      R_sig => mem_to_R_sig_return,
      R_num => mem_to_R_pointer,
      data_out => mem_to_R,
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

  siki_process: process(clk)
  begin
    if rising_edge(clk) then
      case top_state is
        when "11111" => --start
          top_state <= "00000";
          rx_go <= '1';
        when "00000" => --waiting for instruction
          if received = '1' then
            top_state <= "00010";
            full_buf(31 downto 24) <= byte_recv;
          end if;
        when "00001" => --reading instruction(31 downto 24)
          if full_buf = x"ffffffff" then
            top_state <= "00101";
            load_instr <= '0';
            rx_go <= '0';
          else
            if received = '1' then
              top_state <= "00010";
              load_instr <= '1';
              full_recv <= full_buf;
              full_buf(31 downto 24) <= byte_recv;
              write_BRAM <= write_BRAM + x"0001";
            end if;
          end if;
        when "00010" => --reading instruction(23 downto 16)
          if received = '1' then
            top_state <= "00011";
            full_buf(23 downto 16) <= byte_recv;
          end if;
        when "00011" => --reading instruction(15 downto 8)
          if received = '1' then
            top_state <= "00100";
            full_buf(15 downto 8) <= byte_recv;
          end if;
        when "00100" => --reading instruction(7 downto 0)
          if received = '1' then
            top_state <= "00001";
            full_buf(7 downto 0) <= byte_recv;
          end if;
        when "00101" => --execute instruction
          if instr = x"00000000" and state = "00" then
            top_state <= "00110";
          end if;
          state <= state + "01";
        when "00110" => --halt instruction is at IFE
          if state = "00" then
            top_state <= "00111";
          end if;
          state <= state + "01";
        when "00111" => --halt instruction is at ID
          if state = "00" then
            top_state <= "01000";
          end if;
          state <= state + "01";
        when "01000" => --halt instruction is at ALU
          if state = "00" then
            top_state <= "01001";
          end if;
          state <= state + "01";
        when "01001" => --halt instruction is at MEM
          if state = "00" then
            top_state <= "01010";
          end if;
          state <= state + "01";
        when "01010" => --halt instruction is at WR(Writing Register)
          if state = "00" then
            top_state <= "01011";
          end if;
          state <= state + "01";
        when "01011" => --print register
          if check_tx = '0' then
            top_state <= "01100";
            tx_go <= '1';
            byte_tran <= full_tran(31 downto 24);
          else
            tx_go <= '0';
          end if;
        when "01100" =>
          if check_tx = '0' then
            top_state <= "01101";
            tx_go <= '1';
            byte_tran <= full_tran(23 downto 16);
          else
            tx_go <= '0';
          end if;
        when "01101" =>
          if check_tx = '0' then
            top_state <= "01110";
            tx_go <= '1';
            byte_tran <= full_tran(15 downto 8);
          else
            tx_go <= '0';
          end if;
        when "01110" =>
          if check_tx = '0' then
            if print_regs = "11111" then
              top_state <= "01111";
            else
              top_state <= "01011";
            end if;
            tx_go <= '1';
            byte_tran <= full_tran(7 downto 0);
            print_regs <= print_regs + "00001";
          else
            tx_go <= '0';
          end if;
        when others =>
          tx_go <= '0';
      end case;
    end if;
  end process siki_process;
end siki;
