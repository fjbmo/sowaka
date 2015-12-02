library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity ALU is
  Port(
    clk           : in std_logic;
    state         : in std_logic_vector(1 downto 0);
    sys_call_sig  : in std_logic;
    sys_call_type : in std_logic_vector(1 downto 0);
    check_branch  : in std_logic;
    which_cond    : in std_logic_vector(2 downto 0); --condition for branching
    check_jump    : in std_logic;
    store_sig     : in std_logic; --pass to mem
    load_sig      : in std_logic; --pass to mem
    write_mem_sig : in std_logic; --write to mem
    write_R_sig   : in std_logic; --write to register
    write_R       : in std_logic_vector(4 downto 0); --write to this register
    base_PC       : in std_logic_vector(15 downto 0); --previous PC
    add_PC        : in std_logic_vector(15 downto 0); --add to PC
    jump_PC       : in std_logic_vector(15 downto 0); --jump to this PC
    input_int_1   : in std_logic_vector(31 downto 0);
    input_int_2   : in std_logic_vector(31 downto 0);
    store_data    : in std_logic_vector(31 downto 0);
    calcu_type    : in std_logic_vector(3 downto 0);
    sys_activate  : out std_logic; --activate system call signal
    sys_act_type  : out std_logic_vector(1 downto 0); --activate system call type
    store_mem     : out std_logic; --store data to mem
    load_mem      : out std_logic; --load data to register from mem
    send_to_R     : out std_logic; --send data to register
    dest_R        : out std_logic_vector(4 downto 0); --send to this register
    new_PC        : out std_logic_vector(15 downto 0);
    output        : out std_logic_vector(31 downto 0);
    mem_data      : out std_logic_vector(31 downto 0));
end ALU;

architecture ALU of ALU is
  signal sys_activate_buf : std_logic := '0';
  signal sys_act_type_buf : std_logic_vector(1 downto 0) := "00";
  signal store_mem_buf    : std_logic := '0';
  signal load_mem_buf     : std_logic := '0';
  signal send_to_R_buf    : std_logic := '0';
  signal dest_R_buf       : std_logic_vector(4 downto 0) := "00000";
  signal new_PC_buf       : std_logic_vector(15 downto 0) := x"0000";
  signal output_buf       : std_logic_vector(31 downto 0) := x"00000000";
  signal mem_data_buf     : std_logic_vector(31 downto 0) := x"00000000";

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

begin
  sys_activate <= sys_activate_buf;
  sys_act_type <= sys_act_type_buf;
  store_mem <= store_mem_buf;
  load_mem <= load_mem_buf;
  send_to_R <= send_to_R_buf;
  new_PC <= new_PC_buf;
  dest_R <= dest_R_buf;
  output <= output_buf;
  mem_data <= mem_data_buf;

  check_eq <= '1' when data_xor = x"00000000" else
              '0';

  check_gtz <= '0' when input_int_1(31) = '1' or input_int_1 = x"00000000" else
               '1';

  check_ltz <= '1' when input_int_1(31) = '1' else
               '0';

