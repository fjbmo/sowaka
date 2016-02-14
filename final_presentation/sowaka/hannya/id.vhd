library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity id is
  Port(
    clk                 : in std_logic;
    will_jump           : in std_logic; --reset instruction to NOP
    write_PC            : in std_logic_vector(15 downto 0); --(present)PC
    recv_instr          : in std_logic_vector(31 downto 0);
    fcc_return          : in std_logic_vector(7 downto 0); --new fcc
    ALU_to_R_sig_return : in std_logic; --signal from ALU whether to write
    ALU_to_R_type       : in std_logic; --write data to GPR when 0 and FPR when 1
    ALU_to_R_pointer    : in std_logic_vector(4 downto 0); --write data to this register
    ALU_to_R            : in std_logic_vector(31 downto 0); --data from ALU
    mem_to_R_sig_return : in std_logic; --signal from memory whether to write
    mem_to_R_type       : in std_logic; --write data to GPR when 0 and FPR when 1
    mem_to_R_pointer    : in std_logic_vector(4 downto 0); --write data to this register
    mem_to_R            : in std_logic_vector(31 downto 0); --data from memory
    insert_nop          : out std_logic; --insert NOP after this instruction
    insert_nop_num      : out std_logic_vector(2 downto 0); --insert this number of NOP
    sys_sig             : out std_logic; --call system call
    sys_type            : out std_logic_vector(1 downto 0); --system call type
    branch_instr        : out std_logic;
    branch_cond         : out std_logic_vector(3 downto 0);
    fcc_sig             : out std_logic; --signal for changing fcc
    fcc_comp            : out std_logic_vector(1 downto 0); --compare type for fcc
    fcc_pointer         : out std_logic_vector(2 downto 0); --pointer for fcc
    fcc_update          : out std_logic_vector(7 downto 0); --update result of comparing FPR
    jump_instr          : out std_logic;
    store_instr         : out std_logic;
    load_instr          : out std_logic;
    ALU_to_R_sig        : out std_logic; --write data to register from ALU
    ALU_data_R_type     : out std_logic; --write to GPU when 0 and FPR when 1 from ALU
    ALU_write_data_R    : out std_logic_vector(4 downto 0); --write to this register from ALU
    mem_to_R_sig        : out std_logic; --write data to register from memory
    mem_data_R_type     : out std_logic; --write to GPU when 0 and FPR when 1 from mem
    mem_write_data_R    : out std_logic_vector(4 downto 0); --write to this register from mem
    now_PC              : out std_logic_vector(15 downto 0);
    add_to_PC           : out std_logic_vector(15 downto 0); --add this to PC
    change_PC           : out std_logic_vector(15 downto 0); --jump to this PC
    data_1              : out std_logic_vector(31 downto 0); --data_1 for ALU
    data_2              : out std_logic_vector(31 downto 0); --data_2 for ALU
    data_to_mem         : out std_logic_vector(31 downto 0); --store this data to mem
    data_with_offset    : out std_logic_vector(31 downto 0); --data added with offset
    ALU_control         : out std_logic_vector(4 downto 0); --write this
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
end id;

architecture id of id is
  signal insert_nop_buf       : std_logic := '0';
  signal insert_nop_num_buf   : std_logic_vector(2 downto 0) := "000";
  signal sys_sig_buf          : std_logic := '0';
  signal sys_type_buf         : std_logic_vector(1 downto 0) := "00";
  signal branch_instr_buf     : std_logic := '0';
  signal branch_cond_buf      : std_logic_vector(3 downto 0) := "0000";
  signal fcc_sig_buf          : std_logic := '0';
  signal fcc_comp_buf         : std_logic_vector(1 downto 0) := "00";
  signal fcc_pointer_buf      : std_logic_vector(2 downto 0) := "000";
  signal fcc_update_buf       : std_logic_vector(7 downto 0) := "00000000";
  signal jump_instr_buf       : std_logic := '0';
  signal store_instr_buf      : std_logic := '0';
  signal load_instr_buf       : std_logic := '0';
  signal ALU_to_R_sig_buf     : std_logic := '0';
  signal ALU_data_R_type_buf  : std_logic := '0';
  signal ALU_write_data_R_buf : std_logic_vector(4 downto 0) := "00000";
  signal mem_to_R_sig_buf     : std_logic := '0';
  signal mem_data_R_type_buf  : std_logic := '0';
  signal mem_write_data_R_buf : std_logic_vector(4 downto 0) := "00000";
  signal now_PC_buf           : std_logic_vector(15 downto 0) := x"0000";
  signal add_to_PC_buf        : std_logic_vector(15 downto 0) := x"0000";
  signal change_PC_buf        : std_logic_vector(15 downto 0) := x"0000";
  signal data_1_buf           : std_logic_vector(31 downto 0) := x"00000000";
  signal data_2_buf           : std_logic_vector(31 downto 0) := x"00000000";
  signal data_to_mem_buf      : std_logic_vector(31 downto 0) := x"00000000";
  signal data_with_offset_buf : std_logic_vector(31 downto 0) := x"00000000";
  signal ALU_control_buf      : std_logic_vector(4 downto 0) := "00000";

  signal instr                : std_logic_vector(31 downto 0) := x"00000000";
  signal head                 : std_logic_vector(5 downto 0) := "000000";
  signal rs_pointer           : std_logic_vector(4 downto 0) := "00000";
  signal rt_pointer           : std_logic_vector(4 downto 0) := "00000";
  signal rd_pointer           : std_logic_vector(4 downto 0) := "00000";
  signal fs_pointer           : std_logic_vector(4 downto 0) := "00000";
  signal ft_pointer           : std_logic_vector(4 downto 0) := "00000";
  signal fd_pointer           : std_logic_vector(4 downto 0) := "00000";
  signal sa                   : std_logic_vector(4 downto 0) := "00000";
  signal tail                 : std_logic_vector(5 downto 0) := "000000";
  signal fmt                  : std_logic_vector(4 downto 0) := "00000";
  signal offset               : std_logic_vector(15 downto 0) := x"0000";
  signal instr_index          : std_logic_vector(25 downto 0) := "00000000000000000000000000";
  signal code                 : std_logic_vector(25 downto 6) := x"00000";
  signal cc_nd_tf_set         : std_logic_vector(4 downto 0) := "00000";
  signal rs                   : std_logic_vector(31 downto 0) := x"00000000";
  signal rt                   : std_logic_vector(31 downto 0) := x"00000000";
  signal fs                   : std_logic_vector(31 downto 0) := x"00000000";
  signal ft                   : std_logic_vector(31 downto 0) := x"00000000";
  signal insert_nop_sub       : std_logic := '0';
  signal insert_nop_num_sub   : std_logic_vector(2 downto 0) := "000";
  signal sys_sig_sub          : std_logic := '0';
  signal sys_type_sub         : std_logic_vector(1 downto 0) := "00";
  signal fcc_sig_sub          : std_logic := '0';
  signal fcc_comp_sub         : std_logic_vector(1 downto 0) := "00";
  signal fcc_pointer_sub      : std_logic_vector(2 downto 0) := "000";
  signal fcc_update_sub       : std_logic_vector(7 downto 0) := "00000000";
  signal branch_instr_sub     : std_logic := '0';
  signal branch_cond_sub      : std_logic_vector(3 downto 0) := "0000";
  signal jump_instr_sub       : std_logic := '0';
  signal store_instr_sub      : std_logic := '0';
  signal load_instr_sub       : std_logic := '0';
  signal ALU_to_R_sig_sub     : std_logic := '0';
  signal mem_to_R_sig_sub     : std_logic := '0';
  signal data_R_type_sub      : std_logic := '0'; --share same value with ALU and mem
  signal write_data_R_sub     : std_logic_vector(4 downto 0) := "00000"; --share same value with ALU and mem
  signal now_PC_sub           : std_logic_vector(15 downto 0) := x"0000";
  signal add_to_PC_sub        : std_logic_vector(15 downto 0) := x"0000";
  signal change_PC_sub        : std_logic_vector(15 downto 0) := x"0000";
  signal data_1_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal data_2_sub           : std_logic_vector(31 downto 0) := x"00000000";
  signal data_to_mem_sub      : std_logic_vector(31 downto 0) := x"00000000";
  signal data_with_offset_sub : std_logic_vector(31 downto 0) := x"00000000";
  signal ALU_control_sub      : std_logic_vector(4 downto 0) := "00000";
  signal r0                   : std_logic_vector(31 downto 0) := x"00000000"; --$zero
  signal r1                   : std_logic_vector(31 downto 0) := x"00000000"; --$at
  signal r2                   : std_logic_vector(31 downto 0) := x"00000000"; --$v0
  signal r3                   : std_logic_vector(31 downto 0) := x"00000000"; --$v1
  signal r4                   : std_logic_vector(31 downto 0) := x"00000000"; --$a0
  signal r5                   : std_logic_vector(31 downto 0) := x"00000000"; --$a1
  signal r6                   : std_logic_vector(31 downto 0) := x"00000000"; --$a2
  signal r7                   : std_logic_vector(31 downto 0) := x"00000000"; --$a3
  signal r8                   : std_logic_vector(31 downto 0) := x"00000000"; --$t0
  signal r9                   : std_logic_vector(31 downto 0) := x"00000000"; --$t1
  signal r10                  : std_logic_vector(31 downto 0) := x"00000000"; --$t2
  signal r11                  : std_logic_vector(31 downto 0) := x"00000000"; --$t3
  signal r12                  : std_logic_vector(31 downto 0) := x"00000000"; --$t4
  signal r13                  : std_logic_vector(31 downto 0) := x"00000000"; --$t5
  signal r14                  : std_logic_vector(31 downto 0) := x"00000000"; --$t6
  signal r15                  : std_logic_vector(31 downto 0) := x"00000000"; --$t7
  signal r16                  : std_logic_vector(31 downto 0) := x"00000000"; --$s0
  signal r17                  : std_logic_vector(31 downto 0) := x"00000000"; --$s1
  signal r18                  : std_logic_vector(31 downto 0) := x"00000000"; --$s2
  signal r19                  : std_logic_vector(31 downto 0) := x"00000000"; --$s3
  signal r20                  : std_logic_vector(31 downto 0) := x"00000000"; --$s4
  signal r21                  : std_logic_vector(31 downto 0) := x"00000000"; --$s5
  signal r22                  : std_logic_vector(31 downto 0) := x"00000000"; --$s6
  signal r23                  : std_logic_vector(31 downto 0) := x"00000000"; --$s7
  signal r24                  : std_logic_vector(31 downto 0) := x"00000000"; --$t8
  signal r25                  : std_logic_vector(31 downto 0) := x"00000000"; --$t9
  signal r26                  : std_logic_vector(31 downto 0) := x"00000000"; --$k0
  signal r27                  : std_logic_vector(31 downto 0) := x"00000000"; --$k1
  signal r28                  : std_logic_vector(31 downto 0) := x"00000000"; --$gp
  signal r29                  : std_logic_vector(31 downto 0) := x"000fffff"; --$sp
  signal r30                  : std_logic_vector(31 downto 0) := x"00000000"; --$hp
  signal r31                  : std_logic_vector(31 downto 0) := x"00000000"; --$ra
  signal r0_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal r1_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal r2_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal r3_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal r4_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal r5_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal r6_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal r7_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal r8_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal r9_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal r10_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r11_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r12_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r13_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r14_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r15_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r16_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r17_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r18_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r19_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r20_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r21_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r22_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r23_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r24_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r25_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r26_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r27_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r28_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r29_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal r30_sub              : std_logic_vector(31 downto 0) := x"ffffffff";
  signal r31_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f0                   : std_logic_vector(31 downto 0) := x"00000000";
  signal f1                   : std_logic_vector(31 downto 0) := x"00000000";
  signal f2                   : std_logic_vector(31 downto 0) := x"00000000";
  signal f3                   : std_logic_vector(31 downto 0) := x"00000000";
  signal f4                   : std_logic_vector(31 downto 0) := x"00000000";
  signal f5                   : std_logic_vector(31 downto 0) := x"00000000";
  signal f6                   : std_logic_vector(31 downto 0) := x"00000000";
  signal f7                   : std_logic_vector(31 downto 0) := x"00000000";
  signal f8                   : std_logic_vector(31 downto 0) := x"00000000";
  signal f9                   : std_logic_vector(31 downto 0) := x"00000000";
  signal f10                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f11                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f12                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f13                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f14                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f15                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f16                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f17                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f18                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f19                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f20                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f21                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f22                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f23                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f24                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f25                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f26                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f27                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f28                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f29                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f30                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f31                  : std_logic_vector(31 downto 0) := x"00000000";
  signal f0_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal f1_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal f2_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal f3_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal f4_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal f5_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal f6_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal f7_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal f8_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal f9_sub               : std_logic_vector(31 downto 0) := x"00000000";
  signal f10_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f11_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f12_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f13_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f14_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f15_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f16_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f17_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f18_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f19_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f20_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f21_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f22_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f23_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f24_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f25_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f26_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f27_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f28_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f29_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f30_sub              : std_logic_vector(31 downto 0) := x"00000000";
  signal f31_sub              : std_logic_vector(31 downto 0) := x"00000000";
  
begin
  insert_nop <= insert_nop_buf;
  insert_nop_num <= insert_nop_num_buf;
  sys_sig <= sys_sig_buf;
  sys_type <= sys_type_buf;
  branch_instr <= branch_instr_buf;
  branch_cond <= branch_cond_buf;
  fcc_sig <= fcc_sig_buf;
  fcc_comp <= fcc_comp_buf;
  fcc_update <= fcc_update_buf;
  fcc_pointer <= fcc_pointer_buf;
  jump_instr <= jump_instr_buf;
  store_instr <= store_instr_buf;
  load_instr <= load_instr_buf;
  ALU_to_R_sig <= ALU_to_R_sig_buf;
  ALU_data_R_type <= ALU_data_R_type_buf;
  ALU_write_data_R <= ALU_write_data_R_buf;
  mem_to_R_sig <= mem_to_R_sig_buf;
  mem_data_R_type <= mem_data_R_type_buf;
  mem_write_data_R <= mem_write_data_R_buf;
  now_PC <= now_PC_buf;
  add_to_PC <= add_to_PC_buf;
  change_PC <= change_PC_buf;
  data_1 <= data_1_buf;
  data_2 <= data_2_buf;
  data_to_mem <= data_to_mem_buf;
  data_with_offset <= data_with_offset_buf;
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
  f0_data <= f0;
  f1_data <= f1;
  f2_data <= f2;
  f3_data <= f3;
  f4_data <= f4;
  f5_data <= f5;
  f6_data <= f6;
  f7_data <= f7;
  f8_data <= f8;
  f9_data <= f9;
  f10_data <= f10;
  f11_data <= f11;
  f12_data <= f12;
  f13_data <= f13;
  f14_data <= f14;
  f15_data <= f15;
  f16_data <= f16;
  f17_data <= f17;
  f18_data <= f18;
  f19_data <= f19;
  f20_data <= f20;
  f21_data <= f21;
  f22_data <= f22;
  f23_data <= f23;
  f24_data <= f24;
  f25_data <= f25;
  f26_data <= f26;
  f27_data <= f27;
  f28_data <= f28;
  f29_data <= f29;
  f30_data <= f30;
  f31_data <= f31;

  instr <= recv_instr when will_jump = '0' else
           x"fc000000";
  head <= instr(31 downto 26);
  rs_pointer <= instr(25 downto 21);
  rt_pointer <= instr(20 downto 16);
  rd_pointer <= instr(15 downto 11);
  fs_pointer <= instr(15 downto 11);
  ft_pointer <= instr(20 downto 16);
  fd_pointer <= instr(10 downto 6);
  sa <= instr(10 downto 6);
  tail <= instr(5 downto 0);
  fmt <= instr(25 downto 21);
  offset <= instr(15 downto 0);
  instr_index <= instr(25 downto 0);
  code <= instr(25 downto 6);

  cc_nd_tf_set <= rt_pointer when (head = "010001" and rs_pointer = "01000") else
                  fd_pointer when (head = "010001" and tail(5 downto 4) = "11") else
                  "00000";
  
  rs <= ALU_to_R when ALU_to_R_pointer = rs_pointer and ALU_to_R_type = '0' and ALU_to_R_sig_return = '1' else
        mem_to_R when mem_to_R_pointer = rs_pointer and mem_to_R_type = '0' and mem_to_R_sig_return = '1' else
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

  rt <= ALU_to_R when ALU_to_R_pointer = rt_pointer and ALU_to_R_type = '0' and ALU_to_R_sig_return = '1' else
        mem_to_R when mem_to_R_pointer = rt_pointer and mem_to_R_type = '0' and mem_to_R_sig_return = '1' else
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

  fs <= ALU_to_R when ALU_to_R_pointer = fs_pointer and ALU_to_R_type = '1' and ALU_to_R_sig_return = '1' else
        mem_to_R when mem_to_R_pointer = fs_pointer and mem_to_R_type = '1' and mem_to_R_sig_return = '1' else
        f0 when fs_pointer = "00000" else
        f1 when fs_pointer = "00001" else
        f2 when fs_pointer = "00010" else
        f3 when fs_pointer = "00011" else
        f4 when fs_pointer = "00100" else
        f5 when fs_pointer = "00101" else
        f6 when fs_pointer = "00110" else
        f7 when fs_pointer = "00111" else
        f8 when fs_pointer = "01000" else
        f9 when fs_pointer = "01001" else
        f10 when fs_pointer = "01010" else
        f11 when fs_pointer = "01011" else
        f12 when fs_pointer = "01100" else
        f13 when fs_pointer = "01101" else
        f14 when fs_pointer = "01110" else
        f15 when fs_pointer = "01111" else
        f16 when fs_pointer = "10000" else
        f17 when fs_pointer = "10001" else
        f18 when fs_pointer = "10010" else
        f19 when fs_pointer = "10011" else
        f20 when fs_pointer = "10100" else
        f21 when fs_pointer = "10101" else
        f22 when fs_pointer = "10110" else
        f23 when fs_pointer = "10111" else
        f24 when fs_pointer = "11000" else
        f25 when fs_pointer = "11001" else
        f26 when fs_pointer = "11010" else
        f27 when fs_pointer = "11011" else
        f28 when fs_pointer = "11100" else
        f29 when fs_pointer = "11101" else
        f30 when fs_pointer = "11110" else
        f31;

  ft <= ALU_to_R when ALU_to_R_pointer = ft_pointer and ALU_to_R_type = '1' and ALU_to_R_sig_return = '1' else
        mem_to_R when mem_to_R_pointer = ft_pointer and mem_to_R_type = '1' and mem_to_R_sig_return = '1' else
        f0 when ft_pointer = "00000" else
        f1 when ft_pointer = "00001" else
        f2 when ft_pointer = "00010" else
        f3 when ft_pointer = "00011" else
        f4 when ft_pointer = "00100" else
        f5 when ft_pointer = "00101" else
        f6 when ft_pointer = "00110" else
        f7 when ft_pointer = "00111" else
        f8 when ft_pointer = "01000" else
        f9 when ft_pointer = "01001" else
        f10 when ft_pointer = "01010" else
        f11 when ft_pointer = "01011" else
        f12 when ft_pointer = "01100" else
        f13 when ft_pointer = "01101" else
        f14 when ft_pointer = "01110" else
        f15 when ft_pointer = "01111" else
        f16 when ft_pointer = "10000" else
        f17 when ft_pointer = "10001" else
        f18 when ft_pointer = "10010" else
        f19 when ft_pointer = "10011" else
        f20 when ft_pointer = "10100" else
        f21 when ft_pointer = "10101" else
        f22 when ft_pointer = "10110" else
        f23 when ft_pointer = "10111" else
        f24 when ft_pointer = "11000" else
        f25 when ft_pointer = "11001" else
        f26 when ft_pointer = "11010" else
        f27 when ft_pointer = "11011" else
        f28 when ft_pointer = "11100" else
        f29 when ft_pointer = "11101" else
        f30 when ft_pointer = "11110" else
        f31;

  insert_nop_sub <= '1' when (head = "010001" and rs_pointer = "10000" and tail = "000000") or
                             (head = "010001" and rs_pointer = "10000" and tail = "000001") or
                             (head = "010001" and rs_pointer = "10000" and tail = "000010") or
                             (head = "010001" and rs_pointer = "10000" and tail = "000011") or
                             (head = "010001" and rs_pointer = "10000" and tail = "000100") or
                             (head = "010001" and rs_pointer = "10000" and tail = "000111") or
                             (head = "010001" and rs_pointer = "10000" and tail = "100000") or
                             (head = "010001" and rs_pointer = "10000" and tail = "001101") or
                             (head = "000000" and tail = "001100") or --(NOP authority will be passed to top module at next clk)
                             head = "101011" or
                             head = "100011" or
                             head = "111001" or
                             head = "110001" else
                    '0';

  insert_nop_num_sub <= "111" when (head = "010001" and rs_pointer = "10000" and tail = "000000") or
                                   (head = "010001" and rs_pointer = "10000" and tail = "000001") or
                                   (head = "010001" and rs_pointer = "10000" and tail = "000010") or
                                   (head = "010001" and rs_pointer = "10000" and tail = "000011") or
                                   (head = "010001" and rs_pointer = "10000" and tail = "000100") or
                                   (head = "010001" and rs_pointer = "10000" and tail = "000111") or
                                   (head = "010001" and rs_pointer = "10000" and tail = "100000") or
                                   (head = "010001" and rs_pointer = "10000" and tail = "001101") or
                                   (head = "000000" and tail = "001100") or --(NOP authority will be passed to top module at next clk)
                                   head = "101011" or
                                   head = "100011" or
                                   head = "111001" or
                                   head = "110001" else
                        "000";

  sys_sig_sub <= '1' when (head = "000000" and tail = "001100") else
                 '0';

  sys_type_sub <= "01" when (mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "00010" and mem_to_R = x"0000000b") or
                            ((mem_to_R_sig_return = '0' or mem_to_R_type = '0' or mem_to_R_pointer /= "00010") and r2 = x"0000000b") else
                  "10" when (mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "00010" and mem_to_R = x"0000000c") or
                            ((mem_to_R_sig_return = '0' or mem_to_R_type = '0' or mem_to_R_pointer /= "00010") and r2 = x"0000000c") else
                  "00";

  branch_instr_sub <= '1' when head = "000100" or
                               head = "000101" or
                               head = "000110" or
                               (head = "000001" and rt_pointer = "00001") or
                               head = "000111" or
                               (head = "000001" and rt_pointer = "00000") or
                               (head = "010001" and rs_pointer = "01000") else
                      '0';

  branch_cond_sub <= "0000" when head = "000100" else -- =
                     "0001" when head = "000101" else -- /=
                     "0010" when head = "000110" else -- <= with 0
                     "0011" when (head = "000001" and rt_pointer = "00001") else -- >= with 0
                     "0100" when head = "000111" else -- > with 0
                     "0101" when (head = "000001" and rt_pointer = "00000") else -- < with 0
                     "0110" when (head = "010001" and rs_pointer = "01000" and cc_nd_tf_set(0) = '1') else -- fcc[cc] = 1
                     "0111" when (head = "010001" and rs_pointer = "01000" and cc_nd_tf_set(0) = '0') else -- fcc[cc] = 0
                     "1111";

  fcc_sig_sub <= '1' when (head = "010001" and rs_pointer = "10000" and tail(5 downto 4) = "11") else
                 '0';

  fcc_comp_sub <= "01" when (head = "010001" and rs_pointer = "10000" and tail = "110010") else
                  "10" when (head = "010001" and rs_pointer = "10000" and tail = "110100") else
                  "11" when (head = "010001" and rs_pointer = "10000" and tail = "110110") else
                  "00";
  
  fcc_pointer_sub <= cc_nd_tf_set(4 downto 2);
    
  fcc_update_sub <= fcc_return;

  jump_instr_sub <= '1' when head = "000010" or
                             (head = "000000" and tail = "001000") or
                             head = "000011" or
                             (head = "000000" and tail = "001001") else
                    '0';

  store_instr_sub <= '1' when head = "101011" or
                              head = "111001" else
                     '0';

  load_instr_sub <= '1' when head = "100011" or
                             head = "110001" else
                    '0';

  ALU_to_R_sig_sub <= '1' when (head = "000000" and tail = "100000") or
                               (head = "000000" and tail = "100010") or
                               (head = "000000" and tail = "101010") or
                               (head = "000000" and tail = "100100") or
                               (head = "000000" and tail = "100101") or
                               (head = "000000" and tail = "100110") or
                               (head = "000000" and tail = "000000") or
                               (head = "000000" and tail = "000010") or
                               (head = "000000" and tail = "000100") or
                               (head = "010001" and rs_pointer = "10000" and tail = "000000") or
                               (head = "010001" and rs_pointer = "10000" and tail = "000001") or
                               (head = "010001" and rs_pointer = "10000" and tail = "000010") or
                               (head = "010001" and rs_pointer = "10000" and tail = "000011") or
                               (head = "010001" and rs_pointer = "10000" and tail = "000100") or
                               (head = "010001" and rs_pointer = "10000" and tail = "000111") or
                               (head = "010001" and rs_pointer = "10000" and tail = "100000") or
                               (head = "010001" and rs_pointer = "10000" and tail = "001101") or
                               head = "001000" or
                               head = "001001" or
                               head = "000011" or
                               (head = "000000" and tail = "001001") or
                               head = "001111" or
                               head = "001101" or
                               (head = "010001" and rs_pointer = "00000") or
                               (head = "010001" and rs_pointer = "00100") or
                               (head = "010001" and rs_pointer = "10000" and tail = "000110") else
                      '0';

  mem_to_R_sig_sub <= '1' when head = "100011" or
                               (sys_sig_sub = '1' and sys_type_sub = "10") or
                               head = "110001" else
                      '0';

  data_R_type_sub <= '1' when (head = "010001" and rs_pointer = "10000" and tail = "000000") or
                              (head = "010001" and rs_pointer = "10000" and tail = "000001") or
                              (head = "010001" and rs_pointer = "10000" and tail = "000010") or
                              (head = "010001" and rs_pointer = "10000" and tail = "000011") or
                              (head = "010001" and rs_pointer = "10000" and tail = "000100") or
                              (head = "010001" and rs_pointer = "10000" and tail = "000111") or
                              (head = "010001" and rs_pointer = "10000" and tail = "100000") or
                              (head = "010001" and rs_pointer = "10000" and tail = "001101") or
                              head = "110001" or
                              (head = "010001" and rs_pointer = "00100") or
                              (head = "010001" and rs_pointer = "10000" and tail = "000110") else
                     '0';

  write_data_R_sub <= rd_pointer when (head = "000000" and tail = "100000") or
                                      (head = "000000" and tail = "100010") or
                                      (head = "000000" and tail = "101010") or
                                      (head = "000000" and tail = "100100") or
                                      (head = "000000" and tail = "100101") or
                                      (head = "000000" and tail = "100110") or
                                      (head = "000000" and tail = "000000") or
                                      (head = "000000" and tail = "000001") or
                                      (head = "000000" and tail = "000010") or
                                      (head = "000000" and tail = "000100") or
                                      (head = "000000" and tail = "001001") else
                      rt_pointer when head = "001000" or
                                      head = "001001" or
                                      head = "001111" or
                                      head = "001101" or
                                      head = "100011" or
                                      (head = "010001" and rs_pointer = "00000") else
                      fs_pointer when (head = "010001" and rs_pointer = "00100") else
                      fd_pointer when (head = "010001" and rs_pointer = "10000" and tail = "000000") or
                                      (head = "010001" and rs_pointer = "10000" and tail = "000001") or
                                      (head = "010001" and rs_pointer = "10000" and tail = "000010") or
                                      (head = "010001" and rs_pointer = "10000" and tail = "000011") or
                                      (head = "010001" and rs_pointer = "10000" and tail = "000100") or
                                      (head = "010001" and rs_pointer = "10000" and tail = "000111") or
                                      (head = "010001" and rs_pointer = "10000" and tail = "100000") or
                                      (head = "010001" and rs_pointer = "10000" and tail = "001101") or
                                      (head = "010001" and rs_pointer = "10000" and tail = "000110") else
                      ft_pointer when head = "110001" else
                      "00010" when (sys_sig_sub = '1' and sys_type_sub = "10") else
                      "11111" when head = "000011" else
                      "00000";

  now_PC_sub <= write_PC;
  
  add_to_PC_sub <= offset when head = "000100" or
                               head = "000101" or
                               head = "000110" or
                               head = "000001" or
                               head = "000111" or
                               (head = "010001" and rs_pointer = "01000") else
                   x"0000";

  change_PC_sub <= rs(15 downto 0) when (head = "000000" and tail = "001000") or
                                        (head = "000000" and tail = "001001") else
                   instr_index(15 downto 0) when head = "000010" or
                                                 head = "000011" else
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
                        head = "001101" else
                rt when (head = "000000" and tail = "000000") or
                        (head = "000000" and tail = "000010") or
                        (head = "000000" and tail = "000100") or
                        (head = "010001" and rs_pointer = "00100") else
                fs when (head = "010001" and rs_pointer = "10000" and tail = "000000") or
                        (head = "010001" and rs_pointer = "10000" and tail = "000001") or
                        (head = "010001" and rs_pointer = "10000" and tail = "000010") or
                        (head = "010001" and rs_pointer = "10000" and tail = "000011") or
                        (head = "010001" and rs_pointer = "10000" and tail = "000100") or
                        (head = "010001" and rs_pointer = "10000" and tail = "000111") or
                        (head = "010001" and rs_pointer = "10000" and tail = "100000") or
                        (head = "010001" and rs_pointer = "10000" and tail = "001101") or
                        (head = "010001" and rs_pointer = "10000" and tail(5 downto 4) = "11") or
                        (head = "010001" and rs_pointer = "00000") or
                        (head = "010001" and rs_pointer = "10000" and tail = "000110") else
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
                ft when (head = "010001" and rs_pointer = "10000" and tail = "000000") or
                        (head = "010001" and rs_pointer = "10000" and tail = "000001") or
                        (head = "010001" and rs_pointer = "10000" and tail = "000010") or
                        (head = "010001" and rs_pointer = "10000" and tail(5 downto 4) = "11") else
                x"000000" & "000" & sa when (head = "000000" and tail = "000000") or
                                            (head = "000000" and tail = "000010") else
                x"0000" & offset when (head = "001000" and offset(15) = '0') or
                                      (head = "001001" and offset(15) = '0') or
                                      head = "001101" else
                x"ffff" & offset when (head = "001000" and offset(15) = '1') or
                                      (head = "001001" and offset(15) = '1') else
                offset & x"0000" when head = "001111" else
                x"00000001" when head = "000011" or
                                 (head = "000000" and tail = "001001") else
                x"00000000";

  data_to_mem_sub <= rt when head = "101011" else
                     ft when head = "111001" else
                     x"00000000";

  data_with_offset_sub <= rs + (x"0000" & offset) when (head = "101011" and offset(15) = '0') or
                                                       (head = "100011" and offset(15) = '0') or
                                                       (head = "111001" and offset(15) = '0') or
                                                       (head = "110001" and offset(15) = '0') else
                          rs + (x"ffff" & offset) when (head = "101011" and offset(15) = '1') or
                                                       (head = "100011" and offset(15) = '1') or
                                                       (head = "111001" and offset(15) = '1') or
                                                       (head = "110001" and offset(15) = '1') else
                          x"00000000";

  ALU_control_sub <= "00000" when (head = "000000" and tail = "100100") else -- AND
                     "00001" when (head = "000000" and tail = "100101") or -- OR
                                 head = "001101" or
                                 head = "001111" or -- no processing
                                 (head = "010001" and rs_pointer = "00000") or
                                 (head = "010001" and rs_pointer = "00100") or
                                 (head = "010001" and rs_pointer = "10000" and tail = "000110") else
                     "00010" when (head = "000000" and tail = "100110") else -- XOR
                     "00100" when (head = "000000" and tail = "100000") or -- +
                                 head = "001000" or
                                 head = "001001" or
                                 head = "000011" or
                                 (head = "000000" and tail = "001001") or
                                 head = "101011" or
                                 head = "100011" or
                                 head = "111001" or
                                 head = "110001" else
                     "00101" when (head = "000000" and tail = "100010") else -- -
                     "00110" when (head = "000000" and tail = "000000") or
                                 (head = "000000" and tail = "000100") else -- <<
                     "00111" when (head = "000000" and tail = "000010") else -- >>
                     "01000" when (head = "000000" and tail = "101010") else -- <
                     "01001" when (head = "010001" and rs_pointer = "10000" and tail = "000000") else -- fadd
                     "01010" when (head = "010001" and rs_pointer = "10000" and tail = "000001") else -- fsub
                     "01011" when (head = "010001" and rs_pointer = "10000" and tail = "000010") else -- fmul
                     "01100" when (head = "010001" and rs_pointer = "10000" and tail = "000011") else -- finv
                     "01101" when (head = "010001" and rs_pointer = "10000" and tail = "000100") else -- fsqrt
                     "01110" when (head = "010001" and rs_pointer = "10000" and tail = "000111") else -- fneg
                     "01111" when (head = "010001" and rs_pointer = "10000" and tail = "100000") else -- itof
                     "10000" when (head = "010001" and rs_pointer = "10000" and tail = "001101") else -- ftoi
                     "11111";

  r0_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "00000" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "00000" else
            r0;
  r1_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "00001" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "00001" else
            r1;
  r2_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "00010" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "00010" else
            r2;
  r3_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "00011" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "00011" else
            r3;
  r4_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "00100" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "00100" else
            r4;
  r5_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "00101" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "00101" else
            r5;
  r6_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "00110" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "00110" else
            r6;
  r7_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "00111" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "00111" else
            r7;
  r8_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "01000" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "01000" else
            r8;
  r9_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "01001" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "01001" else
            r9;
  r10_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "01010" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "01010" else
            r10;
  r11_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "01011" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "01011" else
            r11;
  r12_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "01100" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "01100" else
            r12;
  r13_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "01101" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "01101" else
            r13;
  r14_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "01110" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "01110" else
            r14;
  r15_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "01111" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "01111" else
            r15;
  r16_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "10000" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "10000" else
            r16;
  r17_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "10001" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "10001" else
            r17;
  r18_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "10010" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "10010" else
            r18;
  r19_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "10011" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "10011" else
            r19;
  r20_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "10100" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "10100" else
            r20;
  r21_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "10101" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "10101" else
            r21;
  r22_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "10110" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "10110" else
            r22;
  r23_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "10111" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "10111" else
            r23;
  r24_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "11000" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "11000" else
            r24;
  r25_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "11001" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "11001" else
            r25;
  r26_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "11010" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "11010" else
            r26;
  r27_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "11011" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "11011" else
            r27;
  r28_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "11100" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "11100" else
            r28;
  r29_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "11101" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "11101" else
            r29;
  r30_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "11110" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "11110" else
            r30;
  r31_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '0' and ALU_to_R_pointer = "11111" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '0' and mem_to_R_pointer = "11111" else
            r31;
  f0_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "00000" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "00000" else
            f0;
  f1_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "00001" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "00001" else
            f1;
  f2_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "00010" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "00010" else
            f2;
  f3_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "00011" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "00011" else
            f3;
  f4_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "00100" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "00100" else
            f4;
  f5_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "00101" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "00101" else
            f5;
  f6_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "00110" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "00110" else
            f6;
  f7_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "00111" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "00111" else
            f7;
  f8_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "01000" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "01000" else
            f8;
  f9_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "01001" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "01001" else
            f9;
  f10_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "01010" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "01010" else
            f10;
  f11_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "01011" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "01011" else
            f11;
  f12_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "01100" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "01100" else
            f12;
  f13_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "01101" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "01101" else
            f13;
  f14_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "01110" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "01110" else
            f14;
  f15_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "01111" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "01111" else
            f15;
  f16_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "10000" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "10000" else
            f16;
  f17_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "10001" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "10001" else
            f17;
  f18_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "10010" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "10010" else
            f18;
  f19_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "10011" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "10011" else
            f19;
  f20_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "10100" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "10100" else
            f20;
  f21_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "10101" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "10101" else
            f21;
  f22_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "10110" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "10110" else
            f22;
  f23_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "10111" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "10111" else
            f23;
  f24_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "11000" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "11000" else
            f24;
  f25_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "11001" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "11001" else
            f25;
  f26_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "11010" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "11010" else
            f26;
  f27_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "11011" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "11011" else
            f27;
  f28_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "11100" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "11100" else
            f28;
  f29_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "11101" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "11101" else
            f29;
  f30_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "11110" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "11110" else
            f30;
  f31_sub <= ALU_to_R when ALU_to_R_sig_return = '1' and ALU_to_R_type = '1' and ALU_to_R_pointer = "11111" else
            mem_to_R when mem_to_R_sig_return = '1' and mem_to_R_type = '1' and mem_to_R_pointer = "11111" else
            f31;

--add (SPECIAL)000000 rs rt rd 00000 (ADD)100000 || rd <- rs + rt
--sub (SPECIAL)000000 rs rt rd 00000 (SUB)100010 || rd <- rs - rt
--slt (SPECIAL)000000 rs rt rd 00000 (SLT)101010 || rd <- (rs < rt)
--and (SPECIAL)000000 rs rt rd 00000 (AND)100100 || rd <- rs AND rt
--or (SPECIAL)000000 rs rt rd 00000 (OR)100101 || rd <- rs OR rt
--xor (SPECIAL)000000 rs rt rd 00000 (XOR)100110 || rd <- rs XOR rt
--sll (SPECIAL)000000 00000 rt rd sa (SLL)000000 || rd <- rt << sa
--srl (SPECIAL)000000 00000 rt rd sa (SRL)000010 || rd <- rt >> sa
--sllv (SPECIAL)000000 rs rt rd 00000 (SLLV)000100 || rd <- rt << rs

--add.s (COP1)010001 (s)10000 ft fs fd (ADD)000000 || fd <- fs + ft
--sub.s (COP1)010001 (s)10000 ft fs fd (SUB)000001 || fd <- fs - ft
--mul.s (COP1)010001 (s)10000 ft fs fd (MUL)000010 || fd <- fs * ft
--inv.s (COP1)010001 (s)10000 (ft)00000 fs fd (DIV)000011 || fd <- 1 / fs
--sqrt.s (COP1)010001 (s)10000 00000 fs fd (SQRT)000100 || fd <- SQRT(fs)
--neg.s (COP1)010001 (s)10000 00000 fs fd (NEG)000111 || fd <- -(fs)
--cvt.s.w (COP1)010001 (s)10000 00000 fs fd (CVT.S)100000 || fd <- convert_and_round(fs) --(use code for single instead of word)
--trunc.w.s (COP1)010001 (s)10000 00000 fs fd (TRUNC.W)001101 || fd <- convert_and_round(fs)

--syscall (SPECIAL)000000 code (SYSCALL)001100 || system_call(r2)
--addi (ADDI)001000 rs rt immediate || rt <- rs + immediate
--addiu (ADDIU)001001 rs rt immediate || rt <- rs + immediate
--j (J)000010 instr_index || PC <- instr_index
--jr (SPECIAL)000000 rs 000000000000000 (JR)001000 || PC <- rs
--jal (JAL)000011 instr_index || r31 <- PC + 1, PC <- instr_index
--jalr (SPECIAL)000000 rs 00000 rd 00000 (JALR)001001 || rd <- PC + 1, PC <- rs
--beq (BEQ)000100 rs rt offset || if (rs = rt) then PC <- PC + offset
--bne (BNE)000101 rs rt offset || if (rs /= rt) then PC <- PC + offset
--blez (BLEZ)000110 rs 00000 offset || if (rs <= 0) then PC <- PC + offset
--bgez (REGIMM)000001 rs (BGEZ)00001 offset || if (rs >= 0) then PC <- PC + offset
--bgtz (BGTZ)000111 rs 00000 offset || if (rs > 0) then PC <- PC + offset
--bltz (REGIMM)000001 rs (BLTZ)00000 offset || if (rs < 0) then PC <- PC + offset

--bc1t (COP1)010001 (BC)01000 (cc)000 (nd)0 (tf)1 offset || if (FCC[cc] = tf) then PC <- PC + offset
--bc1f (COP1)010001 (BC)01000 (cc)000 (nd)0 (tf)0 offset || if (FCC[cc] = tf) then PC <- PC + offset
--c.eq.s (COP1)010001 (s)10000 ft fs (cc)000 00 (FC)11 (cond)0010 || FCC[cc] <- fs == ft
--c.olt.s (COP1)010001 (s)10000 ft fs (cc)000 00 (FC)11 (cond)0100 || FCC[cc] <- fs < ft
--c.ole.s (COP1)010001 (s)10000 ft fs (cc)000 00 (FC)11 (cond)0110 || FCC[cc] <- fs <= ft

--lui (LUI)001111 00000 rt immediate || rt <- immediate & x"0000"
--ori (ORI)001101 rs rt immediate || rt <- rs OR immediate
--sw (SW)101011 (register)base rt offset || memory[base + offset] <- rt
--lw (LW)100011 (register)base rt offset || rt <- memory[base + offset]

--swc1 (SWC1)111001 (register)base ft offset || memory[base + offset] <- ft
--lwc1 (LWC1)110001 (register)base ft offset || ft <- memory[base + offset]
--mfc1 (COP1)010001 (MF)00000 rt fs 00000000000 || rt <- fs
--mtc1 (COP1)010001 (MT)00100 rt fs 00000000000 || fs <- rt
--mov.s (COP1)010001 (s)10000 00000 fs fd (MOV)000110 || fd <- fs

--nop (EXTRA)111111 00000 00000 00000 00000 (NOP)000000 || no operation

  --direct pass
  insert_nop_buf <= insert_nop_sub;
  insert_nop_num_buf <= insert_nop_num_sub;
  sys_sig_buf <= sys_sig_sub;
  sys_type_buf <= sys_type_sub;
  store_instr_buf <= store_instr_sub;
  load_instr_buf <= load_instr_sub;
  mem_to_R_sig_buf <= mem_to_R_sig_sub;
  mem_data_R_type_buf <= data_R_type_sub;
  mem_write_data_R_buf <= write_data_R_sub;
  data_to_mem_buf <= data_to_mem_sub;
  data_with_offset_buf <= data_with_offset_sub;

  id_process: process(clk)
  begin
    if rising_edge(clk) then
      branch_instr_buf <= branch_instr_sub;
      branch_cond_buf <= branch_cond_sub;
      fcc_sig_buf <= fcc_sig_sub;
      fcc_comp_buf <= fcc_comp_sub;
      fcc_pointer_buf <= fcc_pointer_sub;
      fcc_update_buf <= fcc_update_sub;
      jump_instr_buf <= jump_instr_sub;
      ALU_to_R_sig_buf <= ALU_to_R_sig_sub;
      ALU_data_R_type_buf <= data_R_type_sub;
      ALU_write_data_R_buf <= write_data_R_sub;
      now_PC_buf <= now_PC_sub;
      add_to_PC_buf <= add_to_PC_sub;
      change_PC_buf <= change_PC_sub;
      data_1_buf <= data_1_sub;
      data_2_buf <= data_2_sub;
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
      f0 <= f0_sub;
      f1 <= f1_sub;
      f2 <= f2_sub;
      f3 <= f3_sub;
      f4 <= f4_sub;
      f5 <= f5_sub;
      f6 <= f6_sub;
      f7 <= f7_sub;
      f8 <= f8_sub;
      f9 <= f9_sub;
      f10 <= f10_sub;
      f11 <= f11_sub;
      f12 <= f12_sub;
      f13 <= f13_sub;
      f14 <= f14_sub;
      f15 <= f15_sub;
      f16 <= f16_sub;
      f17 <= f17_sub;
      f18 <= f18_sub;
      f19 <= f19_sub;
      f20 <= f20_sub;
      f21 <= f21_sub;
      f22 <= f22_sub;
      f23 <= f23_sub;
      f24 <= f24_sub;
      f25 <= f25_sub;
      f26 <= f26_sub;
      f27 <= f27_sub;
      f28 <= f28_sub;
      f29 <= f29_sub;
      f30 <= f30_sub;
      f31 <= f31_sub;
    end if;
  end process id_process;
end id;
