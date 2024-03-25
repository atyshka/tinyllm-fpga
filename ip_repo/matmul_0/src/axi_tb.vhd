----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/21/2024 05:16:37 PM
-- Design Name: 
-- Module Name: axi_tb - Behavioral
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

entity axi_tb is
--  Port ( );
end axi_tb;

architecture Behavioral of axi_tb is
component matmul_v1_0 is
	generic (
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 5;
		C_S00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_START_COUNT	: integer	:= 32
	);
	port (
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic;

		-- Ports of Axi Slave Bus Interface S00_AXIS
		s00_axis_aclk	: in std_logic;
		s00_axis_aresetn	: in std_logic;
		s00_axis_tready	: out std_logic;
		s00_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tstrb	: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast	: in std_logic;
		s00_axis_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXIS
		m00_axis_aclk	: in std_logic;
		m00_axis_aresetn	: in std_logic;
		m00_axis_tvalid	: out std_logic;
		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	: out std_logic;
		m00_axis_tready	: in std_logic
	);
end component;

--COMPONENT blk_mem_gen_0
--  PORT (
--    clka : IN STD_LOGIC;
--    rsta : IN STD_LOGIC;
--    wea : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--    addra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--    dina : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--    douta : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
--    rsta_busy : OUT STD_LOGIC 
--  );
--END COMPONENT;

signal clk, resetn, reset, go: std_logic := '0';

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
signal s00_axis_tdata	: std_logic_vector(31 downto 0) := (others => '0');
signal s00_axis_tstrb	: std_logic_vector(3 downto 0) := (others => '0');

constant clk_period : time := 10 ns;

begin

--mm: matmul_v1_0 port map (
--		s00_axi_aclk	=> clk,
--		s00_axi_aresetn	=> resetn,
--		s00_axi_awaddr => s00_axi_awaddr,
--		s00_axi_awprot	: in std_logic_vector(2 downto 0);
--		s00_axi_awvalid	: in std_logic;
--		s00_axi_awready	: out std_logic;
--		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
--		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
--		s00_axi_wvalid	: in std_logic;
--		s00_axi_wready	: out std_logic;
--		s00_axi_bresp	: out std_logic_vector(1 downto 0);
--		s00_axi_bvalid	: out std_logic;
--		s00_axi_bready	: in std_logic;
--		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
--		s00_axi_arprot	: in std_logic_vector(2 downto 0);
--		s00_axi_arvalid	: in std_logic;
--		s00_axi_arready	: out std_logic;
--		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
--		s00_axi_rresp	: out std_logic_vector(1 downto 0);
--		s00_axi_rvalid	: out std_logic;
--		s00_axi_rready	: in std_logic;

--		-- Ports of Axi Slave Bus Interface S00_AXIS
--		s00_axis_aclk	: in std_logic;
--		s00_axis_aresetn	: in std_logic;
--		s00_axis_tready	: out std_logic;
--		s00_axis_tdata	: in std_logic_vector(C_S00_AXIS_TDATA_WIDTH-1 downto 0);
--		s00_axis_tstrb	: in std_logic_vector((C_S00_AXIS_TDATA_WIDTH/8)-1 downto 0);
--		s00_axis_tlast	: in std_logic;
--		s00_axis_tvalid	: in std_logic;

--		-- Ports of Axi Master Bus Interface M00_AXIS
--		m00_axis_aclk	: in std_logic;
--		m00_axis_aresetn	: in std_logic;
--		m00_axis_tvalid	: out std_logic;
--		m00_axis_tdata	: out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
--		m00_axis_tstrb	: out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
--		m00_axis_tlast	: out std_logic;
--		m00_axis_tready	: in std_logic
--	);
	
inst_matmul_v1_0: matmul_v1_0
    generic map (
        C_S00_AXI_DATA_WIDTH    => 32,
        C_S00_AXI_ADDR_WIDTH    => 5,
        C_S00_AXIS_TDATA_WIDTH  => 32,
        C_M00_AXIS_TDATA_WIDTH  => 32,
        C_M00_AXIS_START_COUNT => 32
    )
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

        s00_axis_aclk      => clk,
        s00_axis_aresetn   => resetn,
        s00_axis_tready    => s00_axis_tready,
        s00_axis_tdata     => s00_axis_tdata,
        s00_axis_tstrb     => s00_axis_tstrb,
        s00_axis_tlast     => s00_axis_tlast,
        s00_axis_tvalid    => s00_axis_tvalid,

        m00_axis_aclk      => clk,
        m00_axis_aresetn   => resetn,
        m00_axis_tready    => m00_axis_tready
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
      s00_axis_tvalid <= '1';
      while s00_axis_tready /= '1' loop
        wait until rising_edge(clk);
      end loop;
      s00_axis_tdata <= std_logic_vector(to_unsigned(i, 32));
      wait until rising_edge(clk);
    end loop;
    s00_axis_tvalid <= '0';
    wait for 40ns;
    wait until rising_edge(clk);
    for i in 32 to 63 loop
      s00_axis_tvalid <= '1';
      while s00_axis_tready /= '1' loop
        wait until rising_edge(clk);
      end loop;
      s00_axis_tdata <= std_logic_vector(to_unsigned(i, 32));
      if i = 63 then
        s00_axis_tlast <= '1';
      end if;
      wait until rising_edge(clk);
    end loop;
    s00_axis_tvalid <= '0';
    wait;
end process;

end Behavioral;