--  check_gt <= '1' when (data_xor(31) = '1' and input_int_1(31) = '1') or
--                       (data_xor(31 downto 30) = "01" and input_int_1(30) = '1') or
--                       (data_xor(31 downto 29) = "001" and input_int_1(29) = '1') or
--                       (data_xor(31 downto 28) = "0001" and input_int_1(28) = '1') or
--                       (data_xor(31 downto 27) = "00001" and input_int_1(27) = '1') or
--                       (data_xor(31 downto 26) = "000001" and input_int_1(26) = '1') or
--                       (data_xor(31 downto 25) = "0000001" and input_int_1(25) = '1') or
--                       (data_xor(31 downto 24) = "00000001" and input_int_1(24) = '1') or
--                       (data_xor(31 downto 23) = "000000001" and input_int_1(23) = '1') or
--                       (data_xor(31 downto 22) = "0000000001" and input_int_1(22) = '1') or
--                       (data_xor(31 downto 21) = "00000000001" and input_int_1(21) = '1') or
--                       (data_xor(31 downto 20) = "000000000001" and input_int_1(20) = '1') or
--                       (data_xor(31 downto 19) = "0000000000001" and input_int_1(19) = '1') or
--                       (data_xor(31 downto 18) = "00000000000001" and input_int_1(18) = '1') or
--                       (data_xor(31 downto 17) = "000000000000001" and input_int_1(17) = '1') or
--                       (data_xor(31 downto 16) = "0000000000000001" and input_int_1(16) = '1') or
--                       (data_xor(31 downto 15) = "00000000000000001" and input_int_1(15) = '1') or
--                       (data_xor(31 downto 14) = "000000000000000001" and input_int_1(14) = '1') or
--                       (data_xor(31 downto 13) = "0000000000000000001" and input_int_1(13) = '1') or
--                       (data_xor(31 downto 12) = "00000000000000000001" and input_int_1(12) = '1') or
--                       (data_xor(31 downto 11) = "000000000000000000001" and input_int_1(11) = '1') or
--                       (data_xor(31 downto 10) = "0000000000000000000001" and input_int_1(10) = '1') or
--                       (data_xor(31 downto 9) = "00000000000000000000001" and input_int_1(9) = '1') or
--                       (data_xor(31 downto 8) = "000000000000000000000001" and input_int_1(8) = '1') or
--                       (data_xor(31 downto 7) = "0000000000000000000000001" and input_int_1(7) = '1') or
--                       (data_xor(31 downto 6) = "00000000000000000000000001" and input_int_1(6) = '1') or
--                       (data_xor(31 downto 5) = "000000000000000000000000001" and input_int_1(5) = '1') or
--                       (data_xor(31 downto 4) = "0000000000000000000000000001" and input_int_1(4) = '1') or
--                       (data_xor(31 downto 3) = "00000000000000000000000000001" and input_int_1(3) = '1') or
--                       (data_xor(31 downto 2) = "000000000000000000000000000001" and input_int_1(2) = '1') or
--                       (data_xor(31 downto 1) = "0000000000000000000000000000001" and input_int_1(1) = '1') or
--                       (data_xor = x"00000001" and input_int_1(0) = '1') else
--              '0';

