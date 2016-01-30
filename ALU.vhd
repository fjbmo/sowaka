library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

library WORK;
use WORK.fadd_p.all;
use WORK.fmul_p.all;

entity ALU is
  Port(
    clk            : in std_logic;
    state          : in std_logic_vector(1 downto 0);
    sys_call_sig   : in std_logic;
    sys_call_type  : in std_logic_vector(1 downto 0);
    check_branch   : in std_logic;
    which_cond     : in std_logic_vector(3 downto 0); --condition for branching
    change_fcc     : in std_logic;
    change_type    : in std_logic_vector(1 downto 0); --which comparison will be done
    fcc_part       : in std_logic_vector(2 downto 0); --pointer for fcc
    fcc_base       : in std_logic_vector(7 downto 0); --previous fcc
    check_jump     : in std_logic;
    store_sig      : in std_logic; --pass to mem
    load_sig       : in std_logic; --pass to mem
    write_R_sig    : in std_logic; --write to register
    write_R_type   : in std_logic; --write to GPR when 0 and FPR when 1
    write_R        : in std_logic_vector(4 downto 0); --write to this register
    base_PC        : in std_logic_vector(15 downto 0); --previous PC
    add_PC         : in std_logic_vector(15 downto 0); --add to PC
    jump_PC        : in std_logic_vector(15 downto 0); --jump to this PC
    input_1        : in std_logic_vector(31 downto 0);
    input_2        : in std_logic_vector(31 downto 0);
    store_data     : in std_logic_vector(31 downto 0);
    calcu_type     : in std_logic_vector(4 downto 0);
    sys_activate   : out std_logic; --activate system call signal
    sys_act_type   : out std_logic_vector(1 downto 0); --activate system call type
    new_fcc        : out std_logic_vector(7 downto 0); --newly set fcc
    store_mem      : out std_logic; --store data to mem
    load_mem       : out std_logic; --load data to register from mem
    send_to_R      : out std_logic; --send data to register
    send_to_R_type : out std_logic; --send data to GPR when 0 and FPR when 1
    dest_R         : out std_logic_vector(4 downto 0); --send to this register
    new_PC         : out std_logic_vector(15 downto 0);
    output         : out std_logic_vector(31 downto 0);
    mem_data       : out std_logic_vector(31 downto 0));
end ALU;

