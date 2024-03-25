// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Sun Mar 24 21:13:11 2024
// Host        : DESKTOP-KJ6L8EK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Administrator/Documents/tinyllm-fpga/ip_repo/blk_mem_dp_32_1024/blk_mem_dp_32_1024_sim_netlist.v
// Design      : blk_mem_dp_32_1024
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_dp_32_1024,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module blk_mem_dp_32_1024
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.9299 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_dp_32_1024.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_dp_32_1024_blk_mem_gen_v8_4_7 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[11:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[11:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 37744)
`pragma protect data_block
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
zEFEdGv2aOucSA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