--  check_lt <= '1' when (data_xor(31) = '1' and input_int_2(31) = '1') or
--                       (data_xor(31 downto 30) = "01" and input_int_2(30) = '1') or
--                       (data_xor(31 downto 29) = "001" and input_int_2(29) = '1') or
--                       (data_xor(31 downto 28) = "0001" and input_int_2(28) = '1') or
--                       (data_xor(31 downto 27) = "00001" and input_int_2(27) = '1') or
--                       (data_xor(31 downto 26) = "000001" and input_int_2(26) = '1') or
--                       (data_xor(31 downto 25) = "0000001" and input_int_2(25) = '1') or
--                       (data_xor(31 downto 24) = "00000001" and input_int_2(24) = '1') or
--                       (data_xor(31 downto 23) = "000000001" and input_int_2(23) = '1') or
--                       (data_xor(31 downto 22) = "0000000001" and input_int_2(22) = '1') or
--                       (data_xor(31 downto 21) = "00000000001" and input_int_2(21) = '1') or
--                       (data_xor(31 downto 20) = "000000000001" and input_int_2(20) = '1') or
--                       (data_xor(31 downto 19) = "0000000000001" and input_int_2(19) = '1') or
--                       (data_xor(31 downto 18) = "00000000000001" and input_int_2(18) = '1') or
--                       (data_xor(31 downto 17) = "000000000000001" and input_int_2(17) = '1') or
--                       (data_xor(31 downto 16) = "0000000000000001" and input_int_2(16) = '1') or
--                       (data_xor(31 downto 15) = "00000000000000001" and input_int_2(15) = '1') or
--                       (data_xor(31 downto 14) = "000000000000000001" and input_int_2(14) = '1') or
--                       (data_xor(31 downto 13) = "0000000000000000001" and input_int_2(13) = '1') or
--                       (data_xor(31 downto 12) = "00000000000000000001" and input_int_2(12) = '1') or
--                       (data_xor(31 downto 11) = "000000000000000000001" and input_int_2(11) = '1') or
--                       (data_xor(31 downto 10) = "0000000000000000000001" and input_int_2(10) = '1') or
--                       (data_xor(31 downto 9) = "00000000000000000000001" and input_int_2(9) = '1') or
--                       (data_xor(31 downto 8) = "000000000000000000000001" and input_int_2(8) = '1') or
--                       (data_xor(31 downto 7) = "0000000000000000000000001" and input_int_2(7) = '1') or
--                       (data_xor(31 downto 6) = "00000000000000000000000001" and input_int_2(6) = '1') or
--                       (data_xor(31 downto 5) = "000000000000000000000000001" and input_int_2(5) = '1') or
--                       (data_xor(31 downto 4) = "0000000000000000000000000001" and input_int_2(4) = '1') or
--                       (data_xor(31 downto 3) = "00000000000000000000000000001" and input_int_2(3) = '1') or
--                       (data_xor(31 downto 2) = "000000000000000000000000000001" and input_int_2(2) = '1') or
--                       (data_xor(31 downto 1) = "0000000000000000000000000000001" and input_int_2(1) = '1') or
--                       (data_xor = x"00000001" and input_int_2(0) = '1') else
--              '0';

  data_xor <= input_int_1 xor input_int_2;

  prov_PC <= base_PC + add_PC when (check_branch = '1' and which_cond = "000" and check_eq = '1') or -- =
                                   (check_branch = '1' and which_cond = "001" and check_eq = '0') or -- /=
                                   (check_branch = '1' and which_cond = "010" and (check_eq = '1' or check_ltz = '1')) or -- <= with 0
                                   (check_branch = '1' and which_cond = "011" and (check_eq = '1' or check_gtz = '1')) or -- >= with 0
                                   (check_branch = '1' and which_cond = "100" and check_gtz = '1') or -- > with 0
                                   (check_branch = '1' and which_cond = "101" and check_ltz = '1') else -- < with 0
             base_PC + x"0001";

  new_PC_sub <= jump_PC when check_jump = '1' else
                prov_PC when check_branch = '1' else
                base_PC + x"0001";

  sll_data <= input_int_1 when input_int_2 = x"00000000" else
              input_int_1(30 downto 0) & '0' when input_int_2 = x"00000001" else
              input_int_1(29 downto 0) & "00" when input_int_2 = x"00000002" else
              input_int_1(28 downto 0) & "000" when input_int_2 = x"00000003" else
              input_int_1(27 downto 0) & "0000" when input_int_2 = x"00000004" else
              input_int_1(26 downto 0) & "00000" when input_int_2 = x"00000005" else
              input_int_1(25 downto 0) & "000000" when input_int_2 = x"00000006" else
              input_int_1(24 downto 0) & "0000000" when input_int_2 = x"00000007" else
              input_int_1(23 downto 0) & "00000000" when input_int_2 = x"00000008" else
              input_int_1(22 downto 0) & "000000000" when input_int_2 = x"00000009" else
              input_int_1(21 downto 0) & "0000000000" when input_int_2 = x"0000000a" else
              input_int_1(20 downto 0) & "00000000000" when input_int_2 = x"0000000b" else
              input_int_1(19 downto 0) & "000000000000" when input_int_2 = x"0000000c" else
              input_int_1(18 downto 0) & "0000000000000" when input_int_2 = x"0000000d" else
              input_int_1(17 downto 0) & "00000000000000" when input_int_2 = x"0000000e" else
              input_int_1(16 downto 0) & "000000000000000" when input_int_2 = x"0000000f" else
              input_int_1(15 downto 0) & "0000000000000000" when input_int_2 = x"00000010" else
              input_int_1(14 downto 0) & "00000000000000000" when input_int_2 = x"00000011" else
              input_int_1(13 downto 0) & "000000000000000000" when input_int_2 = x"00000012" else
              input_int_1(12 downto 0) & "0000000000000000000" when input_int_2 = x"00000013" else
              input_int_1(11 downto 0) & "00000000000000000000" when input_int_2 = x"00000014" else
              input_int_1(10 downto 0) & "000000000000000000000" when input_int_2 = x"00000015" else
              input_int_1(9 downto 0) & "0000000000000000000000" when input_int_2 = x"00000016" else
              input_int_1(8 downto 0) & "00000000000000000000000" when input_int_2 = x"00000017" else
              input_int_1(7 downto 0) & "000000000000000000000000" when input_int_2 = x"00000018" else
              input_int_1(6 downto 0) & "0000000000000000000000000" when input_int_2 = x"00000019" else
              input_int_1(5 downto 0) & "00000000000000000000000000" when input_int_2 = x"0000001a" else
              input_int_1(4 downto 0) & "000000000000000000000000000" when input_int_2 = x"0000001b" else
              input_int_1(3 downto 0) & "0000000000000000000000000000" when input_int_2 = x"0000001c" else
              input_int_1(2 downto 0) & "00000000000000000000000000000" when input_int_2 = x"0000001d" else
              input_int_1(1 downto 0) & "000000000000000000000000000000" when input_int_2 = x"0000001e" else
              input_int_1(0) & "0000000000000000000000000000000" when input_int_2 = x"0000001f" else
              x"00000000";

  slr_data <= input_int_1 when input_int_2 = x"00000000" else
              '0' & input_int_1(31 downto 1) when input_int_2 = x"00000001" else
              "00" & input_int_1(31 downto 2) when input_int_2 = x"00000002" else
              "000" & input_int_1(31 downto 3) when input_int_2 = x"00000003" else
              "0000" & input_int_1(31 downto 4) when input_int_2 = x"00000004" else
              "00000" & input_int_1(31 downto 5) when input_int_2 = x"00000005" else
              "000000" & input_int_1(31 downto 6) when input_int_2 = x"00000006" else
              "0000000" & input_int_1(31 downto 7) when input_int_2 = x"00000007" else
              "00000000" & input_int_1(31 downto 8) when input_int_2 = x"00000008" else
              "000000000" & input_int_1(31 downto 9) when input_int_2 = x"00000009" else
              "0000000000" & input_int_1(31 downto 10) when input_int_2 = x"0000000a" else
              "00000000000" & input_int_1(31 downto 11) when input_int_2 = x"0000000b" else
              "000000000000" & input_int_1(31 downto 12) when input_int_2 = x"0000000c" else
              "0000000000000" & input_int_1(31 downto 13) when input_int_2 = x"0000000d" else
              "00000000000000" & input_int_1(31 downto 14) when input_int_2 = x"0000000e" else
              "000000000000000" & input_int_1(31 downto 15) when input_int_2 = x"0000000f" else
              "0000000000000000" & input_int_1(31 downto 16) when input_int_2 = x"00000010" else
              "00000000000000000" & input_int_1(31 downto 17) when input_int_2 = x"00000011" else
              "000000000000000000" & input_int_1(31 downto 18) when input_int_2 = x"00000012" else
              "0000000000000000000" & input_int_1(31 downto 19) when input_int_2 = x"00000013" else
              "00000000000000000000" & input_int_1(31 downto 20) when input_int_2 = x"00000014" else
              "000000000000000000000" & input_int_1(31 downto 21) when input_int_2 = x"00000015" else
              "0000000000000000000000" & input_int_1(31 downto 22) when input_int_2 = x"00000016" else
              "00000000000000000000000" & input_int_1(31 downto 23) when input_int_2 = x"00000017" else
              "000000000000000000000000" & input_int_1(31 downto 24) when input_int_2 = x"00000018" else
              "0000000000000000000000000" & input_int_1(31 downto 25) when input_int_2 = x"00000019" else
              "00000000000000000000000000" & input_int_1(31 downto 26) when input_int_2 = x"0000001a" else
              "000000000000000000000000000" & input_int_1(31 downto 27) when input_int_2 = x"0000001b" else
              "0000000000000000000000000000" & input_int_1(31 downto 28) when input_int_2 = x"0000001c" else
              "00000000000000000000000000000" & input_int_1(31 downto 29) when input_int_2 = x"0000001d" else
              "000000000000000000000000000000" & input_int_1(31 downto 30) when input_int_2 = x"0000001e" else
              "0000000000000000000000000000000" & input_int_1(31) when input_int_2 = x"0000001f" else
              x"00000000";


  output_int <= input_int_1 and input_int_2 when calcu_type = "0000" else
                input_int_1 or input_int_2 when calcu_type = "0001" else
                input_int_1 xor input_int_2 when calcu_type = "0010" else
                input_int_1 + input_int_2 when calcu_type = "0100" else
                input_int_1 - input_int_2 when calcu_type = "0101" else
                sll_data when calcu_type = "0110" else
                slr_data when calcu_type = "0111" else
                x"00000001" when calcu_type = "1000" and input_int_1 < input_int_2 else
                x"00000000";

  ALU_process: process(clk)
  begin
    if rising_edge(clk) then
      case state is
        when "00" | "01" | "10" =>
          null;
        when "11" =>
          sys_activate_buf <= sys_call_sig;
          sys_act_type_buf <= sys_call_type;
          store_mem_buf <= store_sig;
          load_mem_buf <= load_sig;
          send_to_R_buf <= write_R_sig;
          new_PC_buf <= new_PC_sub;
          dest_R_buf <= write_R;
          output_buf <= output_int; --(or FPU_result)
          mem_data_buf <= store_data;
        when others =>
          null;
      end case;
    end if;
  end process ALU_process;
end ALU;