architecture ALU of ALU is
  component fadd
    port(
      A : in std_logic_vector(31 downto 0); --data_1
      B : in std_logic_vector(31 downto 0); --data_2
      S : out std_logic_vector(31 downto 0)); --ans
  end component;

  component fmul
    port(
      A : in std_logic_vector(31 downto 0); --data_1
      B : in std_logic_vector(31 downto 0); --data_2
      S : out std_logic_vector(31 downto 0)); --ans
  end component;

  component finv
    port(
      A : in std_logic_vector(31 downto 0); --data
      S : out std_logic_vector(31 downto 0)); --ans
  end component;

  component fsqrt
    port(
      A : in std_logic_vector(31 downto 0); --data
      S : out std_logic_vector(31 downto 0)); --ans
  end component;

  component itof
    port(
      A : in std_logic_vector(31 downto 0); --data
      S : out std_logic_vector(31 downto 0)); --ans
  end component;

  component ftoi
    port(
      A : in std_logic_vector(31 downto 0); --data
      S : out std_logic_vector(31 downto 0)); --ans
  end component;

  signal sys_activate_buf   : std_logic := '0';
  signal sys_act_type_buf   : std_logic_vector(1 downto 0) := "00";
  signal new_fcc_buf        : std_logic_vector(7 downto 0) := "00000000";
  signal store_mem_buf      : std_logic := '0';
  signal load_mem_buf       : std_logic := '0';
  signal send_to_R_buf      : std_logic := '0';
  signal send_to_R_type_buf : std_logic := '0';
  signal dest_R_buf         : std_logic_vector(4 downto 0) := "00000";
  signal new_PC_buf         : std_logic_vector(15 downto 0) := x"0000";
  signal output_buf         : std_logic_vector(31 downto 0) := x"00000000";
  signal mem_data_buf       : std_logic_vector(31 downto 0) := x"00000000";

  signal fadd_data_1 : std_logic_vector(31 downto 0) := x"00000000";
  signal fadd_data_2 : std_logic_vector(31 downto 0) := x"00000000";
  signal fadd_ans    : std_logic_vector(31 downto 0) := x"00000000";
  signal fmul_data_1 : std_logic_vector(31 downto 0) := x"00000000";
  signal fmul_data_2 : std_logic_vector(31 downto 0) := x"00000000";
  signal fmul_ans    : std_logic_vector(31 downto 0) := x"00000000";
  signal finv_data   : std_logic_vector(31 downto 0) := x"00000000";
  signal finv_ans    : std_logic_vector(31 downto 0) := x"00000000";
  signal fsqrt_data  : std_logic_vector(31 downto 0) := x"00000000";
  signal fsqrt_ans   : std_logic_vector(31 downto 0) := x"00000000";
  signal itof_data   : std_logic_vector(31 downto 0) := x"00000000";
  signal itof_ans    : std_logic_vector(31 downto 0) := x"00000000";
  signal ftoi_data   : std_logic_vector(31 downto 0) := x"00000000";
  signal ftoi_ans    : std_logic_vector(31 downto 0) := x"00000000";

  signal check_eq   : std_logic := '0'; --check =
  signal check_gtz  : std_logic := '0'; --check > with 0
  signal check_ltz  : std_logic := '0'; --check < with 0
--  signal check_gt   : std_logic := '0'; --check >
--  signal check_lt   : std_logic := '0'; --check <
  signal data_xor   : std_logic_vector(31 downto 0) := x"00000000"; --xor data
  signal prov_PC    : std_logic_vector(15 downto 0) := x"0000";
  signal new_PC_sub : std_logic_vector(15 downto 0) := x"0000";
  signal sll_data   : std_logic_vector(31 downto 0) := x"00000000";
  signal slr_data   : std_logic_vector(31 downto 0) := x"00000000";
  signal output_int : std_logic_vector(31 downto 0) := x"00000000";
  signal comp_exp   : std_logic_vector(1 downto 0) := "00"; --if exponent part of input_2 is grater "01", input_1 is grater "10", equal "00"
  signal comp_frac  : std_logic_vector(1 downto 0) := "00"; --if fraction part of input_2 is grater "01", input_1 is grater "10", equal "00"
  signal fpr_eq     : std_logic := '0';
  signal fpr_olt    : std_logic := '0';
  signal fpr_ole    : std_logic := '0';
  signal check_comp : std_logic := '0';
  signal set_fcc    : std_logic_vector(7 downto 0) := "00000000";

