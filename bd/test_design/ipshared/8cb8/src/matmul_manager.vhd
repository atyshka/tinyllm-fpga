----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2024 11:01:15 PM
-- Design Name: 
-- Module Name: matmul_manager - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity matmul_manager is
	generic (
		WEIGHT_TDATA_WIDTH	: integer	:= 32;
		OUTPUT_TDATA_WIDTH	: integer	:= 32
	);
  Port (
    length: in unsigned(15 downto 0);
  	-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk	: in std_logic;
		s00_axis_aresetn	: in std_logic;
		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(WEIGHT_TDATA_WIDTH-1 downto 0);
		s00_axis_tlast	: in std_logic;
		s00_axis_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXIS
--		m00_axis_aclk	: in std_logic;
--		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(OUTPUT_TDATA_WIDTH-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic
  );
end matmul_manager;

architecture Behavioral of matmul_manager is
component macc_dsp is
  Port (
    clk: in std_logic;
    ce: in std_logic;
    clr_acc: in std_logic;
    a: in signed(7 downto 0);
    b: in signed(7 downto 0);
    accum_out: out signed(31 downto 0)
  );
end component;

type state_type is (idle, active, blocked, finishing, blocked_finishing, done);

signal state: state_type := idle;
signal macc_en, first_done, result_ready, clr_acc: std_logic := '0';
signal acc_out, output_reg: std_logic_vector(OUTPUT_TDATA_WIDTH-1 downto 0) := (others => '0');
signal count: unsigned(15 downto 0) := to_unsigned(0, 16);

begin

macc: macc_dsp port map(
  clk => s00_axis_aclk,
  ce => macc_en,
  clr_acc => clr_acc,
  a => signed(s00_axis_tdata(7 downto 0)),
  b => x"01",
  std_logic_vector(accum_out) => acc_out
);

macc_en <= '1' when 
            (state = active and s00_axis_tvalid = '1') or
            state = finishing else '0';
clr_acc <= '1' when (count = 1 and first_done = '1') or (count < 2 and first_done = '0') else '0';
s00_axis_tready <= '1' when state = active else '0';
m00_axis_tvalid <= result_ready;
m00_axis_tdata <= output_reg;
m00_axis_tlast <= '1' when state = done else '0';

process (s00_axis_aclk)
begin
  if rising_edge(s00_axis_aclk) then
    if s00_axis_aresetn = '0' then
      state <= idle;
      first_done <= '0';
      count <= (others => '0');
    else
      case state is
        when idle =>
          -- Ready and waiting for VALID
          state <= active;
        when active | finishing =>
          if macc_en = '1' then
            if s00_axis_tlast = '1' then
              state <= finishing;
            end if;
             
            if count = length-1 then
              first_done <= '1';
              count <= (others => '0');
            elsif count = 1 and result_ready = '1' then
              if state = finishing then
                state <= blocked_finishing;
              else
                state <= blocked;
              end if;
            elsif count = 2 and first_done = '1' then
              result_ready <= '1';
              output_reg <= acc_out;
              if state = active then
                count <= count + 1;
              else
                state <= done;
              end if;
            else
              count <= count + 1;
            end if;
          end if;
        when blocked =>
          if m00_axis_tready = '1' then
            state <= active;
            if s00_axis_tvalid = '1' then
              count <= count + 1;
            end if;
          end if;
        when blocked_finishing =>
          if m00_axis_tready = '1' then
            state <= finishing;
            count <= count + 1;
          end if;
        when done =>
          count <= (others => '0');
          first_done <= '0';
          if m00_axis_tready = '1' then
            state <= idle;
          end if;
        when others =>
          state <= idle;
      end case;
      if result_ready = '1' and m00_axis_tready = '1' then
        result_ready <= '0';
      end if;
    end if;
  end if;
end process;

end Behavioral;
