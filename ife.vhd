library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity ife is
  Port(
    clk         : in std_logic;
    state       : in std_logic_vector(1 downto 0);
    write_mem   : in std_logic; --write BRAM(write: '1', read: '0')
    write_BRAM  : in std_logic_vector(15 downto 0); --write to this BRAM address
    next_PC     : in std_logic_vector(15 downto 0);
    instruction : in std_logic_vector(31 downto 0); --data to BRAM
    prev_PC     : out std_logic_vector(15 downto 0); --previous PC
    recv_data   : out std_logic_vector(31 downto 0)); --data from BRAM
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
  signal recv_data_buf : std_logic_vector(31 downto 0) := x"ffffffff";

  signal addra_buf : std_logic_vector(15 downto 0) := x"0000";
  signal dina_buf  : std_logic_vector(31 downto 0) := x"00000000";
  signal wea_buf   : std_logic_vector(0 downto 0) := "0";
  signal douta_buf : std_logic_vector(31 downto 0) := x"00000000";
  
  signal PC : std_logic_vector(15 downto 0) := x"0000"; --previous PC
  signal next_instr : std_logic_vector(31 downto 0) := x"00000000"; --instruction
  signal write_data : std_logic_vector(31 downto 0) := x"00000000"; --write to BRAM
  
  signal pipeline_mode : std_logic := '0'; --activate pipeline mode when '1'
  signal delay_state   : std_logic_vector(1 downto 0) := "00"; --sequential modes state (next instruction starts when previous instruction is at memory write state)

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
      if write_mem = '1' then
        addra_buf <= write_BRAM;
        dina_buf <= instruction;
        wea_buf <= "1";
      else
        case state is
          when "00" =>
            addra_buf <= PC;
            wea_buf <= "0";
          when "01" =>
            null;
          when "10" =>
            next_instr <= douta_buf;
          when "11" =>
            if pipeline_mode = '0' then --sequential mode
              if delay_state = "00" then
                delay_state <= delay_state + "01";
                prev_PC_buf <= PC;
                recv_data_buf <= next_instr;
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
end ife;
