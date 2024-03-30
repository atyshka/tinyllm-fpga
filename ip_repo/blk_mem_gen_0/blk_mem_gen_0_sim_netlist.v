// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Fri Mar 29 21:06:06 2024
// Host        : MaxLaptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Max/Desktop/tinyllm-fpga/ip_repo/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [11:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     5.071399 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb(addrb),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 28400)
`pragma protect data_block
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
uRuZohTNcpX+mDiWxmE=
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
