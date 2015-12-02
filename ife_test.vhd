library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity ife_test is
  Port(
    clk         : in std_logic;
    state       : in std_logic_vector(1 downto 0);
    exec_mode   : in std_logic; --activate pipeline mode when '1'
    write_mem   : in std_logic; --write BRAM(write: '1', read: '0')
    write_BRAM  : in std_logic_vector(15 downto 0); --write to this BRAM address
    next_PC     : in std_logic_vector(15 downto 0);
    instruction : in std_logic_vector(31 downto 0); --data to BRAM
    prev_PC     : out std_logic_vector(15 downto 0); --previous PC
    recv_data   : out std_logic_vector(31 downto 0)); --data from BRAM
end ife_test;

architecture ife_test of ife_test is
  component BRAM
    port(
      ADDRA : in std_logic_vector(15 downto 0); --address of BRAM
      DINA  : in std_logic_vector(31 downto 0); --data in
      WEA   : in std_logic_vector(0 downto 0); --write enable(write: '1', read: '0')
      CLKA  : in std_logic; 
      DOUTA : out std_logic_vector(31 downto 0)); --data out
  end component;

  signal prev_PC_buf   : std_logic_vector(15 downto 0) := x"0000";
  signal recv_data_buf : std_logic_vector(31 downto 0) := x"00000000";

  signal addra_buf : std_logic_vector(15 downto 0) := x"0000";
  signal dina_buf  : std_logic_vector(31 downto 0) := x"00000000";
  signal wea_buf   : std_logic_vector(0 downto 0) := "0";
  signal douta_buf : std_logic_vector(31 downto 0) := x"00000000";
  
  signal PC : std_logic_vector(15 downto 0) := x"0000"; --previous PC
  signal next_instr : std_logic_vector(31 downto 0) := x"00000000"; --instruction
  signal write_data : std_logic_vector(31 downto 0) := x"00000000"; --write to BRAM
  
  signal delay_state   : std_logic_vector(1 downto 0) := "00"; --sequential modes state (next instruction starts when previous instruction is at memory write state)

  type rom_t is array(0 to 63) of std_logic_vector(31 downto 0);
  constant inst_t: rom_t := (
    x"20020003", -- 000000
    x"00400008", -- 000001
    x"20030004", -- 000010
    x"20040005", -- 000011
    x"0c000006", -- 000100
    x"200600ff", -- 000101
    x"10850003", -- 000110
    x"109f0004", -- 000111
    x"200501ff", -- 001000
    x"200601ff", -- 001001
    x"200701ff", -- 001010
    x"2008000e", -- 001011
    x"0100f009", -- 001100
    x"200502ff", -- 001101
    x"20090012", -- 001110
    x"149f0003", -- 001111
    x"14850004", -- 010000
    x"200502ff", -- 010001
    x"200602ff", -- 010010
    x"200702ff", -- 010011
    x"200afff1", -- 010100
    x"18000002", -- 010101
    x"200503ff", -- 010110
    x"18400002", -- 010111
    x"200bffff", -- 011000
    x"19400002", -- 011001
    x"200603ff", -- 011010
    x"04010002", -- 011011
    x"200504ff", -- 011100
    x"04410002", -- 011101
    x"200604ff", -- 011110
    x"05410002", -- 011111
    x"200c0007", -- 100000
    x"200d0008", -- 100001
    x"1c000002", -- 100010
    x"200e0010", -- 100011
    x"1c400002", -- 100100
    x"200505ff", -- 100101
    x"1d400002", -- 100110
    x"200f0011", -- 100111
    x"20100003", -- 101000
    x"04000002", -- 101001
    x"20110022", -- 101010
    x"04400002", -- 101011
    x"20120033", -- 101100
    x"05400002", -- 101101
    x"200506ff", -- 101110
    x"2013fff0", -- 101111
    x"3c14ffff", -- 110000
    x"3694ffff", -- 110001
    x"8e950000", -- 110010
    x"2002000b", -- 110011
    x"20040055", -- 110100
    x"0000000c", -- 110101
    x"0000000c", -- 110110
    x"20040678", -- 110111
    x"0000000c", -- 111000
    x"20050088", -- 111001
    x"20060099", -- 111010
    x"0000000c", -- 111011
    x"20020033", -- 111100
    x"20040011", -- 111101
    x"20040575", -- 111110
    x"ffffffff"  -- 111111
    ); 
  
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
  
  PC <= next_PC;
  write_data <= instruction;

  ife_process: process(clk)
  begin
    if rising_edge(clk) then
      if write_mem = '1' then --load instruction
        addra_buf <= write_BRAM;
        dina_buf <= instruction;
        wea_buf <= "1";
      else
        case state is --execute instruction
          when "00" =>
            addra_buf <= PC;
            wea_buf <= "0";
          when "01" =>
            null;
          when "10" =>
            next_instr <= douta_buf;
          when "11" =>
            if exec_mode = '0' then --sequential mode
              if delay_state = "00" then
                delay_state <= delay_state + "01";
                prev_PC_buf <= PC;
                recv_data_buf <= inst_t(conv_integer(PC)); -- read from rom_t instruction
              elsif delay_state = "10" then
                delay_state <= "00";
              else
                delay_state <= delay_state + "01";
              end if;
            else --pipeline mode
              prev_PC_buf <= PC;
              recv_data_buf <= next_instr;
            end if;
          when others =>
            null;
        end case;
      end if;
    end if;
  end process ife_process;
end ife_test;