begin
  ALU_FADD: fadd
    port map(
      A => fadd_data_1,
      B => fadd_data_2,
      S => fadd_ans);
  ALU_FMUL: fmul
    port map(
      A => fmul_data_1,
      B => fmul_data_2,
      S => fmul_ans);
  ALU_FINV: finv
    port map(
      A => finv_data,
      S => finv_ans);
  ALU_FSQRT: fsqrt
    port map(
      A => fsqrt_data,
      S => fsqrt_ans);
  ALU_ITOF: itof
    port map(
      A => itof_data,
      S => itof_ans);
  ALU_FTOI: ftoi
    port map(
      A => ftoi_data,
      S => ftoi_ans);

  sys_activate <= sys_activate_buf;
  sys_act_type <= sys_act_type_buf;
  new_fcc <= new_fcc_buf;
  store_mem <= store_mem_buf;
  load_mem <= load_mem_buf;
  send_to_R <= send_to_R_buf;
  send_to_R_type <= send_to_R_type_buf;
  new_PC <= new_PC_buf;
  dest_R <= dest_R_buf;
  output <= output_buf;
  mem_data <= mem_data_buf;

  fadd_data_1 <= input_1 when calcu_type = "01001" or
                              calcu_type = "01010" else
                 x"00000000";

  fadd_data_2 <= input_2 when calcu_type = "01001" else
                 input_2 xor x"80000000" when calcu_type = "01010" else
                 x"00000000";

  fmul_data_1 <= input_1 when calcu_type = "01011" else
                 x"00000000";

  fmul_data_2 <= input_2 when calcu_type = "01011" else
                 x"00000000";

  finv_data <= input_1 when calcu_type = "01100" else
               x"00000000";

  fsqrt_data <= input_1 when calcu_type = "01101" else
                x"00000000";

  itof_data <= input_1 when calcu_type = "01111" else
               x"00000000";

  ftoi_data <= input_1 when calcu_type = "10000" else
               x"00000000";

  check_eq <= '1' when data_xor = x"00000000" else
              '0';

  check_gtz <= '0' when input_1(31) = '1' or input_1 = x"00000000" else
               '1';

  check_ltz <= '1' when input_1(31) = '1' else
               '0';

--  check_gt <= '1' when (data_xor(31) = '1' and input_1(31) = '1') or
--                       (data_xor(31 downto 30) = "01" and input_1(30) = '1') or
--                       (data_xor(31 downto 29) = "001" and input_1(29) = '1') or
--                       (data_xor(31 downto 28) = "0001" and input_1(28) = '1') or
--                       (data_xor(31 downto 27) = "00001" and input_1(27) = '1') or
--                       (data_xor(31 downto 26) = "000001" and input_1(26) = '1') or
--                       (data_xor(31 downto 25) = "0000001" and input_1(25) = '1') or
--                       (data_xor(31 downto 24) = "00000001" and input_1(24) = '1') or
--                       (data_xor(31 downto 23) = "000000001" and input_1(23) = '1') or
--                       (data_xor(31 downto 22) = "0000000001" and input_1(22) = '1') or
--                       (data_xor(31 downto 21) = "00000000001" and input_1(21) = '1') or
--                       (data_xor(31 downto 20) = "000000000001" and input_1(20) = '1') or
--                       (data_xor(31 downto 19) = "0000000000001" and input_1(19) = '1') or
--                       (data_xor(31 downto 18) = "00000000000001" and input_1(18) = '1') or
--                       (data_xor(31 downto 17) = "000000000000001" and input_1(17) = '1') or
--                       (data_xor(31 downto 16) = "0000000000000001" and input_1(16) = '1') or
--                       (data_xor(31 downto 15) = "00000000000000001" and input_1(15) = '1') or
--                       (data_xor(31 downto 14) = "000000000000000001" and input_1(14) = '1') or
--                       (data_xor(31 downto 13) = "0000000000000000001" and input_1(13) = '1') or
--                       (data_xor(31 downto 12) = "00000000000000000001" and input_1(12) = '1') or
--                       (data_xor(31 downto 11) = "000000000000000000001" and input_1(11) = '1') or
--                       (data_xor(31 downto 10) = "0000000000000000000001" and input_1(10) = '1') or
--                       (data_xor(31 downto 9) = "00000000000000000000001" and input_1(9) = '1') or
--                       (data_xor(31 downto 8) = "000000000000000000000001" and input_1(8) = '1') or
--                       (data_xor(31 downto 7) = "0000000000000000000000001" and input_1(7) = '1') or
--                       (data_xor(31 downto 6) = "00000000000000000000000001" and input_1(6) = '1') or
--                       (data_xor(31 downto 5) = "000000000000000000000000001" and input_1(5) = '1') or
--                       (data_xor(31 downto 4) = "0000000000000000000000000001" and input_1(4) = '1') or
--                       (data_xor(31 downto 3) = "00000000000000000000000000001" and input_1(3) = '1') or
--                       (data_xor(31 downto 2) = "000000000000000000000000000001" and input_1(2) = '1') or
--                       (data_xor(31 downto 1) = "0000000000000000000000000000001" and input_1(1) = '1') or
--                       (data_xor = x"00000001" and input_1(0) = '1') else
--              '0';

