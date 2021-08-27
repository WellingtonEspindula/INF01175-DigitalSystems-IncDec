// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Mar  6 18:45:06 2021
// Host        : wmachine1 running 64-bit Debian GNU/Linux bullseye/sid
// Command     : write_verilog -force -mode funcsim
//               /home/wmespindula/assignment1/assignment1.srcs/sources_1/ip/subtractor8bits/subtractor8bits_sim_netlist.v
// Design      : subtractor8bits
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a12ticsg325-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "subtractor8bits,c_addsub_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_12,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module subtractor8bits
   (A,
    B,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME s_intf, LAYERED_METADATA undef" *) output [7:0]S;

  wire [7:0]A;
  wire [7:0]B;
  wire [7:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "1" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "8" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  subtractor8bits_c_addsub_v12_0_12 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "1" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "8" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "00000000" *) 
(* C_B_WIDTH = "8" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "0" *) 
(* C_OUT_WIDTH = "8" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_addsub_v12_0_12" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module subtractor8bits_c_addsub_v12_0_12
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [7:0]A;
  input [7:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [7:0]S;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire [7:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "1" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "00000000" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_OUT_WIDTH = "8" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  subtractor8bits_c_addsub_v12_0_12_viv xst_addsub
       (.A(A),
        .ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(1'b0),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
INaBf8vh5mCmDzf2yp77pxZAxQdyEQiT/vG2dEgvrFjseUnGc6ldwH4JvdnpZSpdf/ihioPyMNjl
u6ooyzv5TA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
S5XIZZtuFR/MZffuhwdnvE3H9oRWM4uXoaGZTa/Dyk62O+Wa0v41pjmZELCiR7uodZPFQfykZ6K9
2ZDMu8dB3afQRMs5lnd/53M1b9ke+MNEeZ/wzjUcsJghubnEAwzdWeW/0tlqST1WD9B/KCxYqwH5
Gj6IZTTFHAXcaVhnCT8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CM6IcdzP0PbD6yMSqylmi4JE2qpmxiNeI+prjGwJiD8e3Xsynu3PbGKJAOpOxtR1hT/3mpBcx1Rz
Fkz0QBh4wtE8fiziv1i+xi8T6cqC8ClamjrpZ//sn6dh7NvwSYik14MlwVuei4DZoZJZF63aoPUn
RXkQ13wtK+MkYKBcPVSZMFZmaCU6jMMBYclXzvRG1JqqZoa7mWFTeFZePUTXG7Wo12QaZ8GUi0AV
UIshoN25yn5e2Xr3FyuEtm5AvsZb+iLsgLeHBtKBnsVaHQphicgqwgwv6MQQF6ZNBgU/aACfibDS
3+n/mMMm8k1cj2bW6VCi7a+c8LmCf81NlJuLww==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ehl0CusS7+JNGq6HfhyaBMy68nccIdIGqixoEztEZfkCpXuUYsdqw6G9MIJdWdu0Ck2acV7K6IVg
rzb8/bNaDDVWp48kupToegTkOdwDkCejEqppido4BkJ+iEkjPniz+aJHlOlOwmauETy2hCMuuC57
oWDprzGWlsqbCjqzKrXmPYm6fNdcOa2DiOYstQaMFNbPU2ccrbLJAiYMHNDqtPNqWxKBsD67kiGf
2eOneDOmdmy7YkNsL+cx8MJc3BVUsYBrpAEsGyFMkmX8a8nYz8R/wlFQFGQAd/t5XrfxFNI58mj1
AHXbcAMhGKVq9YdKeU/vSXY/NwMqp12xJ1nUaw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h/qRAwiPuqY/Zg/QWqbaYm8xWTi9SshYuPzyL0UME9ZDDF+C2CyGAugh9HzMdD0kZmT94TKmBgLR
dKP28nlE8VCCU5rvbjKxfn/wNtNKHCvZ1hns8CF7+pGuelhxGvXNmYKFw5co8+4grYFaDXeoZZR6
S5sjvhqtSVD3+qq4vYWRjT2Y/yes7L9dRsLq2D3iZ4xjgVHuIbOQLT/EUKW+9iYudT9Uy6YTwB+5
mSb0QK3YfZdGwZyXB4S3mdF9vNQHdW/rnACq3yngF+lprNkh3ooQKdGqtxtz8KSQxNZOAFE+koOw
h00o7AKpvDAp3uNguLvnNJH3rugOhh95b8Jatw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TsA04vIYHDZne2CBj5bWCBFH4MtNoFDCn/3DNEi0BwutuUf+X+lD9kAO3kl352WHjQbF79Ssm+PT
fCYpODgWdxSVbzaHFpITxCQ4HcIJhUeW5PC5tw09Tand68D6eg84qRguH+llbb5jdGJkJeTCf+Mx
pupkkLiDvNyTYWe+nqw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rx9hgQkvaJJTJJcTjGFW1DrrWiT+xanrcMvFn0Z3KRXlZvf+SE7IQgGCiP7ZDA6T5z1Zv5nzS4h5
cVi+CvwC9UMZRWmLDAjzASJ2nx1g9BjbYe2vHAUmyurIiR6LSigTeM/9TlMv+fFwJbqwuH6FJ3/z
Vl4tIMk4NrqkMn/riOG87SjhesepM6kcQOBgDGzLTG14z3qeZG8OPzxgApfyubmX4qdD1oTgGm2u
Q4mQfFxEye6Jqkn4Rzjhifs/ieNYomHlK7R2/72QJj5j0WyYBIhvO+09izz299Z54ZP2ZXaRMfDT
lU4lQNqQU14PX9Yk9p7sy2PnK4vTwwF0CFIgSQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BZaGuzvpw5iu8J8LtWpqQgXo9l99Y4Qra3/llqkxmGr/wAyF3/qIPIuSNTTxZpiL5tIxwczT+pL8
c/mmad8aXtMTjEM6r2JJCAud6QThyTLCxkQUh/bxk8h/NJoht4PMDtgogbI6qws5zN2p2hoqnOmK
I/iZeiq4fDo+ZDQ0PAx/iZmN6HokdgQndMz2Oao/vIXDR0QHTb3M3Z6MymVenFYEVUvywOmlFDAp
H+Um0HsuZk2/6tO2xP+aG+0HdAb9dCrDeHmZu9Mql8ynmak1dmqb6lqF4FgRg3dCej13/yPbJBGQ
27NhVfpdlj6F9GeNGv+tpZNB8k9fftuPz9rTyQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FQ3lDyijEnTfIhFZ7iZUU6ODAOxR5X3wg+1ZVpWHBuzzb86MVYom88+7bcHzgfcvISatSekOFt9K
Ni9IhKtxl36Vs6DwoG+dc+pqM91l0Ra+sgRQvV1imX0Ahurj1/iSYeZlr0eE9OV95ZsFhpoLgQIZ
BbHanW+y5PtaVRAVUUBYIhwyuEpGgvWMaiqFbCLtGCcQww4Wu42jhUUSQlDTdq9xWCgNbPGv/DP0
flwVttKEM6hHQ7Z393DNnvVIq7W97IYub8MFZ4HGOD8CkxE7+1rN8SgT2YbgukNeNai2ODYFgbX1
CMevIxPhDYd8TE4wlz4eyfOInhlXM8ZitmRemw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5728)
`pragma protect data_block
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
BJ/lI7XDTyGA/i5xP0ZkqE7FQN44s/3gpS/F5w==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
