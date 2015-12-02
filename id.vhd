library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity id is
  Port(
    clk                 : in std_logic;
    state               : in std_logic_vector(1 downto 0);
    write_PC            : in std_logic_vector(15 downto 0); --(present)PC
    instr               : in std_logic_vector(31 downto 0);
    mem_to_R_sig_return : in std_logic; --signal from memory whether to write
    mem_to_R_pointer    : in std_logic_vector(4 downto 0); --write data to this register
    mem_to_R            : in std_logic_vector(31 downto 0); --data from memory
    sys_sig             : out std_logic; --call system call
    sys_type            : out std_logic_vector(1 downto 0); --system call type
    branch_instr        : out std_logic;
    branch_cond         : out std_logic_vector(2 downto 0);
    jump_instr          : out std_logic;
    store_instr         : out std_logic;
    load_instr          : out std_logic;
    mem_write           : out std_logic; --write data to memory
    mem_to_R_sig        : out std_logic; --write data to register from memory
    write_data_R        : out std_logic_vector(4 downto 0); --write to this register
    now_PC              : out std_logic_vector(15 downto 0);
    add_to_PC           : out std_logic_vector(15 downto 0); --add this to PC
    change_PC           : out std_logic_vector(15 downto 0); --jump to this PC
    data_1              : out std_logic_vector(31 downto 0);
    data_2              : out std_logic_vector(31 downto 0);
    data_to_mem         : out std_logic_vector(31 downto 0); --store this data
    ALU_control         : out std_logic_vector(3 downto 0); --write this
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
end id;

architecture id of id is
  signal sys_sig_buf      : std_logic := '0';
  signal sys_type_buf     : std_logic_vector(1 downto 0) := "00";
  signal branch_instr_buf : std_logic := '0';
  signal branch_cond_buf  : std_logic_vector(2 downto 0) := "000";
  signal jump_instr_buf   : std_logic := '0';
  signal store_instr_buf  : std_logic := '0';
  signal load_instr_buf   : std_logic := '0';
  signal mem_write_buf    : std_logic := '0';
  signal mem_to_R_sig_buf : std_logic := '0';
  signal write_data_R_buf : std_logic_vector(4 downto 0) := "00000";
  signal now_PC_buf       : std_logic_vector(15 downto 0) := x"0000";
  signal add_to_PC_buf    : std_logic_vector(15 downto 0) := x"0000";
  signal change_PC_buf    : std_logic_vector(15 downto 0) := x"0000";
  signal data_1_buf       : std_logic_vector(31 downto 0) := x"00000000";
  signal data_2_buf       : std_logic_vector(31 downto 0) := x"00000000";
  signal data_to_mem_buf  : std_logic_vector(31 downto 0) := x"00000000";
  signal ALU_control_buf  : std_logic_vector(3 downto 0) := "0000";

  signal head             : std_logic_vector(5 downto 0) := "000000";
  signal rs_pointer       : std_logic_vector(4 downto 0) := "00000";
  signal rt_pointer       : std_logic_vector(4 downto 0) := "00000";
  signal rd_pointer       : std_logic_vector(4 downto 0) := "00000";
  signal sa               : std_logic_vector(4 downto 0) := "00000";
  signal tail             : std_logic_vector(5 downto 0) := "000000";
  signal offset           : std_logic_vector(15 downto 0) := x"0000";
  signal instr_index      : std_logic_vector(25 downto 0) := "00000000000000000000000000";
  signal code             : std_logic_vector(25 downto 6) := x"00000";
  signal rs               : std_logic_vector(31 downto 0) := x"00000000";
  signal rt               : std_logic_vector(31 downto 0) := x"00000000";
  signal sys_sig_sub      : std_logic := '0';
  signal sys_type_sub     : std_logic_vector(1 downto 0) := "00";
  signal branch_instr_sub : std_logic := '0';
  signal branch_cond_sub  : std_logic_vector(2 downto 0) := "000";
  signal jump_instr_sub   : std_logic := '0';
  signal store_instr_sub  : std_logic := '0';
  signal load_instr_sub   : std_logic := '0';
  signal mem_write_sub    : std_logic := '0';
  signal mem_to_R_sig_sub : std_logic := '0';
  signal write_data_R_sub : std_logic_vector(4 downto 0) := "00000";
  signal now_PC_sub       : std_logic_vector(15 downto 0) := x"0000";
  signal add_to_PC_sub    : std_logic_vector(15 downto 0) := x"0000";
  signal change_PC_sub    : std_logic_vector(15 downto 0) := x"0000";
  signal data_1_sub       : std_logic_vector(31 downto 0) := x"00000000";
  signal data_2_sub       : std_logic_vector(31 downto 0) := x"00000000";
  signal data_to_mem_sub  : std_logic_vector(31 downto 0) := x"00000000";
  signal ALU_control_sub  : std_logic_vector(3 downto 0) := "0000";
  signal r0               : std_logic_vector(31 downto 0) := x"00000000";
  signal r1               : std_logic_vector(31 downto 0) := x"00000000";
  signal r2               : std_logic_vector(31 downto 0) := x"00000000";
  signal r3               : std_logic_vector(31 downto 0) := x"00000000";
  signal r4               : std_logic_vector(31 downto 0) := x"00000000";
  signal r5               : std_logic_vector(31 downto 0) := x"00000000";
  signal r6               : std_logic_vector(31 downto 0) := x"00000000";
  signal r7               : std_logic_vector(31 downto 0) := x"00000000";
  signal r8               : std_logic_vector(31 downto 0) := x"00000000";
  signal r9               : std_logic_vector(31 downto 0) := x"00000000";
  signal r10              : std_logic_vector(31 downto 0) := x"00000000";
  signal r11              : std_logic_vector(31 downto 0) := x"00000000";
  signal r12              : std_logic_vector(31 downto 0) := x"00000000";
  signal r13              : std_logic_vector(31 downto 0) := x"00000000";
  signal r14              : std_logic_vector(31 downto 0) := x"00000000";
  signal r15              : std_logic_vector(31 downto 0) := x"00000000";
  signal r16              : std_logic_vector(31 downto 0) := x"00000000";
  signal r17              : std_logic_vector(31 downto 0) := x"00000000";
  signal r18              : std_logic_vector(31 downto 0) := x"00000000";
  signal r19              : std_logic_vector(31 downto 0) := x"00000000";
  signal r20              : std_logic_vector(31 downto 0) := x"00000000";
  signal r21              : std_logic_vector(31 downto 0) := x"00000000";
  signal r22              : std_logic_vector(31 downto 0) := x"00000000";
  signal r23              : std_logic_vector(31 downto 0) := x"00000000";
  signal r24              : std_logic_vector(31 downto 0) := x"00000000";
  signal r25              : std_logic_vector(31 downto 0) := x"00000000";
  signal r26              : std_logic_vector(31 downto 0) := x"00000000";
  signal r27              : std_logic_vector(31 downto 0) := x"00000000";
  signal r28              : std_logic_vector(31 downto 0) := x"00000000";
  signal r29              : std_logic_vector(31 downto 0) := x"00000000";
  signal r30              : std_logic_vector(31 downto 0) := x"00000000";
  signal r31              : std_logic_vector(31 downto 0) := x"00000000";
  signal r0_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal r1_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal r2_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal r3_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal r4_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal r5_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal r6_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal r7_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal r8_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal r9_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal r10_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r11_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r12_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r13_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r14_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r15_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r16_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r17_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r18_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r19_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r20_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r21_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r22_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r23_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r24_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r25_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r26_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r27_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r28_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r29_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r30_sub          : std_logic_vector(31 downto 0) := x"00000000";
  signal r31_sub          : std_logic_vector(31 downto 0) := x"00000000";
  
begin
  sys_sig <= sys_sig_buf;
  sys_type <= sys_type_buf;
  branch_instr <= branch_instr_buf;
  branch_cond <= branch_cond_buf;
  jump_instr <= jump_instr_buf;
  store_instr <= store_instr_buf;
  load_instr <= load_instr_buf;
  mem_write <= mem_write_buf;
  mem_to_R_sig <= mem_to_R_sig_buf;
  write_data_R <= write_data_R_buf;
  now_PC <= now_PC_buf;
  add_to_PC <= add_to_PC_buf;
  change_PC <= change_PC_buf;
  data_1 <= data_1_buf;
  data_2 <= data_2_buf;
  data_to_mem <= data_to_mem_buf;
  ALU_control <= ALU_control_buf;

  r0_data <= r0;
  r1_data <= r1;
  r2_data <= r2;
  r3_data <= r3;
  r4_data <= r4;
  r5_data <= r5;
  r6_data <= r6;
  r7_data <= r7;
  r8_data <= r8;
  r9_data <= r9;
  r10_data <= r10;
  r11_data <= r11;
  r12_data <= r12;
  r13_data <= r13;
  r14_data <= r14;
  r15_data <= r15;
  r16_data <= r16;
  r17_data <= r17;
  r18_data <= r18;
  r19_data <= r19;
  r20_data <= r20;
  r21_data <= r21;
  r22_data <= r22;
  r23_data <= r23;
  r24_data <= r24;
  r25_data <= r25;
  r26_data <= r26;
  r27_data <= r27;
  r28_data <= r28;
  r29_data <= r29;
  r30_data <= r30;
  r31_data <= r31;

  head <= instr(31 downto 26);
  rs_pointer <= instr(25 downto 21);
  rt_pointer <= instr(20 downto 16);
  rd_pointer <= instr(15 downto 11);
  sa <= instr(10 downto 6);
  tail <= instr(5 downto 0);
  offset <= instr(15 downto 0);
  instr_index <= instr(25 downto 0);
  code <= instr(25 downto 6);

  rs <= mem_to_R when mem_to_R_pointer = rs_pointer and mem_to_R_sig_return = '1' else
        r0 when rs_pointer = "00000" else
        r1 when rs_pointer = "00001" else
        r2 when rs_pointer = "00010" else
        r3 when rs_pointer = "00011" else
        r4 when rs_pointer = "00100" else
        r5 when rs_pointer = "00101" else
        r6 when rs_pointer = "00110" else
        r7 when rs_pointer = "00111" else
        r8 when rs_pointer = "01000" else
        r9 when rs_pointer = "01001" else
        r10 when rs_pointer = "01010" else
        r11 when rs_pointer = "01011" else
        r12 when rs_pointer = "01100" else
        r13 when rs_pointer = "01101" else
        r14 when rs_pointer = "01110" else
        r15 when rs_pointer = "01111" else
        r16 when rs_pointer = "10000" else
        r17 when rs_pointer = "10001" else
        r18 when rs_pointer = "10010" else
        r19 when rs_pointer = "10011" else
        r20 when rs_pointer = "10100" else
        r21 when rs_pointer = "10101" else
        r22 when rs_pointer = "10110" else
        r23 when rs_pointer = "10111" else
        r24 when rs_pointer = "11000" else
        r25 when rs_pointer = "11001" else
        r26 when rs_pointer = "11010" else
        r27 when rs_pointer = "11011" else
        r28 when rs_pointer = "11100" else
        r29 when rs_pointer = "11101" else
        r30 when rs_pointer = "11110" else
        r31;

  rt <= mem_to_R when mem_to_R_pointer = rt_pointer and mem_to_R_sig_return = '1' else
        r0 when rt_pointer = "00000" else
        r1 when rt_pointer = "00001" else
        r2 when rt_pointer = "00010" else
        r3 when rt_pointer = "00011" else
        r4 when rt_pointer = "00100" else
        r5 when rt_pointer = "00101" else
        r6 when rt_pointer = "00110" else
        r7 when rt_pointer = "00111" else
        r8 when rt_pointer = "01000" else
        r9 when rt_pointer = "01001" else
        r10 when rt_pointer = "01010" else
        r11 when rt_pointer = "01011" else
        r12 when rt_pointer = "01100" else
        r13 when rt_pointer = "01101" else
        r14 when rt_pointer = "01110" else
        r15 when rt_pointer = "01111" else
        r16 when rt_pointer = "10000" else
        r17 when rt_pointer = "10001" else
        r18 when rt_pointer = "10010" else
        r19 when rt_pointer = "10011" else
        r20 when rt_pointer = "10100" else
        r21 when rt_pointer = "10101" else
        r22 when rt_pointer = "10110" else
        r23 when rt_pointer = "10111" else
        r24 when rt_pointer = "11000" else
        r25 when rt_pointer = "11001" else
        r26 when rt_pointer = "11010" else
        r27 when rt_pointer = "11011" else
        r28 when rt_pointer = "11100" else
        r29 when rt_pointer = "11101" else
        r30 when rt_pointer = "11110" else
        r31;

  sys_sig_sub <= '1' when (head = "000000" and tail = "001100") else
                 '0';

  sys_type_sub <= "01" when (mem_to_R_pointer = "00010" and mem_to_R_sig_return = '1' and mem_to_R = x"0000000b") or
                            ((mem_to_R_pointer /= "00010" or mem_to_R_sig_return = '0' or mem_to_R /= x"0000000b") and r2 = x"0000000b") else
                  "10" when (mem_to_R_pointer = "00010" and mem_to_R_sig_return = '1' and mem_to_R = x"0000000c") or
                            ((mem_to_R_pointer /= "00010" or mem_to_R_sig_return = '0' or mem_to_R /= x"0000000c") and r2 = x"0000000c") else
                  "00";

  branch_instr_sub <= '1' when head = "000100" or
                               head = "000101" or
                               head = "000110" or
                               (head = "000001" and rt_pointer = "00001") or
                               head = "000111" or
                               (head = "000001" and rt_pointer = "00000") else
                      '0';

  branch_cond_sub <= "000" when head = "000100" else -- =
                     "001" when head = "000101" else -- /=
                     "010" when head = "000110" else -- <= with 0
                     "011" when (head = "000001" and rt_pointer = "00001") else -- >= with 0
                     "100" when head = "000111" else -- > with 0
                     "101" when (head = "000001" and rt_pointer = "00000") else -- < with 0
                     "111";

  jump_instr_sub <= '1' when (head = "000000" and tail = "001000") or
                             head = "000011" or
                             (head = "000000" and tail = "001001") else
                    '0';

  store_instr_sub <= '1' when head = "101011" else
                     '0';

  load_instr_sub <= '1' when head = "100011" else
                    '0';

  mem_write_sub <= '1' when head = "100011" else
                   '0';

  mem_to_R_sig_sub <= '1' when (head = "000000" and tail = "100000") or
                               (head = "000000" and tail = "100010") or
                               (head = "000000" and tail = "101010") or
                               (head = "000000" and tail = "100100") or
                               (head = "000000" and tail = "100101") or
                               (head = "000000" and tail = "100110") or
                               (head = "000000" and tail = "000000") or
                               (head = "000000" and tail = "000010") or
                               (head = "000000" and tail = "000100") or
                               head = "001000" or
                               head = "001001" or
                               head = "000011" or
                               (head = "000000" and tail = "001001") or
                               head = "001111" or
                               head = "001101" or
                               head = "100011" or
                               (sys_sig_sub = '1' and sys_type_sub = "10") else
                      '0';

  write_data_R_sub <= rd_pointer when (head = "000000" and tail = "100000") or
                                      (head = "000000" and tail = "100010") or
                                      (head = "000000" and tail = "101010") or
                                      (head = "000000" and tail = "100100") or
                                      (head = "000000" and tail = "100101") or
                                      (head = "000000" and tail = "100110") or
                                      (head = "000000" and tail = "000000") or
                                      (head = "000000" and tail = "000010") or
                                      (head = "000000" and tail = "000100") or
                                      (head = "000000" and tail = "001001") else
                      rt_pointer when head = "001000" or
                                      head = "001001" or
                                      head = "001111" or
                                      head = "001101" or
                                      head = "100011" else
                      "00010" when (sys_sig_sub = '1' and sys_type_sub = "10") else
                      "11111" when head = "000011" else
                      "00000";

  now_PC_sub <= write_PC;
  
  add_to_PC_sub <= offset when head = "000100" or
                               head = "000101" or
                               head = "000110" or
                               head = "000001" or
                               head = "000111" else
                   x"0000";

  change_PC_sub <= rs(15 downto 0) when (head = "000000" and tail = "001000") or
                                        (head = "000000" and tail = "001001") else
                   instr_index(15 downto 0) when head = "000011" else
                   x"0000";

  data_1_sub <= rs when (head = "000000" and tail = "100000") or
                        (head = "000000" and tail = "100010") or
                        (head = "000000" and tail = "101010") or
                        (head = "000000" and tail = "100100") or
                        (head = "000000" and tail = "100101") or
                        (head = "000000" and tail = "100110") or
                        head = "001000" or
                        head = "001001" or
                        head = "000100" or
                        head = "000101" or
                        head = "000110" or
                        (head = "000001" and rt_pointer = "00001") or
                        head = "000111" or
                        (head = "000001" and rt_pointer = "00000") or
                        head = "001101" or
                        head = "101011" or
                        head = "100011" else
                rt when (head = "000000" and tail = "000000") or
                        (head = "000000" and tail = "000010") or
                        (head = "000000" and tail = "000100") else
                x"0000" & write_PC when head = "000011" or
                                        (head = "000000" and tail = "001001") else
                x"000" & code when (sys_sig_sub = '1' and sys_type_sub = "10") else
                x"00000000";

  data_2_sub <= rs when (head = "000000" and tail = "000100") else
                rt when (head = "000000" and tail = "100000") or
                        (head = "000000" and tail = "100010") or
                        (head = "000000" and tail = "101010") or
                        (head = "000000" and tail = "100100") or
                        (head = "000000" and tail = "100101") or
                        (head = "000000" and tail = "100110") or
                        head = "000100" or
                        head = "000101" else
                x"000000" & "000" & sa when (head = "000000" and tail = "000000") or
                                            (head = "000000" and tail = "000010") else
                x"0000" & offset when (head = "001000" and offset(15) = '0') or
                                      (head = "001001" and offset(15) = '0') or
                                      head = "001101" or
                                      head = "101011" or
                                      head = "100011" else
                x"ffff" & offset when (head = "001000" and offset(15) = '1') or
                                      (head = "001001" and offset(15) = '1') else
                offset & x"0000" when head = "001111" else
                x"00000001" when head = "000011" or
                                 (head = "000000" and tail = "001001") else
                x"00000000";

  data_to_mem_sub <= rt when head = "101011" else
                     x"00000000";

  ALU_control_sub <= "0000" when (head = "000000" and tail = "100100") else -- AND
                     "0001" when (head = "000000" and tail = "100101") or -- OR
                                 head = "001101" or
                                 head = "001111" else -- no processing
                     "0010" when (head = "000000" and tail = "100110") else -- XOR
                     "0100" when (head = "000000" and tail = "100000") or -- +
                                 head = "001000" or
                                 head = "001001" or
                                 head = "000011" or
                                 (head = "000000" and tail = "001001") or
                                 head = "101011" or
                                 head = "100011" else
                     "0101" when (head = "000000" and tail = "100010") else -- -
                     "0110" when (head = "000000" and tail = "000000") or
                                 (head = "000000" and tail = "000100") else -- <<
                     "0111" when (head = "000000" and tail = "000010") else -- >>
                     "1000" when (head = "000000" and tail = "101010") else -- < 
                     "1111";

  r0_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "00000" else
            r0;
  r1_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "00001" else
            r1;
  r2_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "00010" else
            r2;
  r3_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "00011" else
            r3;
  r4_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "00100" else
            r4;
  r5_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "00101" else
            r5;
  r6_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "00110" else
            r6;
  r7_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "00111" else
            r7;
  r8_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "01000" else
            r8;
  r9_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "01001" else
            r9;
  r10_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "01010" else
             r10;
  r11_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "01011" else
             r11;
  r12_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "01100" else
             r12;
  r13_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "01101" else
             r13;
  r14_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "01110" else
             r14;
  r15_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "01111" else
             r15;
  r16_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "10000" else
             r16;
  r17_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "10001" else
             r17;
  r18_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "10010" else
             r18;
  r19_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "10011" else
             r19;
  r20_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "10100" else
             r20;
  r21_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "10101" else
             r21;
  r22_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "10110" else
             r22;
  r23_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "10111" else
             r23;
  r24_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "11000" else
             r24;
  r25_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "11001" else
             r25;
  r26_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "11010" else
             r26;
  r27_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "11011" else
             r27;
  r28_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "11100" else
             r28;
  r29_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "11101" else
             r29;
  r30_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "11110" else
             r30;
  r31_sub <= mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_pointer = "11111" else
             r31;
--add (SPECIAL)000000 rs rt rd 00000 (ADD)100000 || rd <- rs + rt
--sub (SPECIAL)000000 rs rt rd 00000 (SUB)100010 || rd <- rs - rt
--slt (SPECIAL)000000 rs rt rd 00000 (SLT)101010 || rd <- (rs < rt)
--and (SPECIAL)000000 rs rt rd 00000 (AND)100100 || rd <- rs AND rt
--or (SPECIAL)000000 rs rt rd 00000 (OR)100101 || rd <- rs OR rt
--xor (SPECIAL)000000 rs rt rd 00000 (XOR)100110 || rd <- rs XOR rt
--sll (SPECIAL)000000 00000 rt rd sa (SLL)000000 || rd <- rt << sa
--srl (SPECIAL)000000 00000 rt rd sa (SRL)000010 || rd <- rt >> sa
--sllv (SPECIAL)000000 rs rt rd 00000 (SLLV)000100 || rd <- rt << rs <<unchecked>>
--syscall (SPECIAL)000000 code (SYSCALL)001100 || system_call(r2) <<not implemented>>
--addi (ADDI)001000 rs rt immediate || rt <- rs + immediate
--addiu (ADDIU)001001 rs rt immediate || rt <- rs + immediate
--jr (SPECIAL)000000 rs 000000000000000 (JR)001000 || PC <- rs
--jal (JAL)000011 instr_index || r31 <- PC + 1, PC <- instr_index
--jalr (SPECIAL)000000 rs 00000 rd 00000 (JALR)001001 || rd <- PC + 1, PC <- rs
--beq (BEQ)000100 rs rt offset || if (rs = rt) then PC <- PC + offset
--bne (BNE)000101 rs rt offset || if (rs /= rt) then PC <- PC + offset
--blez (BLEZ)000110 rs 00000 offset || if (rs <= 0) then PC <- PC + offset
--bgez (REGIMM)000001 rs (BGEZ)00001 offset || if (rs >= 0) then PC <- PC + offset
--bgtz (BGTZ)000111 rs 00000 offset || if (rs > 0) then PC <- PC + offset
--bltz (REGIMM)000001 rs (BLTZ)00000 offset || if (rs < 0) then PC <- PC + offset
--lui (LUI)001111 00000 rt immediate || rt <- immediate & x"0000"
--ori (ORI)001101 rs rt immediate || rt <- rs OR immediate
--sw (SW)101011 (register)base rt offset || memory[base + offset] <- rt
--lw (LW)100011 (register)base rt offset || rt <- memory[base + offset]
    
  id_process: process(clk)
  begin
    if rising_edge(clk) then
      case state is
        when "00" | "01" | "10" =>
          null;
        when "11" =>
          sys_sig_buf <= sys_sig_sub;
          sys_type_buf <= sys_type_sub;
          branch_instr_buf <= branch_instr_sub;
          branch_cond_buf <= branch_cond_sub;
          jump_instr_buf <= jump_instr_sub;
          store_instr_buf <= store_instr_sub;
          load_instr_buf <= load_instr_sub;
          mem_write_buf <= mem_write_sub;
          mem_to_R_sig_buf <= mem_to_R_sig_sub;
          write_data_R_buf <= write_data_R_sub;
          now_PC_buf <= now_PC_sub;
          add_to_PC_buf <= add_to_PC_sub;
          change_PC_buf <= change_PC_sub;
          data_1_buf <= data_1_sub;
          data_2_buf <= data_2_sub;
          data_to_mem_buf <= data_to_mem_sub;
          ALU_control_buf <= ALU_control_sub;
          r0 <= r0_sub;
          r1 <= r1_sub;
          r2 <= r2_sub;
          r3 <= r3_sub;
          r4 <= r4_sub;
          r5 <= r5_sub;
          r6 <= r6_sub;
          r7 <= r7_sub;
          r8 <= r8_sub;
          r9 <= r9_sub;
          r10 <= r10_sub;
          r11 <= r11_sub;
          r12 <= r12_sub;
          r13 <= r13_sub;
          r14 <= r14_sub;
          r15 <= r15_sub;
          r16 <= r16_sub;
          r17 <= r17_sub;
          r18 <= r18_sub;
          r19 <= r19_sub;
          r20 <= r20_sub;
          r21 <= r21_sub;
          r22 <= r22_sub;
          r23 <= r23_sub;
          r24 <= r24_sub;
          r25 <= r25_sub;
          r26 <= r26_sub;
          r27 <= r27_sub;
          r28 <= r28_sub;
          r29 <= r29_sub;
          r30 <= r30_sub;
          r31 <= r31_sub;
        when others =>
          null;
      end case;
    end if;
  end process id_process;
end id;
