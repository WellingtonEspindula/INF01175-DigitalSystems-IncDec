-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sat Mar  6 18:45:06 2021
-- Host        : wmachine1 running 64-bit Debian GNU/Linux bullseye/sid
-- Command     : write_vhdl -force -mode synth_stub
--               /home/wmespindula/assignment1/assignment1.srcs/sources_1/ip/subtractor8bits/subtractor8bits_stub.vhdl
-- Design      : subtractor8bits
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a12ticsg325-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtractor8bits is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 7 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end subtractor8bits;

architecture stub of subtractor8bits is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[7:0],B[7:0],S[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_12,Vivado 2018.3";
begin
end;
