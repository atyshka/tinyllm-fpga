----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2024 05:16:37 PM
-- Design Name: 
-- Module Name: matmul_tb - Behavioral
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

entity matmul_tb is
--  Port ( );
end matmul_tb;

architecture Behavioral of matmul_tb is
component matmul_0 is
port (
    addra : out std_logic_vector(11 downto 0);
    clka : out std_logic;
    dina : out std_logic_vector(7 downto 0);
    douta : in std_logic_vector(7 downto 0);
    ena : out std_logic;
    rsta : out std_logic;
    wea : out std_logic;
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC;
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_araddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    axis_aclk : IN STD_LOGIC;
    axis_aresetn : IN STD_LOGIC;
    s00_axis_tready : OUT STD_LOGIC;
    s00_axis_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axis_tstrb : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axis_tlast : IN STD_LOGIC;
    s00_axis_tvalid : IN STD_LOGIC;
    m00_axis_tvalid : OUT STD_LOGIC;
    m00_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axis_tstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axis_tlast : OUT STD_LOGIC;
    m00_axis_tready : IN STD_LOGIC 
	);
end component;

--COMPONENT blk_mem_dp_32_1024
--  PORT (
--    clka : IN STD_LOGIC;
--    rsta : IN STD_LOGIC;
--    ena : IN STD_LOGIC;
--    wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--    addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
--    clkb : IN STD_LOGIC;
--    rstb : IN STD_LOGIC;
--    enb : IN STD_LOGIC;
--    web : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--    addrb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--    dinb : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--    doutb : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
--    rsta_busy : OUT STD_LOGIC;
--    rstb_busy : OUT STD_LOGIC 
--  );
--END COMPONENT;

COMPONENT blk_mem_gen_0
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    wea : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    clkb : IN STD_LOGIC;
    enb : IN STD_LOGIC;
    web : IN STD_LOGIC;
    addrb : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    dinb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

signal clk, resetn, reset, go: std_logic := '0';
signal ena, wea, rsta : std_logic;
signal dina, douta : std_logic_vector(7 downto 0);
signal addra : std_logic_vector(11 downto 0);

signal s00_axi_wdata	: std_logic_vector(31 downto 0);
signal s00_axi_awaddr	: std_logic_vector(4 downto 0);
signal s00_axi_awvalid, 
        s00_axi_wvalid, 
        s00_axi_bready, 
        s00_axi_awready, 
        s00_axi_wready, 
        s00_axi_bvalid : std_logic;
        
signal s00_axis_tvalid, s00_axis_tlast, s00_axis_tready: std_logic := '0';
signal m00_axis_tready: std_logic := '0';
signal s00_axis_tdata	: std_logic_vector(7 downto 0) := (others => '0');
signal s00_axis_tstrb	: std_logic_vector(0 downto 0) := (others => '0');

constant clk_period : time := 10 ns;

begin

blk_mem_inst : blk_mem_gen_0
  port map (
    clka => clk,
    ena => ena,
    wea => wea,
    addra => addra,
    dina => (others => '0'),
    douta => open, -- Assuming douta is an output and not used in this context
    clkb => '0',
    enb => '0',
    web => '0',
    addrb => (others => '0'),
    dinb => (others => '0'),
    doutb => open -- Assuming doutb is an output and not used in this context
  );
	
inst_matmul_v1_0: matmul_0
    port map (
        s00_axi_aclk       => clk,
        s00_axi_aresetn    => resetn,
        s00_axi_awaddr     => s00_axi_awaddr,
        s00_axi_awprot     => (others => '0'), -- Assuming no protection
        s00_axi_awvalid    => s00_axi_awvalid,
        s00_axi_awready    => s00_axi_awready,
        s00_axi_wdata      => s00_axi_wdata,
        s00_axi_wstrb      => (others => '1'), -- Assuming full data width
        s00_axi_wvalid     => s00_axi_wvalid,
        s00_axi_wready     => s00_axi_wready,
        s00_axi_bvalid     => s00_axi_bvalid,
        s00_axi_bready     => s00_axi_bready,
        s00_axi_araddr     => (others => '0'), -- Not used
        s00_axi_arprot     => (others => '0'), -- Not used
        s00_axi_arvalid    => '0',             -- Not used
        s00_axi_rready     => '1',             -- Always ready for read

        axis_aclk      => clk,
        axis_aresetn   => resetn,
        s00_axis_tready    => s00_axis_tready,
        s00_axis_tdata     => s00_axis_tdata,
        s00_axis_tstrb     => s00_axis_tstrb,
        s00_axis_tlast     => s00_axis_tlast,
        s00_axis_tvalid    => s00_axis_tvalid,
        m00_axis_tready    => m00_axis_tready,
        
        addra => addra,
        clka => clk,
        dina => dina,
        douta => douta,
        ena => ena,
        rsta => rsta,
        wea => wea
    );

clk_process :process
begin
    clk <= '0';
    wait for clk_period/2;  
    clk <= '1';
    wait for clk_period/2;  
end process;

process
begin
    wait for 400ns;
    m00_axis_tready <= '1';
    wait;
end process;

main_stim: process

procedure write_axi(constant addr: in integer; constant data: in std_logic_vector(31 downto 0)) is
begin
      s00_axi_wdata <= data; -- Assign your write data to s_axi_wdata here
      s00_axi_awaddr <= "00000"; -- Address you want to write to
      s00_axi_awvalid <= '1';
      s00_axi_wvalid <= '1';
      s00_axi_bready <= '1';
      if (s00_axi_awready = '0') then
        wait until s00_axi_awready = '1';
      end if;
      if (s00_axi_wready = '0') then
        wait until s00_axi_wready = '1';
      end if;
      wait for clk_period + clk_period/2;
      s00_axi_awvalid <= '0';
      s00_axi_wvalid <= '0';
      wait for clk_period/2;
      if (s00_axi_bvalid = '0') then
        wait until s00_axi_bvalid = '1';
      end if;
      wait for clk_period + clk_period/2;
      s00_axi_bready <= '0';
      wait for clk_period/2;
end procedure;

begin
    resetn <= '0';
    wait for 20ns;
    resetn <= '1';
    wait for 20ns;
    write_axi(0, std_logic_vector(to_unsigned(8, 32)));
    wait for 20ns;
    wait until rising_edge(clk);
    
    for i in 0 to 31 loop
      while s00_axis_tready /= '1' loop
        wait until rising_edge(clk);
      end loop;
      s00_axis_tvalid <= '1';
      s00_axis_tdata <= std_logic_vector(to_unsigned(i, 8));
      wait until rising_edge(clk);
    end loop;
    s00_axis_tvalid <= '0';
    wait for 40ns;
    wait until rising_edge(clk);
    for i in 32 to 63 loop
      while s00_axis_tready /= '1' loop
        wait until rising_edge(clk);
      end loop;
      s00_axis_tvalid <= '1';
      s00_axis_tdata <= std_logic_vector(to_unsigned(i, 8));
      if i = 63 then
        s00_axis_tlast <= '1';
      end if;
      wait until rising_edge(clk);
    end loop;
    s00_axis_tvalid <= '0';
    wait;
end process;

end Behavioral;