--  check_lt <= '1' when (data_xor(31) = '1' and input_2(31) = '1') or
--                       (data_xor(31 downto 30) = "01" and input_2(30) = '1') or
--                       (data_xor(31 downto 29) = "001" and input_2(29) = '1') or
--                       (data_xor(31 downto 28) = "0001" and input_2(28) = '1') or
--                       (data_xor(31 downto 27) = "00001" and input_2(27) = '1') or
--                       (data_xor(31 downto 26) = "000001" and input_2(26) = '1') or
--                       (data_xor(31 downto 25) = "0000001" and input_2(25) = '1') or
--                       (data_xor(31 downto 24) = "00000001" and input_2(24) = '1') or
--                       (data_xor(31 downto 23) = "000000001" and input_2(23) = '1') or
--                       (data_xor(31 downto 22) = "0000000001" and input_2(22) = '1') or
--                       (data_xor(31 downto 21) = "00000000001" and input_2(21) = '1') or
--                       (data_xor(31 downto 20) = "000000000001" and input_2(20) = '1') or
--                       (data_xor(31 downto 19) = "0000000000001" and input_2(19) = '1') or
--                       (data_xor(31 downto 18) = "00000000000001" and input_2(18) = '1') or
--                       (data_xor(31 downto 17) = "000000000000001" and input_2(17) = '1') or
--                       (data_xor(31 downto 16) = "0000000000000001" and input_2(16) = '1') or
--                       (data_xor(31 downto 15) = "00000000000000001" and input_2(15) = '1') or
--                       (data_xor(31 downto 14) = "000000000000000001" and input_2(14) = '1') or
--                       (data_xor(31 downto 13) = "0000000000000000001" and input_2(13) = '1') or
--                       (data_xor(31 downto 12) = "00000000000000000001" and input_2(12) = '1') or
--                       (data_xor(31 downto 11) = "000000000000000000001" and input_2(11) = '1') or
--                       (data_xor(31 downto 10) = "0000000000000000000001" and input_2(10) = '1') or
--                       (data_xor(31 downto 9) = "00000000000000000000001" and input_2(9) = '1') or
--                       (data_xor(31 downto 8) = "000000000000000000000001" and input_2(8) = '1') or
--                       (data_xor(31 downto 7) = "0000000000000000000000001" and input_2(7) = '1') or
--                       (data_xor(31 downto 6) = "00000000000000000000000001" and input_2(6) = '1') or
--                       (data_xor(31 downto 5) = "000000000000000000000000001" and input_2(5) = '1') or
--                       (data_xor(31 downto 4) = "0000000000000000000000000001" and input_2(4) = '1') or
--                       (data_xor(31 downto 3) = "00000000000000000000000000001" and input_2(3) = '1') or
--                       (data_xor(31 downto 2) = "000000000000000000000000000001" and input_2(2) = '1') or
--                       (data_xor(31 downto 1) = "0000000000000000000000000000001" and input_2(1) = '1') or
--                       (data_xor = x"00000001" and input_2(0) = '1') else
--              '0';

  data_xor <= input_1 xor input_2;

  prov_PC <= base_PC + add_PC when (check_branch = '1' and which_cond = "0000" and check_eq = '1') or -- =
                                   (check_branch = '1' and which_cond = "0001" and check_eq = '0') or -- /=
                                   (check_branch = '1' and which_cond = "0010" and (check_eq = '1' or check_ltz = '1')) or -- <= with 0
                                   (check_branch = '1' and which_cond = "0011" and (check_eq = '1' or check_gtz = '1')) or -- >= with 0
                                   (check_branch = '1' and which_cond = "0100" and check_gtz = '1') or -- > with 0
                                   (check_branch = '1' and which_cond = "0101" and check_ltz = '1') or -- < with 0
                                   (check_branch = '1' and which_cond = "0110" and fcc_part = "000" and fcc_base(0) = '1') or -- check fcc[0] = 1
                                   (check_branch = '1' and which_cond = "0110" and fcc_part = "001" and fcc_base(1) = '1') or -- check fcc[1] = 1
                                   (check_branch = '1' and which_cond = "0110" and fcc_part = "010" and fcc_base(2) = '1') or -- check fcc[2] = 1
                                   (check_branch = '1' and which_cond = "0110" and fcc_part = "011" and fcc_base(3) = '1') or -- check fcc[3] = 1
                                   (check_branch = '1' and which_cond = "0110" and fcc_part = "100" and fcc_base(4) = '1') or -- check fcc[4] = 1
                                   (check_branch = '1' and which_cond = "0110" and fcc_part = "101" and fcc_base(5) = '1') or -- check fcc[5] = 1
                                   (check_branch = '1' and which_cond = "0110" and fcc_part = "110" and fcc_base(6) = '1') or -- check fcc[6] = 1
                                   (check_branch = '1' and which_cond = "0110" and fcc_part = "111" and fcc_base(7) = '1') or -- check fcc[7] = 1
                                   (check_branch = '1' and which_cond = "0111" and fcc_part = "000" and fcc_base(0) = '0') or -- check fcc[0] = 0
                                   (check_branch = '1' and which_cond = "0111" and fcc_part = "001" and fcc_base(1) = '0') or -- check fcc[1] = 0
                                   (check_branch = '1' and which_cond = "0111" and fcc_part = "010" and fcc_base(2) = '0') or -- check fcc[2] = 0
                                   (check_branch = '1' and which_cond = "0111" and fcc_part = "011" and fcc_base(3) = '0') or -- check fcc[3] = 0
                                   (check_branch = '1' and which_cond = "0111" and fcc_part = "100" and fcc_base(4) = '0') or -- check fcc[4] = 0
                                   (check_branch = '1' and which_cond = "0111" and fcc_part = "101" and fcc_base(5) = '0') or -- check fcc[5] = 0
                                   (check_branch = '1' and which_cond = "0111" and fcc_part = "110" and fcc_base(6) = '0') or -- check fcc[6] = 0
                                   (check_branch = '1' and which_cond = "0111" and fcc_part = "111" and fcc_base(7) = '0') else -- check fcc[7] = 0
             base_PC + x"0001";

  new_PC_sub <= jump_PC when check_jump = '1' else
                prov_PC when check_branch = '1' else
                base_PC + x"0001";

  sll_data <= input_1 when input_2 = x"00000000" else
              input_1(30 downto 0) & '0' when input_2 = x"00000001" else
              input_1(29 downto 0) & "00" when input_2 = x"00000002" else
              input_1(28 downto 0) & "000" when input_2 = x"00000003" else
              input_1(27 downto 0) & "0000" when input_2 = x"00000004" else
              input_1(26 downto 0) & "00000" when input_2 = x"00000005" else
              input_1(25 downto 0) & "000000" when input_2 = x"00000006" else
              input_1(24 downto 0) & "0000000" when input_2 = x"00000007" else
              input_1(23 downto 0) & "00000000" when input_2 = x"00000008" else
              input_1(22 downto 0) & "000000000" when input_2 = x"00000009" else
              input_1(21 downto 0) & "0000000000" when input_2 = x"0000000a" else
              input_1(20 downto 0) & "00000000000" when input_2 = x"0000000b" else
              input_1(19 downto 0) & "000000000000" when input_2 = x"0000000c" else
              input_1(18 downto 0) & "0000000000000" when input_2 = x"0000000d" else
              input_1(17 downto 0) & "00000000000000" when input_2 = x"0000000e" else
              input_1(16 downto 0) & "000000000000000" when input_2 = x"0000000f" else
              input_1(15 downto 0) & "0000000000000000" when input_2 = x"00000010" else
              input_1(14 downto 0) & "00000000000000000" when input_2 = x"00000011" else
              input_1(13 downto 0) & "000000000000000000" when input_2 = x"00000012" else
              input_1(12 downto 0) & "0000000000000000000" when input_2 = x"00000013" else
              input_1(11 downto 0) & "00000000000000000000" when input_2 = x"00000014" else
              input_1(10 downto 0) & "000000000000000000000" when input_2 = x"00000015" else
              input_1(9 downto 0) & "0000000000000000000000" when input_2 = x"00000016" else
              input_1(8 downto 0) & "00000000000000000000000" when input_2 = x"00000017" else
              input_1(7 downto 0) & "000000000000000000000000" when input_2 = x"00000018" else
              input_1(6 downto 0) & "0000000000000000000000000" when input_2 = x"00000019" else
              input_1(5 downto 0) & "00000000000000000000000000" when input_2 = x"0000001a" else
              input_1(4 downto 0) & "000000000000000000000000000" when input_2 = x"0000001b" else
              input_1(3 downto 0) & "0000000000000000000000000000" when input_2 = x"0000001c" else
              input_1(2 downto 0) & "00000000000000000000000000000" when input_2 = x"0000001d" else
              input_1(1 downto 0) & "000000000000000000000000000000" when input_2 = x"0000001e" else
              input_1(0) & "0000000000000000000000000000000" when input_2 = x"0000001f" else
              x"00000000";

  slr_data <= input_1 when input_2 = x"00000000" else
              '0' & input_1(31 downto 1) when input_2 = x"00000001" else
              "00" & input_1(31 downto 2) when input_2 = x"00000002" else
              "000" & input_1(31 downto 3) when input_2 = x"00000003" else
              "0000" & input_1(31 downto 4) when input_2 = x"00000004" else
              "00000" & input_1(31 downto 5) when input_2 = x"00000005" else
              "000000" & input_1(31 downto 6) when input_2 = x"00000006" else
              "0000000" & input_1(31 downto 7) when input_2 = x"00000007" else
              "00000000" & input_1(31 downto 8) when input_2 = x"00000008" else
              "000000000" & input_1(31 downto 9) when input_2 = x"00000009" else
              "0000000000" & input_1(31 downto 10) when input_2 = x"0000000a" else
              "00000000000" & input_1(31 downto 11) when input_2 = x"0000000b" else
              "000000000000" & input_1(31 downto 12) when input_2 = x"0000000c" else
              "0000000000000" & input_1(31 downto 13) when input_2 = x"0000000d" else
              "00000000000000" & input_1(31 downto 14) when input_2 = x"0000000e" else
              "000000000000000" & input_1(31 downto 15) when input_2 = x"0000000f" else
              "0000000000000000" & input_1(31 downto 16) when input_2 = x"00000010" else
              "00000000000000000" & input_1(31 downto 17) when input_2 = x"00000011" else
              "000000000000000000" & input_1(31 downto 18) when input_2 = x"00000012" else
              "0000000000000000000" & input_1(31 downto 19) when input_2 = x"00000013" else
              "00000000000000000000" & input_1(31 downto 20) when input_2 = x"00000014" else
              "000000000000000000000" & input_1(31 downto 21) when input_2 = x"00000015" else
              "0000000000000000000000" & input_1(31 downto 22) when input_2 = x"00000016" else
              "00000000000000000000000" & input_1(31 downto 23) when input_2 = x"00000017" else
              "000000000000000000000000" & input_1(31 downto 24) when input_2 = x"00000018" else
              "0000000000000000000000000" & input_1(31 downto 25) when input_2 = x"00000019" else
              "00000000000000000000000000" & input_1(31 downto 26) when input_2 = x"0000001a" else
              "000000000000000000000000000" & input_1(31 downto 27) when input_2 = x"0000001b" else
              "0000000000000000000000000000" & input_1(31 downto 28) when input_2 = x"0000001c" else
              "00000000000000000000000000000" & input_1(31 downto 29) when input_2 = x"0000001d" else
              "000000000000000000000000000000" & input_1(31 downto 30) when input_2 = x"0000001e" else
              "0000000000000000000000000000000" & input_1(31) when input_2 = x"0000001f" else
              x"00000000";

  output_int <= input_1 and input_2 when calcu_type = "00000" else
                input_1 or input_2 when calcu_type = "00001" else
                input_1 xor input_2 when calcu_type = "00010" else
                input_1 + input_2 when calcu_type = "00100" else
                input_1 - input_2 when calcu_type = "00101" else
                sll_data when calcu_type = "00110" else
                slr_data when calcu_type = "00111" else
                x"00000001" when calcu_type = "01000" and input_1 < input_2 else
                fadd_ans when calcu_type = "01001" or
                              calcu_type = "01010" else -- fsub_ans
                fmul_ans when calcu_type = "01011" else
                finv_ans when calcu_type = "01100" else
                fsqrt_ans when calcu_type = "01101" else
                input_1 xor x"80000000" when calcu_type = "01110" else
                itof_ans when calcu_type = "01111" else
                ftoi_ans when calcu_type = "10000" else
                x"00000000";

  comp_exp <= "00" when input_1(30 downto 23) = input_2(30 downto 23) else
              "01" when ((input_1(30) = '0' and input_2(30) = '1') or
                         (input_1(30) = input_2(30) and input_1(29) = '0' and input_2(29) = '1') or
                         (input_1(30 downto 29) = input_2(30 downto 29) and input_1(28) = '0' and input_2(28) = '1') or
                         (input_1(30 downto 28) = input_2(30 downto 28) and input_1(27) = '0' and input_2(27) = '1') or
                         (input_1(30 downto 27) = input_2(30 downto 27) and input_1(26) = '0' and input_2(26) = '1') or
                         (input_1(30 downto 26) = input_2(30 downto 26) and input_1(25) = '0' and input_2(25) = '1') or
                         (input_1(30 downto 25) = input_2(30 downto 25) and input_1(24) = '0' and input_2(24) = '1') or
                         (input_1(30 downto 24) = input_2(30 downto 24) and input_1(23) = '0' and input_2(23) = '1')) else
              "10";

  comp_frac <= "00" when input_1(22 downto 0) = input_2(22 downto 0) else
               "01" when ((input_1(22) = '0' and input_2(22) = '1') or
                          (input_1(22) = input_2(22) and input_1(21) = '0' and input_2(21) = '1') or
                          (input_1(22 downto 21) = input_2(22 downto 21) and input_1(20) = '0' and input_2(20) = '1') or
                          (input_1(22 downto 20) = input_2(22 downto 20) and input_1(19) = '0' and input_2(19) = '1') or
                          (input_1(22 downto 19) = input_2(22 downto 19) and input_1(18) = '0' and input_2(18) = '1') or
                          (input_1(22 downto 18) = input_2(22 downto 18) and input_1(17) = '0' and input_2(17) = '1') or
                          (input_1(22 downto 17) = input_2(22 downto 17) and input_1(16) = '0' and input_2(16) = '1') or
                          (input_1(22 downto 16) = input_2(22 downto 16) and input_1(15) = '0' and input_2(15) = '1') or
                          (input_1(22 downto 15) = input_2(22 downto 15) and input_1(14) = '0' and input_2(14) = '1') or
                          (input_1(22 downto 14) = input_2(22 downto 14) and input_1(13) = '0' and input_2(13) = '1') or
                          (input_1(22 downto 13) = input_2(22 downto 13) and input_1(12) = '0' and input_2(12) = '1') or
                          (input_1(22 downto 12) = input_2(22 downto 12) and input_1(11) = '0' and input_2(11) = '1') or
                          (input_1(22 downto 11) = input_2(22 downto 11) and input_1(10) = '0' and input_2(10) = '1') or
                          (input_1(22 downto 10) = input_2(22 downto 10) and input_1(9) = '0' and input_2(9) = '1') or
                          (input_1(22 downto 9) = input_2(22 downto 9) and input_1(8) = '0' and input_2(8) = '1') or
                          (input_1(22 downto 8) = input_2(22 downto 8) and input_1(7) = '0' and input_2(7) = '1') or
                          (input_1(22 downto 7) = input_2(22 downto 7) and input_1(6) = '0' and input_2(6) = '1') or
                          (input_1(22 downto 6) = input_2(22 downto 6) and input_1(5) = '0' and input_2(5) = '1') or
                          (input_1(22 downto 5) = input_2(22 downto 5) and input_1(4) = '0' and input_2(4) = '1') or
                          (input_1(22 downto 4) = input_2(22 downto 4) and input_1(3) = '0' and input_2(3) = '1') or
                          (input_1(22 downto 3) = input_2(22 downto 3) and input_1(2) = '0' and input_2(2) = '1') or
                          (input_1(22 downto 2) = input_2(22 downto 2) and input_1(1) = '0' and input_2(1) = '1') or
                          (input_1(22 downto 1) = input_2(22 downto 1) and input_1(0) = '0' and input_2(0) = '1')) else
               "10";

  fpr_eq <= '1' when input_1 = input_2 else
            '0';

  fpr_olt <= '1' when ((input_1(31) = '1' and input_2(31) = '0') or
                       (input_1(31) = '0' and input_2(31) = '0' and comp_exp = "01") or
                       (input_1(31) = '0' and input_2(31) = '0' and comp_exp = "00" and comp_frac = "01") or
                       (input_1(31) = '1' and input_2(31) = '1' and comp_exp = "10") or
                       (input_1(31) = '1' and input_2(31) = '1' and comp_exp = "00" and comp_frac = "10")) else
             '0';

  fpr_ole <= fpr_eq or fpr_olt;

  check_comp <= fpr_eq when change_type = "01" else
                fpr_olt when change_type = "10" else
                fpr_ole when change_type = "11" else
                '0';

  set_fcc <= fcc_base(7 downto 1) & check_comp when change_fcc = '1' and fcc_part = "000" else
             fcc_base(7 downto 2) & check_comp & fcc_base(0) when change_fcc = '1' and fcc_part = "001" else
             fcc_base(7 downto 3) & check_comp & fcc_base(1 downto 0) when change_fcc = '1' and fcc_part = "010" else
             fcc_base(7 downto 4) & check_comp & fcc_base(2 downto 0) when change_fcc = '1' and fcc_part = "011" else
             fcc_base(7 downto 5) & check_comp & fcc_base(3 downto 0) when change_fcc = '1' and fcc_part = "100" else
             fcc_base(7 downto 6) & check_comp & fcc_base(4 downto 0) when change_fcc = '1' and fcc_part = "101" else
             fcc_base(7) & check_comp & fcc_base(5 downto 0) when change_fcc = '1' and fcc_part = "110" else
             check_comp & fcc_base(6 downto 0) when change_fcc = '1' and fcc_part = "111" else
             fcc_base;

  ALU_process: process(clk)
  begin
    if rising_edge(clk) then
      case state is
        when "00" | "01" | "10" =>
          null;
        when "11" =>
          sys_activate_buf <= sys_call_sig;
          sys_act_type_buf <= sys_call_type;
          new_fcc_buf <= set_fcc;
          store_mem_buf <= store_sig;
          load_mem_buf <= load_sig;
          send_to_R_buf <= write_R_sig;
          send_to_R_type_buf <= write_R_type;
          dest_R_buf <= write_R;
          new_PC_buf <= new_PC_sub;
          output_buf <= output_int; --(or FPR_result)
          mem_data_buf <= store_data;
        when others =>
          null;
      end case;
    end if;
  end process ALU_process;
end ALU;
