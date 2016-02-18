library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity ife is
  Port(
    clk           : in std_logic;
    write_mem     : in std_logic; --write BRAM(write: '1', read: '0')
    write_BRAM    : in std_logic_vector(15 downto 0); --write to this BRAM address
    instruction   : in std_logic_vector(31 downto 0); --data to BRAM
    exec_sig      : in std_logic; --start executing instructions
    nop_operation : in std_logic; --insert NOP
    nop_num       : in std_logic_vector(2 downto 0); --number of NOPs to be inserted
    set_new_PC    : in std_logic; --signal for setting new PC
    new_PC        : in std_logic_vector(15 downto 0);
    prev_PC       : out std_logic_vector(15 downto 0); --previous PC
    recv_data     : out std_logic_vector(31 downto 0)); --data from BRAM
end ife;

architecture ife of ife is
  component BRAM
    port(
      ADDRA : in std_logic_vector(15 downto 0); --address of BRAM
      DINA  : in std_logic_vector(31 downto 0); --data in
      WEA   : in std_logic_vector(0 downto 0); --write enable(write: '1', read: '0')
      CLKA  : in std_logic; 
      DOUTA : out std_logic_vector(31 downto 0)); --data out
  end component;

  signal prev_PC_buf   : std_logic_vector(15 downto 0) := x"0000";
  signal recv_data_buf : std_logic_vector(31 downto 0) := x"fc000000"; --(defalut is NOP)

  signal addra_buf : std_logic_vector(15 downto 0) := x"0000";
  signal dina_buf  : std_logic_vector(31 downto 0) := x"00000000";
  signal wea_buf   : std_logic_vector(0 downto 0) := "0";
  signal douta_buf : std_logic_vector(31 downto 0) := x"00000000";

  signal read_PC      : std_logic_vector(15 downto 0) := x"0000"; --read instruction from this PC
  signal PC           : std_logic_vector(15 downto 0) := x"0000"; --previous PC
  signal PC_state     : std_logic_vector(1 downto 0) := "00"; --state of PC
  signal nop_dealing  : std_logic_vector(1 downto 0) := "00"; --special state for nop inserting
  signal nop_counter  : std_logic_vector(2 downto 0) := "000"; --counter for nop
  signal nop_buffer1  : std_logic_vector(31 downto 0) := x"00000000"; --store next instruction when nop is inserted
  signal nop_buffer2  : std_logic_vector(31 downto 0) := x"00000000"; --store next instruction of nop_buffer1 when nop is inserted

begin
  instr_BRAM: BRAM
    port map(
      ADDRA => addra_buf,
      DINA => dina_buf,
      WEA => wea_buf,
      CLKA => clk,
      DOUTA => douta_buf);
   
  prev_PC <= prev_PC_buf;
  recv_data <= recv_data_buf;

  ife_process: process(clk)
  begin
    if rising_edge(clk) then
      if write_mem = '1' then --load instruction
        addra_buf <= write_BRAM;
        dina_buf <= instruction;
        wea_buf <= "1";
      else
        wea_buf <= "0";
        if exec_sig = '0' or PC_state = "00" then --prepare execution
          PC_state <= "01";
          prev_PC_buf <= x"0000";
          recv_data_buf <= x"fc000000";
          addra_buf <= new_PC;
          read_PC <= new_PC + x"0001";
          PC <= new_PC;
        elsif PC_state = "01" then
          PC_state <= PC_state + "01";
          prev_PC_buf <= x"0000";
          recv_data_buf <= x"fc000000";
          addra_buf <= read_PC;
          read_PC <= read_PC + x"0001";
        else
          if set_new_PC = '1' then --jump to new PC
            PC_state <= "01";
            prev_PC_buf <= x"0000";
            recv_data_buf <= x"fc000000";
            addra_buf <= new_PC;
            read_PC <= new_PC + x"0001";
            PC <= new_PC;
            nop_dealing <= "00";
          elsif nop_operation = '1' or nop_dealing /= "00" then --insert NOP
            if nop_operation = '1' and nop_dealing = "00" then
              nop_dealing <= "01";
              nop_counter <= nop_num - "001";
              prev_PC_buf <= x"0000";
              recv_data_buf <= x"fc000000";
              addra_buf <= read_PC - x"0001";
              nop_buffer1 <= douta_buf;
            elsif nop_dealing = "01" then
              if nop_counter = "000" then --has only one NOP
                nop_dealing <= "11";
                prev_PC_buf <= PC;
                recv_data_buf <= nop_buffer1;
                read_PC <= read_PC + x"0001";
                PC <= PC + x"0001";
                nop_buffer2 <= douta_buf;
              else --has more than one NOP
                nop_dealing <= "10";
                if nop_operation = '1' then
                  nop_counter <= nop_num - "001";
                else
                  nop_counter <= nop_counter - "001";
                end if;
                prev_PC_buf <= x"0000";
                recv_data_buf <= x"fc000000";
                nop_buffer2 <= douta_buf;
              end if;
            elsif nop_dealing = "10" then --keep waiting
              if nop_counter = "000" then
                nop_dealing <= "11";
                prev_PC_buf <= PC;
                recv_data_buf <= nop_buffer1;
                addra_buf <= read_PC;
                read_PC <= read_PC + x"0001";
                PC <= PC + x"0001";
              else
                if nop_operation = '1' then
                  nop_counter <= nop_num - "001";
                else
                  nop_counter <= nop_counter - "001";
                end if;
                prev_PC_buf <= x"0000";
                recv_data_buf <= x"fc000000";
              end if;
            else --restart executing
              if nop_operation = '1' then --if next instruction needs NOP
                nop_dealing <= "01";
                nop_counter <= nop_num - "001";
                prev_PC_buf <= x"0000";
                recv_data_buf <= x"fc000000";
                nop_buffer1 <= nop_buffer2;
              else --if next instruction does not need NOP
                nop_dealing <= "00";
                prev_PC_buf <= PC;
                recv_data_buf <= nop_buffer2;
                addra_buf <= read_PC;
                read_PC <= read_PC + x"0001";
                PC <= PC + x"0001";
              end if;
            end if;
          else
            prev_PC_buf <= PC;
            recv_data_buf <= douta_buf;
            addra_buf <= read_PC;
            read_PC <= read_PC + x"0001";
            PC <= PC + x"0001";
          end if;
        end if;
      end if;
    end if;
  end process ife_process;
end ife;
