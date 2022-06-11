// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu May  5 18:23:33 2022
// Host        : oakham.ifi.uio.no running 64-bit Red Hat Enterprise Linux release 8.5 (Ootpa)
// Command     : write_verilog -force -mode synth_stub
//               /uio/hume/student-u83/carlosan/privat/in3160/oblig_10_system2/oblig_10_system2.gen/sources_1/bd/tutorial_bd/ip/tutorial_bd_system_struct_0_0/tutorial_bd_system_struct_0_0_stub.v
// Design      : tutorial_bd_system_struct_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "system_struct,Vivado 2020.2" *)
module tutorial_bd_system_struct_0_0(mclk, reset, SA, SB, duty_cycle, DIR_sync, EN_sync, 
  velocity, abcdefg, c)
/* synthesis syn_black_box black_box_pad_pin="mclk,reset,SA,SB,duty_cycle[7:0],DIR_sync,EN_sync,velocity[7:0],abcdefg[6:0],c" */;
  input mclk;
  input reset;
  input SA;
  input SB;
  input [7:0]duty_cycle;
  output DIR_sync;
  output EN_sync;
  output [7:0]velocity;
  output [6:0]abcdefg;
  output c;
endmodule
