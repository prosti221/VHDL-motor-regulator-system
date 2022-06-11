// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu May  5 18:23:33 2022
// Host        : oakham.ifi.uio.no running 64-bit Red Hat Enterprise Linux release 8.5 (Ootpa)
// Command     : write_verilog -force -mode funcsim
//               /uio/hume/student-u83/carlosan/privat/in3160/oblig_10_system2/oblig_10_system2.gen/sources_1/bd/tutorial_bd/ip/tutorial_bd_system_struct_0_0/tutorial_bd_system_struct_0_0_sim_netlist.v
// Design      : tutorial_bd_system_struct_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "tutorial_bd_system_struct_0_0,system_struct,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "system_struct,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module tutorial_bd_system_struct_0_0
   (mclk,
    reset,
    SA,
    SB,
    duty_cycle,
    DIR_sync,
    EN_sync,
    velocity,
    abcdefg,
    c);
  input mclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input SA;
  input SB;
  input [7:0]duty_cycle;
  output DIR_sync;
  output EN_sync;
  output [7:0]velocity;
  output [6:0]abcdefg;
  output c;

  wire [11:3]ARG3;
  wire DIR_sync;
  wire EN_sync;
  wire SA;
  wire SB;
  wire [6:0]abcdefg;
  wire \abcdefg[0]_INST_0_i_7_n_0 ;
  wire \abcdefg[1]_INST_0_i_5_n_0 ;
  wire \abcdefg[1]_INST_0_i_6_n_0 ;
  wire \abcdefg[3]_INST_0_i_9_n_0 ;
  wire \abcdefg[4]_INST_0_i_2_n_0 ;
  wire \abcdefg[5]_INST_0_i_9_n_0 ;
  wire c;
  wire [7:0]duty_cycle;
  wire mclk;
  wire reset;
  wire [7:0]velocity;
  wire \velocity[3]_INST_0_i_2_n_0 ;
  wire \velocity[4]_INST_0_i_1_n_0 ;
  wire \velocity[7]_INST_0_i_1_n_0 ;
  wire \velocity[7]_INST_0_i_3_n_0 ;

  tutorial_bd_system_struct_0_0_system_struct U0
       (.ARG3(ARG3),
        .DIR_sync(DIR_sync),
        .EN_sync(EN_sync),
        .SA(SA),
        .SB(SB),
        .abcdefg(abcdefg),
        .\abcdefg[1]_0 (\abcdefg[1]_INST_0_i_6_n_0 ),
        .\abcdefg[4]_0 (\abcdefg[5]_INST_0_i_9_n_0 ),
        .abcdefg_0_sp_1(\abcdefg[0]_INST_0_i_7_n_0 ),
        .abcdefg_1_sp_1(\abcdefg[1]_INST_0_i_5_n_0 ),
        .abcdefg_3_sp_1(\abcdefg[3]_INST_0_i_9_n_0 ),
        .abcdefg_4_sp_1(\abcdefg[4]_INST_0_i_2_n_0 ),
        .current_c_reg(c),
        .duty_cycle(duty_cycle),
        .mclk(mclk),
        .reset(reset),
        .velocity(velocity),
        .velocity_3_sp_1(\velocity[3]_INST_0_i_2_n_0 ),
        .velocity_4_sp_1(\velocity[4]_INST_0_i_1_n_0 ),
        .velocity_5_sp_1(\velocity[7]_INST_0_i_1_n_0 ),
        .velocity_7_sp_1(\velocity[7]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \abcdefg[0]_INST_0_i_7 
       (.I0(ARG3[5]),
        .I1(ARG3[4]),
        .O(\abcdefg[0]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \abcdefg[1]_INST_0_i_5 
       (.I0(ARG3[4]),
        .I1(ARG3[5]),
        .O(\abcdefg[1]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \abcdefg[1]_INST_0_i_6 
       (.I0(ARG3[8]),
        .I1(ARG3[9]),
        .O(\abcdefg[1]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \abcdefg[3]_INST_0_i_9 
       (.I0(ARG3[3]),
        .I1(ARG3[6]),
        .O(\abcdefg[3]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \abcdefg[4]_INST_0_i_2 
       (.I0(ARG3[9]),
        .I1(ARG3[8]),
        .O(\abcdefg[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \abcdefg[5]_INST_0_i_9 
       (.I0(ARG3[3]),
        .I1(ARG3[6]),
        .O(\abcdefg[5]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \velocity[3]_INST_0_i_2 
       (.I0(ARG3[4]),
        .I1(ARG3[5]),
        .O(\velocity[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \velocity[4]_INST_0_i_1 
       (.I0(ARG3[6]),
        .I1(ARG3[3]),
        .I2(ARG3[5]),
        .I3(ARG3[4]),
        .O(\velocity[4]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \velocity[7]_INST_0_i_1 
       (.I0(ARG3[4]),
        .I1(ARG3[5]),
        .I2(ARG3[3]),
        .I3(ARG3[6]),
        .I4(ARG3[7]),
        .O(\velocity[7]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \velocity[7]_INST_0_i_3 
       (.I0(ARG3[10]),
        .I1(ARG3[11]),
        .O(\velocity[7]_INST_0_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "input_synchronizer_ent" *) 
module tutorial_bd_system_struct_0_0_input_synchronizer_ent
   (SB_sync,
    SA_sync,
    SB,
    mclk,
    reset,
    SA);
  output SB_sync;
  output SA_sync;
  input SB;
  input mclk;
  input reset;
  input SA;

  wire SA;
  wire SA_sync;
  wire SB;
  wire SB_sync;
  wire mclk;
  wire reset;

  FDCE Q1_reg
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(SA),
        .Q(SA_sync));
  FDCE Q2_reg
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(SB),
        .Q(SB_sync));
endmodule

(* ORIG_REF_NAME = "microsecond_tick" *) 
module tutorial_bd_system_struct_0_0_microsecond_tick
   (CLK,
    mclk,
    reset);
  output CLK;
  input mclk;
  input reset;

  wire CLK;
  wire \counter[0]_i_2__0_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7__0_n_0 ;
  wire \counter[4]_i_2__0_n_0 ;
  wire \counter[4]_i_3__0_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire [7:1]counter_reg;
  wire \counter_reg[0]_i_1__0_n_0 ;
  wire \counter_reg[0]_i_1__0_n_1 ;
  wire \counter_reg[0]_i_1__0_n_2 ;
  wire \counter_reg[0]_i_1__0_n_3 ;
  wire \counter_reg[0]_i_1__0_n_4 ;
  wire \counter_reg[0]_i_1__0_n_5 ;
  wire \counter_reg[0]_i_1__0_n_6 ;
  wire \counter_reg[0]_i_1__0_n_7 ;
  wire \counter_reg[4]_i_1__0_n_0 ;
  wire \counter_reg[4]_i_1__0_n_2 ;
  wire \counter_reg[4]_i_1__0_n_3 ;
  wire \counter_reg[4]_i_1__0_n_5 ;
  wire \counter_reg[4]_i_1__0_n_6 ;
  wire \counter_reg[4]_i_1__0_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire mclk;
  wire reset;
  wire tick_i_1_n_0;
  wire tick_i_2_n_0;
  wire [2:2]\NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[4]_i_1__0_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[0]_i_2__0 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(counter_reg[6]),
        .I3(counter_reg[5]),
        .I4(counter_reg[7]),
        .O(\counter[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[0]_i_3 
       (.I0(counter_reg[3]),
        .I1(counter_reg[5]),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .O(\counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA0002)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(counter_reg[1]),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(tick_i_2_n_0),
        .I5(counter_reg[7]),
        .O(\counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA0002)) 
    \counter[0]_i_5 
       (.I0(counter_reg[1]),
        .I1(counter_reg[2]),
        .I2(counter_reg[3]),
        .I3(counter_reg[4]),
        .I4(tick_i_2_n_0),
        .I5(counter_reg[7]),
        .O(\counter[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h10111111)) 
    \counter[0]_i_6 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(counter_reg[7]),
        .I2(\counter[0]_i_7__0_n_0 ),
        .I3(counter_reg[6]),
        .I4(counter_reg[5]),
        .O(\counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0111)) 
    \counter[0]_i_7__0 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[2]),
        .I3(counter_reg[1]),
        .O(\counter[0]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'h008A)) 
    \counter[4]_i_2__0 
       (.I0(counter_reg[6]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(counter_reg[5]),
        .I3(counter_reg[7]),
        .O(\counter[4]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h008A)) 
    \counter[4]_i_3__0 
       (.I0(counter_reg[5]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .O(\counter[4]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[4]_i_4 
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .I2(counter_reg[6]),
        .I3(counter_reg[7]),
        .O(\counter[4]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1__0_n_7 ),
        .Q(\counter_reg_n_0_[0] ));
  CARRY4 \counter_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1__0_n_0 ,\counter_reg[0]_i_1__0_n_1 ,\counter_reg[0]_i_1__0_n_2 ,\counter_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2__0_n_0 }),
        .O({\counter_reg[0]_i_1__0_n_4 ,\counter_reg[0]_i_1__0_n_5 ,\counter_reg[0]_i_1__0_n_6 ,\counter_reg[0]_i_1__0_n_7 }),
        .S({\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1__0_n_6 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1__0_n_5 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1__0_n_4 ),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1__0_n_7 ),
        .Q(counter_reg[4]));
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\counter_reg[0]_i_1__0_n_0 ),
        .CO({\counter_reg[4]_i_1__0_n_0 ,\NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED [2],\counter_reg[4]_i_1__0_n_2 ,\counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[4]_i_1__0_O_UNCONNECTED [3],\counter_reg[4]_i_1__0_n_5 ,\counter_reg[4]_i_1__0_n_6 ,\counter_reg[4]_i_1__0_n_7 }),
        .S({1'b1,\counter[4]_i_2__0_n_0 ,\counter[4]_i_3__0_n_0 ,\counter[4]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1__0_n_6 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1__0_n_5 ),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1__0_n_0 ),
        .Q(counter_reg[7]));
  LUT6 #(
    .INIT(64'hFF00FF00FFFFFFEA)) 
    tick_i_1
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .I2(counter_reg[1]),
        .I3(counter_reg[7]),
        .I4(counter_reg[4]),
        .I5(tick_i_2_n_0),
        .O(tick_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    tick_i_2
       (.I0(counter_reg[5]),
        .I1(counter_reg[6]),
        .O(tick_i_2_n_0));
  FDCE tick_reg
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(tick_i_1_n_0),
        .Q(CLK));
endmodule

(* ORIG_REF_NAME = "output_synchronizer_ent" *) 
module tutorial_bd_system_struct_0_0_output_synchronizer_ent
   (EN_sync,
    DIR_sync,
    en,
    mclk,
    reset,
    dir);
  output EN_sync;
  output DIR_sync;
  input en;
  input mclk;
  input reset;
  input dir;

  wire DIR_sync;
  wire EN_sync;
  wire dir;
  wire en;
  wire mclk;
  wire reset;

  FDCE dir_sync_reg
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(dir),
        .Q(DIR_sync));
  FDCE en_sync_reg
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(en),
        .Q(EN_sync));
endmodule

(* ORIG_REF_NAME = "pulse_width_modulator" *) 
module tutorial_bd_system_struct_0_0_pulse_width_modulator
   (en,
    dir,
    mclk,
    reset,
    duty_cycle);
  output en;
  output dir;
  input mclk;
  input reset;
  input [7:0]duty_cycle;

  wire dir;
  wire [7:0]duty_cycle;
  wire en;
  wire en_i_1_n_0;
  wire mclk;
  wire \microsec_count[0]_i_1_n_0 ;
  wire \microsec_count[5]_i_2_n_0 ;
  wire \microsec_count[8]_i_2_n_0 ;
  wire [8:0]microsec_count_reg;
  wire [1:0]next_state;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state[1]_i_2_n_0 ;
  wire [8:1]p_0_in;
  wire pwm;
  wire pwm0_carry__0_i_1_n_0;
  wire pwm0_carry__0_i_2_n_0;
  wire pwm0_carry__0_n_3;
  wire pwm0_carry_i_1_n_0;
  wire pwm0_carry_i_2_n_0;
  wire pwm0_carry_i_3_n_0;
  wire pwm0_carry_i_4_n_0;
  wire pwm0_carry_i_5_n_0;
  wire pwm0_carry_i_6_n_0;
  wire pwm0_carry_i_7_n_0;
  wire pwm0_carry_i_8_n_0;
  wire pwm0_carry_i_9_n_0;
  wire pwm0_carry_n_0;
  wire pwm0_carry_n_1;
  wire pwm0_carry_n_2;
  wire pwm0_carry_n_3;
  wire reset;
  wire tick;
  wire [3:0]NLW_pwm0_carry_O_UNCONNECTED;
  wire [3:1]NLW_pwm0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_pwm0_carry__0_O_UNCONNECTED;

  tutorial_bd_system_struct_0_0_microsecond_tick TICK_0
       (.CLK(tick),
        .mclk(mclk),
        .reset(reset));
  FDCE dir_reg
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(dir));
  LUT6 #(
    .INIT(64'h6666666200000000)) 
    en_i_1
       (.I0(duty_cycle[7]),
        .I1(next_state[0]),
        .I2(duty_cycle[5]),
        .I3(\next_state[1]_i_2_n_0 ),
        .I4(duty_cycle[6]),
        .I5(pwm),
        .O(en_i_1_n_0));
  FDCE en_reg
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(en_i_1_n_0),
        .Q(en));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \microsec_count[0]_i_1 
       (.I0(microsec_count_reg[0]),
        .I1(microsec_count_reg[8]),
        .O(\microsec_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \microsec_count[1]_i_1 
       (.I0(microsec_count_reg[0]),
        .I1(microsec_count_reg[1]),
        .I2(microsec_count_reg[8]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \microsec_count[2]_i_1 
       (.I0(microsec_count_reg[0]),
        .I1(microsec_count_reg[1]),
        .I2(microsec_count_reg[2]),
        .I3(microsec_count_reg[8]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \microsec_count[3]_i_1 
       (.I0(microsec_count_reg[1]),
        .I1(microsec_count_reg[0]),
        .I2(microsec_count_reg[2]),
        .I3(microsec_count_reg[3]),
        .I4(microsec_count_reg[8]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \microsec_count[4]_i_1 
       (.I0(microsec_count_reg[2]),
        .I1(microsec_count_reg[0]),
        .I2(microsec_count_reg[1]),
        .I3(microsec_count_reg[3]),
        .I4(microsec_count_reg[4]),
        .I5(microsec_count_reg[8]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \microsec_count[5]_i_1 
       (.I0(\microsec_count[5]_i_2_n_0 ),
        .I1(microsec_count_reg[5]),
        .I2(microsec_count_reg[8]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \microsec_count[5]_i_2 
       (.I0(microsec_count_reg[3]),
        .I1(microsec_count_reg[1]),
        .I2(microsec_count_reg[0]),
        .I3(microsec_count_reg[2]),
        .I4(microsec_count_reg[4]),
        .O(\microsec_count[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \microsec_count[6]_i_1 
       (.I0(\microsec_count[8]_i_2_n_0 ),
        .I1(microsec_count_reg[6]),
        .I2(microsec_count_reg[8]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B4)) 
    \microsec_count[7]_i_1 
       (.I0(\microsec_count[8]_i_2_n_0 ),
        .I1(microsec_count_reg[6]),
        .I2(microsec_count_reg[7]),
        .I3(microsec_count_reg[8]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \microsec_count[8]_i_1 
       (.I0(microsec_count_reg[8]),
        .I1(microsec_count_reg[7]),
        .I2(microsec_count_reg[6]),
        .I3(\microsec_count[8]_i_2_n_0 ),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \microsec_count[8]_i_2 
       (.I0(microsec_count_reg[4]),
        .I1(microsec_count_reg[2]),
        .I2(microsec_count_reg[0]),
        .I3(microsec_count_reg[1]),
        .I4(microsec_count_reg[3]),
        .I5(microsec_count_reg[5]),
        .O(\microsec_count[8]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \microsec_count_reg[0] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(\microsec_count[0]_i_1_n_0 ),
        .Q(microsec_count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \microsec_count_reg[1] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(microsec_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \microsec_count_reg[2] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[2]),
        .Q(microsec_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \microsec_count_reg[3] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(microsec_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \microsec_count_reg[4] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[4]),
        .Q(microsec_count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \microsec_count_reg[5] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[5]),
        .Q(microsec_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \microsec_count_reg[6] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[6]),
        .Q(microsec_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \microsec_count_reg[7] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[7]),
        .Q(microsec_count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \microsec_count_reg[8] 
       (.C(tick),
        .CE(1'b1),
        .CLR(reset),
        .D(p_0_in[8]),
        .Q(microsec_count_reg[8]));
  LUT6 #(
    .INIT(64'h88888888BBBBBBB0)) 
    \next_state[0]_i_1 
       (.I0(next_state[0]),
        .I1(next_state[1]),
        .I2(duty_cycle[6]),
        .I3(\next_state[1]_i_2_n_0 ),
        .I4(duty_cycle[5]),
        .I5(duty_cycle[7]),
        .O(\next_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FFFE00)) 
    \next_state[1]_i_1 
       (.I0(duty_cycle[6]),
        .I1(\next_state[1]_i_2_n_0 ),
        .I2(duty_cycle[5]),
        .I3(next_state[0]),
        .I4(duty_cycle[7]),
        .O(\next_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \next_state[1]_i_2 
       (.I0(duty_cycle[3]),
        .I1(duty_cycle[1]),
        .I2(duty_cycle[0]),
        .I3(duty_cycle[2]),
        .I4(duty_cycle[4]),
        .O(\next_state[1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(next_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(next_state[1]));
  CARRY4 pwm0_carry
       (.CI(1'b0),
        .CO({pwm0_carry_n_0,pwm0_carry_n_1,pwm0_carry_n_2,pwm0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm0_carry_i_1_n_0,pwm0_carry_i_2_n_0,pwm0_carry_i_3_n_0,pwm0_carry_i_4_n_0}),
        .O(NLW_pwm0_carry_O_UNCONNECTED[3:0]),
        .S({pwm0_carry_i_5_n_0,pwm0_carry_i_6_n_0,pwm0_carry_i_7_n_0,pwm0_carry_i_8_n_0}));
  CARRY4 pwm0_carry__0
       (.CI(pwm0_carry_n_0),
        .CO({NLW_pwm0_carry__0_CO_UNCONNECTED[3:1],pwm0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pwm0_carry__0_i_1_n_0}),
        .O(NLW_pwm0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,pwm0_carry__0_i_2_n_0}));
  LUT5 #(
    .INIT(32'h00000002)) 
    pwm0_carry__0_i_1
       (.I0(duty_cycle[7]),
        .I1(duty_cycle[5]),
        .I2(\next_state[1]_i_2_n_0 ),
        .I3(duty_cycle[6]),
        .I4(microsec_count_reg[8]),
        .O(pwm0_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h0002FFFD)) 
    pwm0_carry__0_i_2
       (.I0(duty_cycle[7]),
        .I1(duty_cycle[5]),
        .I2(\next_state[1]_i_2_n_0 ),
        .I3(duty_cycle[6]),
        .I4(microsec_count_reg[8]),
        .O(pwm0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h100414003D7C7DF0)) 
    pwm0_carry_i_1
       (.I0(microsec_count_reg[6]),
        .I1(duty_cycle[7]),
        .I2(duty_cycle[6]),
        .I3(duty_cycle[5]),
        .I4(\next_state[1]_i_2_n_0 ),
        .I5(microsec_count_reg[7]),
        .O(pwm0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h100414003D7C7DF0)) 
    pwm0_carry_i_2
       (.I0(microsec_count_reg[4]),
        .I1(duty_cycle[7]),
        .I2(duty_cycle[4]),
        .I3(duty_cycle[3]),
        .I4(pwm0_carry_i_9_n_0),
        .I5(microsec_count_reg[5]),
        .O(pwm0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h100414003D7C7DF0)) 
    pwm0_carry_i_3
       (.I0(microsec_count_reg[2]),
        .I1(duty_cycle[7]),
        .I2(duty_cycle[2]),
        .I3(duty_cycle[1]),
        .I4(duty_cycle[0]),
        .I5(microsec_count_reg[3]),
        .O(pwm0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    pwm0_carry_i_4
       (.I0(duty_cycle[0]),
        .I1(microsec_count_reg[1]),
        .O(pwm0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h5028285007808007)) 
    pwm0_carry_i_5
       (.I0(duty_cycle[7]),
        .I1(\next_state[1]_i_2_n_0 ),
        .I2(duty_cycle[5]),
        .I3(duty_cycle[6]),
        .I4(microsec_count_reg[7]),
        .I5(microsec_count_reg[6]),
        .O(pwm0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h1248482184842121)) 
    pwm0_carry_i_6
       (.I0(microsec_count_reg[5]),
        .I1(microsec_count_reg[4]),
        .I2(duty_cycle[4]),
        .I3(pwm0_carry_i_9_n_0),
        .I4(duty_cycle[3]),
        .I5(duty_cycle[7]),
        .O(pwm0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h1248482184842121)) 
    pwm0_carry_i_7
       (.I0(microsec_count_reg[3]),
        .I1(microsec_count_reg[2]),
        .I2(duty_cycle[2]),
        .I3(duty_cycle[0]),
        .I4(duty_cycle[1]),
        .I5(duty_cycle[7]),
        .O(pwm0_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    pwm0_carry_i_8
       (.I0(microsec_count_reg[0]),
        .I1(microsec_count_reg[1]),
        .I2(duty_cycle[0]),
        .O(pwm0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    pwm0_carry_i_9
       (.I0(duty_cycle[1]),
        .I1(duty_cycle[0]),
        .I2(duty_cycle[2]),
        .O(pwm0_carry_i_9_n_0));
  FDCE pwm_reg
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(pwm0_carry__0_n_3),
        .Q(pwm));
endmodule

(* ORIG_REF_NAME = "q_struct" *) 
module tutorial_bd_system_struct_0_0_q_struct
   (current_c_reg,
    abcdefg,
    O,
    \moving_sum_reg[8] ,
    \moving_sum_reg[0] ,
    velocity,
    SB,
    mclk,
    reset,
    SA,
    velocity_7_sp_1,
    velocity_5_sp_1,
    abcdefg_4_sp_1,
    \abcdefg[4]_0 ,
    abcdefg_3_sp_1,
    abcdefg_1_sp_1,
    velocity_4_sp_1,
    \abcdefg[1]_0 ,
    velocity_3_sp_1,
    abcdefg_0_sp_1);
  output current_c_reg;
  output [6:0]abcdefg;
  output [2:0]O;
  output [3:0]\moving_sum_reg[8] ;
  output [1:0]\moving_sum_reg[0] ;
  output [7:0]velocity;
  input SB;
  input mclk;
  input reset;
  input SA;
  input velocity_7_sp_1;
  input velocity_5_sp_1;
  input abcdefg_4_sp_1;
  input \abcdefg[4]_0 ;
  input abcdefg_3_sp_1;
  input abcdefg_1_sp_1;
  input velocity_4_sp_1;
  input \abcdefg[1]_0 ;
  input velocity_3_sp_1;
  input abcdefg_0_sp_1;

  wire [2:0]O;
  wire SA;
  wire SA_sync;
  wire SB;
  wire SB_sync;
  wire SEG_7_n_1;
  wire SEG_7_n_2;
  wire SEG_7_n_3;
  wire [6:0]abcdefg;
  wire \abcdefg[1]_0 ;
  wire \abcdefg[4]_0 ;
  wire abcdefg_0_sn_1;
  wire abcdefg_1_sn_1;
  wire abcdefg_3_sn_1;
  wire abcdefg_4_sn_1;
  wire current_c_reg;
  wire mclk;
  wire [11:11]moving_sum;
  wire [1:0]\moving_sum_reg[0] ;
  wire [3:0]\moving_sum_reg[8] ;
  wire pos_dec;
  wire pos_inc;
  wire reset;
  wire [7:0]velocity;
  wire velocity_3_sn_1;
  wire velocity_4_sn_1;
  wire velocity_5_sn_1;
  wire velocity_7_sn_1;

  assign abcdefg_0_sn_1 = abcdefg_0_sp_1;
  assign abcdefg_1_sn_1 = abcdefg_1_sp_1;
  assign abcdefg_3_sn_1 = abcdefg_3_sp_1;
  assign abcdefg_4_sn_1 = abcdefg_4_sp_1;
  assign velocity_3_sn_1 = velocity_3_sp_1;
  assign velocity_4_sn_1 = velocity_4_sp_1;
  assign velocity_5_sn_1 = velocity_5_sp_1;
  assign velocity_7_sn_1 = velocity_7_sp_1;
  tutorial_bd_system_struct_0_0_quadrature_decoder DECODER_O
       (.SA_sync(SA_sync),
        .SB_sync(SB_sync),
        .mclk(mclk),
        .pos_dec(pos_dec),
        .pos_inc(pos_inc),
        .reset(reset));
  tutorial_bd_system_struct_0_0_input_synchronizer_ent INPUT_SYNCHRONIZER
       (.SA(SA),
        .SA_sync(SA_sync),
        .SB(SB),
        .SB_sync(SB_sync),
        .mclk(mclk),
        .reset(reset));
  tutorial_bd_system_struct_0_0_seg7ctrl SEG_7
       (.O(\moving_sum_reg[0] [0]),
        .Q(moving_sum),
        .current_c_reg_0(current_c_reg),
        .current_c_reg_1(SEG_7_n_1),
        .current_c_reg_2(SEG_7_n_2),
        .current_c_reg_3(SEG_7_n_3),
        .mclk(mclk),
        .reset(reset));
  tutorial_bd_system_struct_0_0_velocity_reader VELOCITY_READER_0
       (.O(O),
        .Q(moving_sum),
        .abcdefg(abcdefg),
        .\abcdefg[1]_0 (abcdefg_1_sn_1),
        .\abcdefg[1]_1 (\abcdefg[1]_0 ),
        .\abcdefg[4]_0 (SEG_7_n_3),
        .\abcdefg[4]_1 (\abcdefg[4]_0 ),
        .\abcdefg[4]_2 (SEG_7_n_2),
        .abcdefg_0_sp_1(abcdefg_0_sn_1),
        .abcdefg_1_sp_1(SEG_7_n_1),
        .abcdefg_2_sp_1(current_c_reg),
        .abcdefg_3_sp_1(abcdefg_3_sn_1),
        .abcdefg_4_sp_1(abcdefg_4_sn_1),
        .mclk(mclk),
        .\moving_sum_reg[0]_0 (\moving_sum_reg[0] ),
        .\moving_sum_reg[8]_0 (\moving_sum_reg[8] ),
        .pos_dec(pos_dec),
        .pos_inc(pos_inc),
        .reset(reset),
        .velocity(velocity),
        .velocity_3_sp_1(velocity_3_sn_1),
        .velocity_4_sp_1(velocity_4_sn_1),
        .velocity_5_sp_1(velocity_5_sn_1),
        .velocity_7_sp_1(velocity_7_sn_1));
endmodule

(* ORIG_REF_NAME = "quadrature_decoder" *) 
module tutorial_bd_system_struct_0_0_quadrature_decoder
   (pos_inc,
    pos_dec,
    mclk,
    SA_sync,
    SB_sync,
    reset);
  output pos_inc;
  output pos_dec;
  input mclk;
  input SA_sync;
  input SB_sync;
  input reset;

  wire SA_sync;
  wire SB_sync;
  wire mclk;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state[2]_i_1_n_0 ;
  wire \next_state[2]_i_2_n_0 ;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire \next_state_reg_n_0_[2] ;
  wire pos_dec;
  wire pos_dec_i_1_n_0;
  wire pos_inc;
  wire pos_inc_i_1_n_0;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hCD57CEBA)) 
    \next_state[0]_i_1 
       (.I0(SA_sync),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[1] ),
        .I3(\next_state_reg_n_0_[2] ),
        .I4(SB_sync),
        .O(\next_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF2A8F2A2)) 
    \next_state[1]_i_1 
       (.I0(SA_sync),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[1] ),
        .I3(\next_state_reg_n_0_[2] ),
        .I4(SB_sync),
        .O(\next_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFC42FC18)) 
    \next_state[2]_i_1 
       (.I0(SA_sync),
        .I1(\next_state_reg_n_0_[0] ),
        .I2(\next_state_reg_n_0_[1] ),
        .I3(\next_state_reg_n_0_[2] ),
        .I4(SB_sync),
        .O(\next_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \next_state[2]_i_2 
       (.I0(\next_state_reg_n_0_[0] ),
        .I1(\next_state_reg_n_0_[2] ),
        .I2(\next_state_reg_n_0_[1] ),
        .I3(reset),
        .O(\next_state[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(\next_state[2]_i_2_n_0 ),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(\next_state[2]_i_2_n_0 ),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \next_state_reg[2] 
       (.C(mclk),
        .CE(1'b1),
        .D(\next_state[2]_i_1_n_0 ),
        .PRE(\next_state[2]_i_2_n_0 ),
        .Q(\next_state_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00900006)) 
    pos_dec_i_1
       (.I0(\next_state_reg_n_0_[0] ),
        .I1(SA_sync),
        .I2(SB_sync),
        .I3(\next_state_reg_n_0_[2] ),
        .I4(\next_state_reg_n_0_[1] ),
        .O(pos_dec_i_1_n_0));
  FDCE pos_dec_reg
       (.C(mclk),
        .CE(1'b1),
        .CLR(\next_state[2]_i_2_n_0 ),
        .D(pos_dec_i_1_n_0),
        .Q(pos_dec));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000960)) 
    pos_inc_i_1
       (.I0(\next_state_reg_n_0_[0] ),
        .I1(SA_sync),
        .I2(\next_state_reg_n_0_[1] ),
        .I3(SB_sync),
        .I4(\next_state_reg_n_0_[2] ),
        .O(pos_inc_i_1_n_0));
  FDCE pos_inc_reg
       (.C(mclk),
        .CE(1'b1),
        .CLR(\next_state[2]_i_2_n_0 ),
        .D(pos_inc_i_1_n_0),
        .Q(pos_inc));
endmodule

(* ORIG_REF_NAME = "seg7ctrl" *) 
module tutorial_bd_system_struct_0_0_seg7ctrl
   (current_c_reg_0,
    current_c_reg_1,
    current_c_reg_2,
    current_c_reg_3,
    mclk,
    reset,
    Q,
    O);
  output current_c_reg_0;
  output current_c_reg_1;
  output current_c_reg_2;
  output current_c_reg_3;
  input mclk;
  input reset;
  input [0:0]Q;
  input [0:0]O;

  wire [0:0]O;
  wire [0:0]Q;
  wire \counter[0]_i_10_n_0 ;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3__0_n_0 ;
  wire \counter[0]_i_4__0_n_0 ;
  wire \counter[0]_i_5__0_n_0 ;
  wire \counter[0]_i_6__0_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire \counter[0]_i_9_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[12]_i_6_n_0 ;
  wire \counter[12]_i_7_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[16]_i_5_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4__0_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[4]_i_6_n_0 ;
  wire \counter[4]_i_7_n_0 ;
  wire \counter[4]_i_8_n_0 ;
  wire \counter[4]_i_9_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [19:1]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[16]_i_1_n_1 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_4 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg_n_0_[0] ;
  wire current_c_i_1_n_0;
  wire current_c_i_2_n_0;
  wire current_c_i_3_n_0;
  wire current_c_i_4_n_0;
  wire current_c_reg_0;
  wire current_c_reg_1;
  wire current_c_reg_2;
  wire current_c_reg_3;
  wire mclk;
  wire reset;
  wire [3:3]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \abcdefg[4]_INST_0_i_5 
       (.I0(current_c_reg_0),
        .I1(Q),
        .O(current_c_reg_3));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \abcdefg[6]_INST_0_i_11 
       (.I0(current_c_reg_0),
        .I1(Q),
        .I2(O),
        .O(current_c_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \abcdefg[6]_INST_0_i_8 
       (.I0(current_c_reg_0),
        .I1(Q),
        .O(current_c_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \counter[0]_i_10 
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .I2(counter_reg[8]),
        .I3(counter_reg[9]),
        .O(\counter[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \counter[0]_i_2 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .I3(counter_reg[18]),
        .O(\counter[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    \counter[0]_i_3__0 
       (.I0(\counter[0]_i_8_n_0 ),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .I3(counter_reg[18]),
        .I4(counter_reg[3]),
        .O(\counter[0]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    \counter[0]_i_4__0 
       (.I0(\counter[0]_i_8_n_0 ),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .I3(counter_reg[18]),
        .I4(counter_reg[2]),
        .O(\counter[0]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    \counter[0]_i_5__0 
       (.I0(\counter[0]_i_8_n_0 ),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .I3(counter_reg[18]),
        .I4(counter_reg[1]),
        .O(\counter[0]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000BFFF)) 
    \counter[0]_i_6__0 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .I3(counter_reg[18]),
        .I4(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hCCFCDCFCCCFCFCFC)) 
    \counter[0]_i_7 
       (.I0(\counter[4]_i_9_n_0 ),
        .I1(\counter[0]_i_9_n_0 ),
        .I2(\counter[4]_i_7_n_0 ),
        .I3(counter_reg[9]),
        .I4(\counter[4]_i_8_n_0 ),
        .I5(counter_reg[6]),
        .O(\counter[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h8F8F8FFF)) 
    \counter[0]_i_8 
       (.I0(\counter[0]_i_10_n_0 ),
        .I1(\counter[4]_i_7_n_0 ),
        .I2(counter_reg[19]),
        .I3(counter_reg[14]),
        .I4(counter_reg[15]),
        .O(\counter[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \counter[0]_i_9 
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .I2(counter_reg[19]),
        .O(\counter[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \counter[12]_i_2 
       (.I0(counter_reg[19]),
        .I1(counter_reg[18]),
        .I2(counter_reg[17]),
        .I3(counter_reg[16]),
        .I4(counter_reg[15]),
        .O(\counter[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF080F0F0)) 
    \counter[12]_i_3 
       (.I0(\counter[12]_i_6_n_0 ),
        .I1(\counter[4]_i_7_n_0 ),
        .I2(counter_reg[14]),
        .I3(\counter[12]_i_7_n_0 ),
        .I4(counter_reg[19]),
        .O(\counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_4 
       (.I0(\counter[4]_i_6_n_0 ),
        .I1(counter_reg[13]),
        .O(\counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[12]_i_5 
       (.I0(\counter[4]_i_6_n_0 ),
        .I1(counter_reg[12]),
        .O(\counter[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h3337333F)) 
    \counter[12]_i_6 
       (.I0(\counter[4]_i_9_n_0 ),
        .I1(counter_reg[9]),
        .I2(counter_reg[8]),
        .I3(counter_reg[7]),
        .I4(counter_reg[6]),
        .O(\counter[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[12]_i_7 
       (.I0(counter_reg[18]),
        .I1(counter_reg[17]),
        .I2(counter_reg[16]),
        .O(\counter[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFABABAB00000000)) 
    \counter[16]_i_2 
       (.I0(\counter[12]_i_7_n_0 ),
        .I1(counter_reg[15]),
        .I2(counter_reg[14]),
        .I3(\counter[12]_i_6_n_0 ),
        .I4(\counter[4]_i_7_n_0 ),
        .I5(counter_reg[19]),
        .O(\counter[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \counter[16]_i_3 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .I3(counter_reg[18]),
        .O(\counter[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF00)) 
    \counter[16]_i_4 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(counter_reg[16]),
        .I2(counter_reg[18]),
        .I3(counter_reg[17]),
        .O(\counter[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF070)) 
    \counter[16]_i_5 
       (.I0(counter_reg[17]),
        .I1(counter_reg[18]),
        .I2(counter_reg[16]),
        .I3(\counter[0]_i_7_n_0 ),
        .O(\counter[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hAE00)) 
    \counter[4]_i_2 
       (.I0(\counter[4]_i_6_n_0 ),
        .I1(\counter[4]_i_7_n_0 ),
        .I2(counter_reg[9]),
        .I3(counter_reg[7]),
        .O(\counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F010F00000)) 
    \counter[4]_i_3 
       (.I0(\counter[4]_i_8_n_0 ),
        .I1(\counter[4]_i_9_n_0 ),
        .I2(counter_reg[6]),
        .I3(counter_reg[9]),
        .I4(\counter[4]_i_7_n_0 ),
        .I5(\counter[4]_i_6_n_0 ),
        .O(\counter[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    \counter[4]_i_4__0 
       (.I0(\counter[0]_i_8_n_0 ),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .I3(counter_reg[18]),
        .I4(counter_reg[5]),
        .O(\counter[4]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    \counter[4]_i_5 
       (.I0(\counter[0]_i_8_n_0 ),
        .I1(counter_reg[16]),
        .I2(counter_reg[17]),
        .I3(counter_reg[18]),
        .I4(counter_reg[4]),
        .O(\counter[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \counter[4]_i_6 
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .I2(counter_reg[18]),
        .I3(counter_reg[19]),
        .I4(counter_reg[14]),
        .I5(counter_reg[15]),
        .O(\counter[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \counter[4]_i_7 
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .I2(counter_reg[10]),
        .I3(counter_reg[11]),
        .I4(counter_reg[15]),
        .O(\counter[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \counter[4]_i_8 
       (.I0(counter_reg[7]),
        .I1(counter_reg[8]),
        .O(\counter[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[4]_i_9 
       (.I0(counter_reg[1]),
        .I1(counter_reg[4]),
        .I2(counter_reg[5]),
        .I3(counter_reg[3]),
        .I4(counter_reg[2]),
        .O(\counter[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_2 
       (.I0(\counter[4]_i_6_n_0 ),
        .I1(counter_reg[11]),
        .O(\counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter[8]_i_3 
       (.I0(\counter[4]_i_6_n_0 ),
        .I1(counter_reg[10]),
        .O(\counter[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000015000000)) 
    \counter[8]_i_4 
       (.I0(\counter[4]_i_8_n_0 ),
        .I1(counter_reg[6]),
        .I2(\counter[4]_i_9_n_0 ),
        .I3(\counter[4]_i_7_n_0 ),
        .I4(counter_reg[9]),
        .I5(\counter[4]_i_6_n_0 ),
        .O(\counter[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAE00)) 
    \counter[8]_i_5 
       (.I0(\counter[4]_i_6_n_0 ),
        .I1(\counter[4]_i_7_n_0 ),
        .I2(counter_reg[9]),
        .I3(counter_reg[8]),
        .O(\counter[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(\counter_reg_n_0_[0] ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2_n_0 }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_3__0_n_0 ,\counter[0]_i_4__0_n_0 ,\counter[0]_i_5__0_n_0 ,\counter[0]_i_6__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3],\counter_reg[16]_i_1_n_1 ,\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[16]_i_1_n_4 ,\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 ,\counter[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[16]_i_1_n_4 ),
        .Q(counter_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4__0_n_0 ,\counter[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]));
  LUT6 #(
    .INIT(64'hFFFFFF07000000F8)) 
    current_c_i_1
       (.I0(counter_reg[14]),
        .I1(current_c_i_2_n_0),
        .I2(counter_reg[15]),
        .I3(current_c_i_3_n_0),
        .I4(reset),
        .I5(current_c_reg_0),
        .O(current_c_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    current_c_i_2
       (.I0(counter_reg[9]),
        .I1(current_c_i_4_n_0),
        .I2(counter_reg[12]),
        .I3(counter_reg[13]),
        .I4(counter_reg[10]),
        .I5(counter_reg[11]),
        .O(current_c_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    current_c_i_3
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .I2(counter_reg[18]),
        .I3(counter_reg[19]),
        .O(current_c_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    current_c_i_4
       (.I0(counter_reg[8]),
        .I1(counter_reg[7]),
        .I2(counter_reg[6]),
        .I3(\counter[4]_i_9_n_0 ),
        .O(current_c_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    current_c_reg
       (.C(mclk),
        .CE(1'b1),
        .D(current_c_i_1_n_0),
        .Q(current_c_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "system_struct" *) 
module tutorial_bd_system_struct_0_0_system_struct
   (EN_sync,
    DIR_sync,
    current_c_reg,
    abcdefg,
    ARG3,
    velocity,
    SB,
    mclk,
    reset,
    SA,
    velocity_7_sp_1,
    velocity_5_sp_1,
    abcdefg_4_sp_1,
    \abcdefg[4]_0 ,
    abcdefg_3_sp_1,
    abcdefg_1_sp_1,
    duty_cycle,
    velocity_4_sp_1,
    \abcdefg[1]_0 ,
    velocity_3_sp_1,
    abcdefg_0_sp_1);
  output EN_sync;
  output DIR_sync;
  output current_c_reg;
  output [6:0]abcdefg;
  output [8:0]ARG3;
  output [7:0]velocity;
  input SB;
  input mclk;
  input reset;
  input SA;
  input velocity_7_sp_1;
  input velocity_5_sp_1;
  input abcdefg_4_sp_1;
  input \abcdefg[4]_0 ;
  input abcdefg_3_sp_1;
  input abcdefg_1_sp_1;
  input [7:0]duty_cycle;
  input velocity_4_sp_1;
  input \abcdefg[1]_0 ;
  input velocity_3_sp_1;
  input abcdefg_0_sp_1;

  wire [8:0]ARG3;
  wire DIR_sync;
  wire EN_sync;
  wire SA;
  wire SB;
  wire [6:0]abcdefg;
  wire \abcdefg[1]_0 ;
  wire \abcdefg[4]_0 ;
  wire abcdefg_0_sn_1;
  wire abcdefg_1_sn_1;
  wire abcdefg_3_sn_1;
  wire abcdefg_4_sn_1;
  wire current_c_reg;
  wire dir;
  wire [7:0]duty_cycle;
  wire en;
  wire mclk;
  wire reset;
  wire [7:0]velocity;
  wire velocity_3_sn_1;
  wire velocity_4_sn_1;
  wire velocity_5_sn_1;
  wire velocity_7_sn_1;

  assign abcdefg_0_sn_1 = abcdefg_0_sp_1;
  assign abcdefg_1_sn_1 = abcdefg_1_sp_1;
  assign abcdefg_3_sn_1 = abcdefg_3_sp_1;
  assign abcdefg_4_sn_1 = abcdefg_4_sp_1;
  assign velocity_3_sn_1 = velocity_3_sp_1;
  assign velocity_4_sn_1 = velocity_4_sp_1;
  assign velocity_5_sn_1 = velocity_5_sp_1;
  assign velocity_7_sn_1 = velocity_7_sp_1;
  tutorial_bd_system_struct_0_0_output_synchronizer_ent output_sync_0
       (.DIR_sync(DIR_sync),
        .EN_sync(EN_sync),
        .dir(dir),
        .en(en),
        .mclk(mclk),
        .reset(reset));
  tutorial_bd_system_struct_0_0_pulse_width_modulator pwm_0
       (.dir(dir),
        .duty_cycle(duty_cycle),
        .en(en),
        .mclk(mclk),
        .reset(reset));
  tutorial_bd_system_struct_0_0_q_struct q_struct_0
       (.O(ARG3[8:6]),
        .SA(SA),
        .SB(SB),
        .abcdefg(abcdefg),
        .\abcdefg[1]_0 (\abcdefg[1]_0 ),
        .\abcdefg[4]_0 (\abcdefg[4]_0 ),
        .abcdefg_0_sp_1(abcdefg_0_sn_1),
        .abcdefg_1_sp_1(abcdefg_1_sn_1),
        .abcdefg_3_sp_1(abcdefg_3_sn_1),
        .abcdefg_4_sp_1(abcdefg_4_sn_1),
        .current_c_reg(current_c_reg),
        .mclk(mclk),
        .\moving_sum_reg[0] (ARG3[1:0]),
        .\moving_sum_reg[8] (ARG3[5:2]),
        .reset(reset),
        .velocity(velocity),
        .velocity_3_sp_1(velocity_3_sn_1),
        .velocity_4_sp_1(velocity_4_sn_1),
        .velocity_5_sp_1(velocity_5_sn_1),
        .velocity_7_sp_1(velocity_7_sn_1));
endmodule

(* ORIG_REF_NAME = "velocity_reader" *) 
module tutorial_bd_system_struct_0_0_velocity_reader
   (Q,
    abcdefg,
    O,
    \moving_sum_reg[8]_0 ,
    \moving_sum_reg[0]_0 ,
    velocity,
    mclk,
    reset,
    abcdefg_1_sp_1,
    velocity_7_sp_1,
    velocity_5_sp_1,
    abcdefg_2_sp_1,
    abcdefg_4_sp_1,
    \abcdefg[4]_0 ,
    \abcdefg[4]_1 ,
    \abcdefg[4]_2 ,
    abcdefg_3_sp_1,
    \abcdefg[1]_0 ,
    velocity_4_sp_1,
    pos_inc,
    pos_dec,
    \abcdefg[1]_1 ,
    velocity_3_sp_1,
    abcdefg_0_sp_1);
  output [0:0]Q;
  output [6:0]abcdefg;
  output [2:0]O;
  output [3:0]\moving_sum_reg[8]_0 ;
  output [1:0]\moving_sum_reg[0]_0 ;
  output [7:0]velocity;
  input mclk;
  input reset;
  input abcdefg_1_sp_1;
  input velocity_7_sp_1;
  input velocity_5_sp_1;
  input abcdefg_2_sp_1;
  input abcdefg_4_sp_1;
  input \abcdefg[4]_0 ;
  input \abcdefg[4]_1 ;
  input \abcdefg[4]_2 ;
  input abcdefg_3_sp_1;
  input \abcdefg[1]_0 ;
  input velocity_4_sp_1;
  input pos_inc;
  input pos_dec;
  input \abcdefg[1]_1 ;
  input velocity_3_sp_1;
  input abcdefg_0_sp_1;

  wire [2:0]O;
  wire [0:0]Q;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__0_n_4 ;
  wire \_inferred__0/i__carry__0_n_5 ;
  wire \_inferred__0/i__carry__0_n_6 ;
  wire \_inferred__0/i__carry__0_n_7 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire \_inferred__0/i__carry_n_4 ;
  wire \_inferred__0/i__carry_n_5 ;
  wire \_inferred__0/i__carry_n_6 ;
  wire \_inferred__0/i__carry_n_7 ;
  wire [6:0]abcdefg;
  wire \abcdefg[0]_INST_0_i_1_n_0 ;
  wire \abcdefg[0]_INST_0_i_2_n_0 ;
  wire \abcdefg[0]_INST_0_i_3_n_0 ;
  wire \abcdefg[0]_INST_0_i_4_n_0 ;
  wire \abcdefg[0]_INST_0_i_5_n_0 ;
  wire \abcdefg[0]_INST_0_i_6_n_0 ;
  wire \abcdefg[0]_INST_0_i_8_n_0 ;
  wire \abcdefg[1]_0 ;
  wire \abcdefg[1]_1 ;
  wire \abcdefg[1]_INST_0_i_1_n_0 ;
  wire \abcdefg[1]_INST_0_i_2_n_0 ;
  wire \abcdefg[1]_INST_0_i_3_n_0 ;
  wire \abcdefg[1]_INST_0_i_4_n_0 ;
  wire \abcdefg[1]_INST_0_i_7_n_0 ;
  wire \abcdefg[1]_INST_0_i_8_n_0 ;
  wire \abcdefg[2]_INST_0_i_1_n_0 ;
  wire \abcdefg[2]_INST_0_i_2_n_0 ;
  wire \abcdefg[2]_INST_0_i_3_n_0 ;
  wire \abcdefg[3]_INST_0_i_10_n_0 ;
  wire \abcdefg[3]_INST_0_i_1_n_0 ;
  wire \abcdefg[3]_INST_0_i_2_n_0 ;
  wire \abcdefg[3]_INST_0_i_3_n_0 ;
  wire \abcdefg[3]_INST_0_i_4_n_0 ;
  wire \abcdefg[3]_INST_0_i_5_n_0 ;
  wire \abcdefg[3]_INST_0_i_6_n_0 ;
  wire \abcdefg[3]_INST_0_i_7_n_0 ;
  wire \abcdefg[3]_INST_0_i_8_n_0 ;
  wire \abcdefg[4]_0 ;
  wire \abcdefg[4]_1 ;
  wire \abcdefg[4]_2 ;
  wire \abcdefg[4]_INST_0_i_1_n_0 ;
  wire \abcdefg[4]_INST_0_i_3_n_0 ;
  wire \abcdefg[4]_INST_0_i_4_n_0 ;
  wire \abcdefg[4]_INST_0_i_6_n_0 ;
  wire \abcdefg[4]_INST_0_i_7_n_0 ;
  wire \abcdefg[4]_INST_0_i_8_n_0 ;
  wire \abcdefg[5]_INST_0_i_1_n_0 ;
  wire \abcdefg[5]_INST_0_i_2_n_0 ;
  wire \abcdefg[5]_INST_0_i_3_n_0 ;
  wire \abcdefg[5]_INST_0_i_4_n_0 ;
  wire \abcdefg[5]_INST_0_i_5_n_0 ;
  wire \abcdefg[5]_INST_0_i_6_n_0 ;
  wire \abcdefg[5]_INST_0_i_7_n_0 ;
  wire \abcdefg[5]_INST_0_i_8_n_0 ;
  wire \abcdefg[6]_INST_0_i_10_n_0 ;
  wire \abcdefg[6]_INST_0_i_1_n_0 ;
  wire \abcdefg[6]_INST_0_i_2_n_0 ;
  wire \abcdefg[6]_INST_0_i_3_n_0 ;
  wire \abcdefg[6]_INST_0_i_4_n_0 ;
  wire \abcdefg[6]_INST_0_i_5_n_0 ;
  wire \abcdefg[6]_INST_0_i_6_n_0 ;
  wire \abcdefg[6]_INST_0_i_7_n_0 ;
  wire \abcdefg[6]_INST_0_i_9_n_0 ;
  wire abcdefg_0_sn_1;
  wire abcdefg_1_sn_1;
  wire abcdefg_2_sn_1;
  wire abcdefg_3_sn_1;
  wire abcdefg_4_sn_1;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_13_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire mclk;
  wire [10:0]moving_sum;
  wire \moving_sum[11]_i_2_n_0 ;
  wire \moving_sum[11]_i_3_n_0 ;
  wire \moving_sum[11]_i_4_n_0 ;
  wire \moving_sum[11]_i_5_n_0 ;
  wire moving_sum_next_carry__0_i_1_n_0;
  wire moving_sum_next_carry__0_i_2_n_0;
  wire moving_sum_next_carry__0_i_3_n_0;
  wire moving_sum_next_carry__0_i_4_n_0;
  wire moving_sum_next_carry__0_i_5_n_0;
  wire moving_sum_next_carry__0_i_6_n_0;
  wire moving_sum_next_carry__0_i_7_n_0;
  wire moving_sum_next_carry__0_i_8_n_0;
  wire moving_sum_next_carry__0_n_0;
  wire moving_sum_next_carry__0_n_1;
  wire moving_sum_next_carry__0_n_2;
  wire moving_sum_next_carry__0_n_3;
  wire moving_sum_next_carry__0_n_4;
  wire moving_sum_next_carry__0_n_5;
  wire moving_sum_next_carry__0_n_6;
  wire moving_sum_next_carry__0_n_7;
  wire moving_sum_next_carry__1_i_1_n_0;
  wire moving_sum_next_carry__1_i_2_n_0;
  wire moving_sum_next_carry__1_i_3_n_0;
  wire moving_sum_next_carry__1_i_4_n_0;
  wire moving_sum_next_carry__1_i_5_n_0;
  wire moving_sum_next_carry__1_n_1;
  wire moving_sum_next_carry__1_n_2;
  wire moving_sum_next_carry__1_n_3;
  wire moving_sum_next_carry__1_n_4;
  wire moving_sum_next_carry__1_n_5;
  wire moving_sum_next_carry__1_n_6;
  wire moving_sum_next_carry__1_n_7;
  wire moving_sum_next_carry_i_1_n_0;
  wire moving_sum_next_carry_i_2_n_0;
  wire moving_sum_next_carry_i_3_n_0;
  wire moving_sum_next_carry_i_4_n_0;
  wire moving_sum_next_carry_i_5_n_0;
  wire moving_sum_next_carry_i_6_n_0;
  wire moving_sum_next_carry_i_7_n_0;
  wire moving_sum_next_carry_i_8_n_0;
  wire moving_sum_next_carry_n_0;
  wire moving_sum_next_carry_n_1;
  wire moving_sum_next_carry_n_2;
  wire moving_sum_next_carry_n_3;
  wire moving_sum_next_carry_n_4;
  wire moving_sum_next_carry_n_5;
  wire moving_sum_next_carry_n_6;
  wire moving_sum_next_carry_n_7;
  wire [1:0]\moving_sum_reg[0]_0 ;
  wire [3:0]\moving_sum_reg[8]_0 ;
  wire [7:0]pos_count;
  wire pos_dec;
  wire pos_inc;
  wire \pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ;
  wire \pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ;
  wire \pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ;
  wire \pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ;
  wire \pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ;
  wire \pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ;
  wire \pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ;
  wire \pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ;
  wire \pos_shift_reg[8][0]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ;
  wire \pos_shift_reg[8][1]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ;
  wire \pos_shift_reg[8][2]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ;
  wire \pos_shift_reg[8][3]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ;
  wire \pos_shift_reg[8][4]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ;
  wire \pos_shift_reg[8][5]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ;
  wire \pos_shift_reg[8][6]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ;
  wire \pos_shift_reg[8][7]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ;
  wire [7:0]\pos_shift_reg[9] ;
  wire pos_shift_reg_c_0_n_0;
  wire pos_shift_reg_c_1_n_0;
  wire pos_shift_reg_c_2_n_0;
  wire pos_shift_reg_c_3_n_0;
  wire pos_shift_reg_c_4_n_0;
  wire pos_shift_reg_c_5_n_0;
  wire pos_shift_reg_c_6_n_0;
  wire pos_shift_reg_c_7_n_0;
  wire pos_shift_reg_c_n_0;
  wire pos_shift_reg_gate__0_n_0;
  wire pos_shift_reg_gate__1_n_0;
  wire pos_shift_reg_gate__2_n_0;
  wire pos_shift_reg_gate__3_n_0;
  wire pos_shift_reg_gate__4_n_0;
  wire pos_shift_reg_gate__5_n_0;
  wire pos_shift_reg_gate__6_n_0;
  wire pos_shift_reg_gate_n_0;
  wire \rcount[0]_i_10_n_0 ;
  wire \rcount[0]_i_11_n_0 ;
  wire \rcount[0]_i_12_n_0 ;
  wire \rcount[0]_i_2_n_0 ;
  wire \rcount[0]_i_3_n_0 ;
  wire \rcount[0]_i_4_n_0 ;
  wire \rcount[0]_i_5_n_0 ;
  wire \rcount[0]_i_6_n_0 ;
  wire \rcount[0]_i_7_n_0 ;
  wire \rcount[0]_i_8_n_0 ;
  wire \rcount[0]_i_9_n_0 ;
  wire \rcount[12]_i_2_n_0 ;
  wire \rcount[12]_i_3_n_0 ;
  wire \rcount[12]_i_4_n_0 ;
  wire \rcount[12]_i_5_n_0 ;
  wire \rcount[12]_i_6_n_0 ;
  wire \rcount[12]_i_7_n_0 ;
  wire \rcount[16]_i_2_n_0 ;
  wire \rcount[16]_i_3_n_0 ;
  wire \rcount[16]_i_4_n_0 ;
  wire \rcount[16]_i_5_n_0 ;
  wire \rcount[16]_i_6_n_0 ;
  wire \rcount[4]_i_2_n_0 ;
  wire \rcount[4]_i_3_n_0 ;
  wire \rcount[4]_i_4_n_0 ;
  wire \rcount[4]_i_5_n_0 ;
  wire \rcount[8]_i_2_n_0 ;
  wire \rcount[8]_i_3_n_0 ;
  wire \rcount[8]_i_4_n_0 ;
  wire \rcount[8]_i_5_n_0 ;
  wire \rcount[8]_i_6_n_0 ;
  wire \rcount[8]_i_7_n_0 ;
  wire \rcount[8]_i_8_n_0 ;
  wire [19:0]rcount_reg;
  wire \rcount_reg[0]_i_1_n_0 ;
  wire \rcount_reg[0]_i_1_n_1 ;
  wire \rcount_reg[0]_i_1_n_2 ;
  wire \rcount_reg[0]_i_1_n_3 ;
  wire \rcount_reg[0]_i_1_n_4 ;
  wire \rcount_reg[0]_i_1_n_5 ;
  wire \rcount_reg[0]_i_1_n_6 ;
  wire \rcount_reg[0]_i_1_n_7 ;
  wire \rcount_reg[12]_i_1_n_0 ;
  wire \rcount_reg[12]_i_1_n_1 ;
  wire \rcount_reg[12]_i_1_n_2 ;
  wire \rcount_reg[12]_i_1_n_3 ;
  wire \rcount_reg[12]_i_1_n_4 ;
  wire \rcount_reg[12]_i_1_n_5 ;
  wire \rcount_reg[12]_i_1_n_6 ;
  wire \rcount_reg[12]_i_1_n_7 ;
  wire \rcount_reg[16]_i_1_n_1 ;
  wire \rcount_reg[16]_i_1_n_2 ;
  wire \rcount_reg[16]_i_1_n_3 ;
  wire \rcount_reg[16]_i_1_n_4 ;
  wire \rcount_reg[16]_i_1_n_5 ;
  wire \rcount_reg[16]_i_1_n_6 ;
  wire \rcount_reg[16]_i_1_n_7 ;
  wire \rcount_reg[4]_i_1_n_0 ;
  wire \rcount_reg[4]_i_1_n_1 ;
  wire \rcount_reg[4]_i_1_n_2 ;
  wire \rcount_reg[4]_i_1_n_3 ;
  wire \rcount_reg[4]_i_1_n_4 ;
  wire \rcount_reg[4]_i_1_n_5 ;
  wire \rcount_reg[4]_i_1_n_6 ;
  wire \rcount_reg[4]_i_1_n_7 ;
  wire \rcount_reg[8]_i_1_n_0 ;
  wire \rcount_reg[8]_i_1_n_1 ;
  wire \rcount_reg[8]_i_1_n_2 ;
  wire \rcount_reg[8]_i_1_n_3 ;
  wire \rcount_reg[8]_i_1_n_4 ;
  wire \rcount_reg[8]_i_1_n_5 ;
  wire \rcount_reg[8]_i_1_n_6 ;
  wire \rcount_reg[8]_i_1_n_7 ;
  wire reset;
  wire ten_ms_pulse;
  wire [7:0]velocity;
  wire velocity1;
  wire velocity1_carry_i_10_n_0;
  wire velocity1_carry_i_10_n_1;
  wire velocity1_carry_i_10_n_2;
  wire velocity1_carry_i_10_n_3;
  wire velocity1_carry_i_11_n_0;
  wire velocity1_carry_i_12_n_0;
  wire velocity1_carry_i_13_n_0;
  wire velocity1_carry_i_14_n_0;
  wire velocity1_carry_i_15_n_0;
  wire velocity1_carry_i_16_n_0;
  wire velocity1_carry_i_17_n_0;
  wire velocity1_carry_i_18_n_0;
  wire velocity1_carry_i_19_n_0;
  wire velocity1_carry_i_1_n_0;
  wire velocity1_carry_i_20_n_0;
  wire velocity1_carry_i_21_n_0;
  wire velocity1_carry_i_2_n_0;
  wire velocity1_carry_i_4_n_0;
  wire velocity1_carry_i_5_n_0;
  wire velocity1_carry_i_6_n_0;
  wire velocity1_carry_i_7_n_0;
  wire velocity1_carry_i_8_n_2;
  wire velocity1_carry_i_8_n_3;
  wire velocity1_carry_i_9_n_0;
  wire velocity1_carry_i_9_n_1;
  wire velocity1_carry_i_9_n_2;
  wire velocity1_carry_i_9_n_3;
  wire velocity1_carry_n_1;
  wire velocity1_carry_n_2;
  wire velocity1_carry_n_3;
  wire [5:5]velocity2;
  wire [11:4]velocity3;
  wire \velocity[3]_INST_0_i_1_n_0 ;
  wire \velocity[3]_INST_0_i_1_n_1 ;
  wire \velocity[3]_INST_0_i_1_n_2 ;
  wire \velocity[3]_INST_0_i_1_n_3 ;
  wire \velocity[3]_INST_0_i_3_n_0 ;
  wire \velocity[3]_INST_0_i_4_n_0 ;
  wire \velocity[3]_INST_0_i_5_n_0 ;
  wire \velocity[3]_INST_0_i_6_n_0 ;
  wire \velocity[3]_INST_0_i_7_n_0 ;
  wire \velocity[7]_INST_0_i_10_n_0 ;
  wire \velocity[7]_INST_0_i_11_n_0 ;
  wire \velocity[7]_INST_0_i_2_n_2 ;
  wire \velocity[7]_INST_0_i_2_n_3 ;
  wire \velocity[7]_INST_0_i_4_n_0 ;
  wire \velocity[7]_INST_0_i_4_n_1 ;
  wire \velocity[7]_INST_0_i_4_n_2 ;
  wire \velocity[7]_INST_0_i_4_n_3 ;
  wire \velocity[7]_INST_0_i_5_n_0 ;
  wire \velocity[7]_INST_0_i_6_n_0 ;
  wire \velocity[7]_INST_0_i_7_n_0 ;
  wire \velocity[7]_INST_0_i_8_n_0 ;
  wire \velocity[7]_INST_0_i_9_n_0 ;
  wire velocity_3_sn_1;
  wire velocity_4_sn_1;
  wire velocity_5_sn_1;
  wire velocity_7_sn_1;
  wire [3:3]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]NLW_moving_sum_next_carry__1_CO_UNCONNECTED;
  wire [3:3]\NLW_rcount_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_velocity1_carry_O_UNCONNECTED;
  wire [2:0]NLW_velocity1_carry_i_10_O_UNCONNECTED;
  wire [3:2]NLW_velocity1_carry_i_8_CO_UNCONNECTED;
  wire [3:3]NLW_velocity1_carry_i_8_O_UNCONNECTED;
  wire [1:0]\NLW_velocity[3]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:2]\NLW_velocity[7]_INST_0_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_velocity[7]_INST_0_i_2_O_UNCONNECTED ;

  assign abcdefg_0_sn_1 = abcdefg_0_sp_1;
  assign abcdefg_1_sn_1 = abcdefg_1_sp_1;
  assign abcdefg_2_sn_1 = abcdefg_2_sp_1;
  assign abcdefg_3_sn_1 = abcdefg_3_sp_1;
  assign abcdefg_4_sn_1 = abcdefg_4_sp_1;
  assign velocity_3_sn_1 = velocity_3_sp_1;
  assign velocity_4_sn_1 = velocity_4_sp_1;
  assign velocity_5_sn_1 = velocity_5_sp_1;
  assign velocity_7_sn_1 = velocity_7_sp_1;
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O({\_inferred__0/i__carry_n_4 ,\_inferred__0/i__carry_n_5 ,\_inferred__0/i__carry_n_6 ,\_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [3],\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}),
        .O({\_inferred__0/i__carry__0_n_4 ,\_inferred__0/i__carry__0_n_5 ,\_inferred__0/i__carry__0_n_6 ,\_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0}));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \abcdefg[0]_INST_0 
       (.I0(\abcdefg[0]_INST_0_i_1_n_0 ),
        .I1(\abcdefg[0]_INST_0_i_2_n_0 ),
        .I2(\abcdefg[0]_INST_0_i_3_n_0 ),
        .I3(\abcdefg[0]_INST_0_i_4_n_0 ),
        .I4(\abcdefg[1]_INST_0_i_1_n_0 ),
        .I5(\abcdefg[0]_INST_0_i_5_n_0 ),
        .O(abcdefg[0]));
  LUT6 #(
    .INIT(64'hFFFFAAEAAAEAAAEA)) 
    \abcdefg[0]_INST_0_i_1 
       (.I0(\abcdefg[1]_INST_0_i_7_n_0 ),
        .I1(velocity_7_sn_1),
        .I2(\abcdefg[0]_INST_0_i_6_n_0 ),
        .I3(velocity_5_sn_1),
        .I4(moving_sum[8]),
        .I5(\abcdefg[3]_INST_0_i_7_n_0 ),
        .O(\abcdefg[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00001B0A00005F0A)) 
    \abcdefg[0]_INST_0_i_2 
       (.I0(Q),
        .I1(moving_sum[5]),
        .I2(abcdefg_0_sn_1),
        .I3(moving_sum[4]),
        .I4(abcdefg_2_sn_1),
        .I5(moving_sum[3]),
        .O(\abcdefg[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000085D00000808)) 
    \abcdefg[0]_INST_0_i_3 
       (.I0(Q),
        .I1(abcdefg_3_sn_1),
        .I2(\abcdefg[1]_0 ),
        .I3(\abcdefg[0]_INST_0_i_8_n_0 ),
        .I4(abcdefg_2_sn_1),
        .I5(moving_sum[3]),
        .O(\abcdefg[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00001B1100000000)) 
    \abcdefg[0]_INST_0_i_4 
       (.I0(Q),
        .I1(\abcdefg[4]_INST_0_i_8_n_0 ),
        .I2(O[0]),
        .I3(\moving_sum_reg[8]_0 [3]),
        .I4(velocity1),
        .I5(abcdefg_2_sn_1),
        .O(\abcdefg[0]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \abcdefg[0]_INST_0_i_5 
       (.I0(\moving_sum_reg[8]_0 [3]),
        .I1(\abcdefg[0]_INST_0_i_6_n_0 ),
        .I2(\moving_sum_reg[8]_0 [2]),
        .I3(\moving_sum_reg[0]_0 [1]),
        .I4(\abcdefg[6]_INST_0_i_7_n_0 ),
        .I5(\moving_sum_reg[0]_0 [0]),
        .O(\abcdefg[0]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \abcdefg[0]_INST_0_i_6 
       (.I0(velocity1),
        .I1(Q),
        .I2(abcdefg_2_sn_1),
        .O(\abcdefg[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \abcdefg[0]_INST_0_i_8 
       (.I0(moving_sum[4]),
        .I1(moving_sum[5]),
        .O(\abcdefg[0]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFEEEE)) 
    \abcdefg[1]_INST_0 
       (.I0(\abcdefg[1]_INST_0_i_1_n_0 ),
        .I1(\abcdefg[1]_INST_0_i_2_n_0 ),
        .I2(O[0]),
        .I3(\moving_sum_reg[8]_0 [3]),
        .I4(\abcdefg[1]_INST_0_i_3_n_0 ),
        .I5(\abcdefg[1]_INST_0_i_4_n_0 ),
        .O(abcdefg[1]));
  LUT6 #(
    .INIT(64'h0000FF8000AAFF80)) 
    \abcdefg[1]_INST_0_i_1 
       (.I0(Q),
        .I1(\abcdefg[1]_0 ),
        .I2(\moving_sum_reg[8]_0 [1]),
        .I3(velocity1),
        .I4(abcdefg_2_sn_1),
        .I5(\abcdefg[1]_1 ),
        .O(\abcdefg[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFB0B0B0FFB0FFB0)) 
    \abcdefg[1]_INST_0_i_2 
       (.I0(\moving_sum_reg[8]_0 [0]),
        .I1(\moving_sum_reg[0]_0 [1]),
        .I2(abcdefg_1_sn_1),
        .I3(\abcdefg[6]_INST_0_i_10_n_0 ),
        .I4(moving_sum[5]),
        .I5(moving_sum[4]),
        .O(\abcdefg[1]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \abcdefg[1]_INST_0_i_3 
       (.I0(abcdefg_2_sn_1),
        .I1(Q),
        .I2(velocity1),
        .I3(\moving_sum_reg[8]_0 [2]),
        .O(\abcdefg[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFABAAABAAABAA)) 
    \abcdefg[1]_INST_0_i_4 
       (.I0(\abcdefg[1]_INST_0_i_7_n_0 ),
        .I1(\moving_sum_reg[8]_0 [1]),
        .I2(\abcdefg[1]_0 ),
        .I3(\abcdefg[6]_INST_0_i_7_n_0 ),
        .I4(\abcdefg[4]_INST_0_i_8_n_0 ),
        .I5(\abcdefg[3]_INST_0_i_7_n_0 ),
        .O(\abcdefg[1]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0155010001000155)) 
    \abcdefg[1]_INST_0_i_7 
       (.I0(Q),
        .I1(\abcdefg[1]_INST_0_i_8_n_0 ),
        .I2(velocity1),
        .I3(abcdefg_2_sn_1),
        .I4(\abcdefg[0]_INST_0_i_8_n_0 ),
        .I5(moving_sum[6]),
        .O(\abcdefg[1]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \abcdefg[1]_INST_0_i_8 
       (.I0(moving_sum[8]),
        .I1(moving_sum[9]),
        .O(\abcdefg[1]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEEFE)) 
    \abcdefg[2]_INST_0 
       (.I0(\abcdefg[3]_INST_0_i_4_n_0 ),
        .I1(\abcdefg[2]_INST_0_i_1_n_0 ),
        .I2(velocity1),
        .I3(abcdefg_2_sn_1),
        .I4(\abcdefg[2]_INST_0_i_2_n_0 ),
        .O(abcdefg[2]));
  LUT6 #(
    .INIT(64'h0000D58000008080)) 
    \abcdefg[2]_INST_0_i_1 
       (.I0(Q),
        .I1(velocity_3_sn_1),
        .I2(\moving_sum_reg[8]_0 [1]),
        .I3(\abcdefg[2]_INST_0_i_3_n_0 ),
        .I4(abcdefg_2_sn_1),
        .I5(moving_sum[6]),
        .O(\abcdefg[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFB0FFFFB0B0B0B0)) 
    \abcdefg[2]_INST_0_i_2 
       (.I0(\moving_sum_reg[0]_0 [1]),
        .I1(\moving_sum_reg[8]_0 [0]),
        .I2(abcdefg_1_sn_1),
        .I3(moving_sum[4]),
        .I4(moving_sum[5]),
        .I5(\abcdefg[6]_INST_0_i_10_n_0 ),
        .O(\abcdefg[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \abcdefg[2]_INST_0_i_3 
       (.I0(moving_sum[4]),
        .I1(moving_sum[5]),
        .O(\abcdefg[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \abcdefg[3]_INST_0 
       (.I0(\abcdefg[3]_INST_0_i_1_n_0 ),
        .I1(\abcdefg[3]_INST_0_i_2_n_0 ),
        .I2(\abcdefg[3]_INST_0_i_3_n_0 ),
        .I3(\abcdefg[3]_INST_0_i_4_n_0 ),
        .I4(\abcdefg[3]_INST_0_i_5_n_0 ),
        .I5(\abcdefg[3]_INST_0_i_6_n_0 ),
        .O(abcdefg[3]));
  LUT6 #(
    .INIT(64'hAAAABAAABAAAAABA)) 
    \abcdefg[3]_INST_0_i_1 
       (.I0(\abcdefg[0]_INST_0_i_4_n_0 ),
        .I1(abcdefg_2_sn_1),
        .I2(\abcdefg[5]_INST_0_i_5_n_0 ),
        .I3(\moving_sum_reg[0]_0 [0]),
        .I4(\moving_sum_reg[0]_0 [1]),
        .I5(\moving_sum_reg[8]_0 [0]),
        .O(\abcdefg[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \abcdefg[3]_INST_0_i_10 
       (.I0(Q),
        .I1(\moving_sum_reg[8]_0 [3]),
        .I2(O[0]),
        .I3(\moving_sum_reg[8]_0 [2]),
        .I4(abcdefg_2_sn_1),
        .I5(velocity1),
        .O(\abcdefg[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \abcdefg[3]_INST_0_i_2 
       (.I0(Q),
        .I1(moving_sum[8]),
        .I2(moving_sum[9]),
        .I3(moving_sum[7]),
        .I4(velocity1),
        .I5(abcdefg_2_sn_1),
        .O(\abcdefg[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000110)) 
    \abcdefg[3]_INST_0_i_3 
       (.I0(Q),
        .I1(moving_sum[3]),
        .I2(moving_sum[4]),
        .I3(moving_sum[6]),
        .I4(velocity1),
        .I5(abcdefg_2_sn_1),
        .O(\abcdefg[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFB0FFFFB0B0B0B0)) 
    \abcdefg[3]_INST_0_i_4 
       (.I0(moving_sum[8]),
        .I1(moving_sum[9]),
        .I2(\abcdefg[3]_INST_0_i_7_n_0 ),
        .I3(\moving_sum_reg[8]_0 [3]),
        .I4(O[0]),
        .I5(\abcdefg[1]_INST_0_i_3_n_0 ),
        .O(\abcdefg[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h606060606060FF60)) 
    \abcdefg[3]_INST_0_i_5 
       (.I0(moving_sum[5]),
        .I1(\abcdefg[3]_INST_0_i_8_n_0 ),
        .I2(\abcdefg[5]_INST_0_i_6_n_0 ),
        .I3(\abcdefg[5]_INST_0_i_8_n_0 ),
        .I4(abcdefg_3_sn_1),
        .I5(\moving_sum_reg[0]_0 [1]),
        .O(\abcdefg[3]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFAAAAAAAAAAAA)) 
    \abcdefg[3]_INST_0_i_6 
       (.I0(\abcdefg[3]_INST_0_i_10_n_0 ),
        .I1(\moving_sum_reg[8]_0 [0]),
        .I2(\moving_sum_reg[8]_0 [1]),
        .I3(\moving_sum_reg[0]_0 [0]),
        .I4(\abcdefg[5]_INST_0_i_8_n_0 ),
        .I5(\moving_sum_reg[0]_0 [1]),
        .O(\abcdefg[3]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \abcdefg[3]_INST_0_i_7 
       (.I0(velocity1),
        .I1(abcdefg_2_sn_1),
        .I2(Q),
        .I3(moving_sum[7]),
        .O(\abcdefg[3]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \abcdefg[3]_INST_0_i_8 
       (.I0(moving_sum[3]),
        .I1(moving_sum[4]),
        .O(\abcdefg[3]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFAFFFA)) 
    \abcdefg[4]_INST_0 
       (.I0(\abcdefg[4]_INST_0_i_1_n_0 ),
        .I1(abcdefg_4_sn_1),
        .I2(\abcdefg[4]_INST_0_i_3_n_0 ),
        .I3(\abcdefg[4]_INST_0_i_4_n_0 ),
        .I4(\moving_sum_reg[8]_0 [2]),
        .I5(\abcdefg[4]_0 ),
        .O(abcdefg[4]));
  LUT6 #(
    .INIT(64'hF2F2FFF2FFF2F2F2)) 
    \abcdefg[4]_INST_0_i_1 
       (.I0(\abcdefg[4]_INST_0_i_6_n_0 ),
        .I1(\moving_sum_reg[0]_0 [1]),
        .I2(\abcdefg[5]_INST_0_i_7_n_0 ),
        .I3(\abcdefg[5]_INST_0_i_6_n_0 ),
        .I4(moving_sum[5]),
        .I5(moving_sum[6]),
        .O(\abcdefg[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000005D00000008)) 
    \abcdefg[4]_INST_0_i_3 
       (.I0(Q),
        .I1(\moving_sum_reg[8]_0 [0]),
        .I2(\moving_sum_reg[8]_0 [1]),
        .I3(abcdefg_2_sn_1),
        .I4(velocity1),
        .I5(\abcdefg[4]_INST_0_i_7_n_0 ),
        .O(\abcdefg[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4040FF404040)) 
    \abcdefg[4]_INST_0_i_4 
       (.I0(\moving_sum_reg[8]_0 [0]),
        .I1(\abcdefg[4]_1 ),
        .I2(\abcdefg[5]_INST_0_i_8_n_0 ),
        .I3(\abcdefg[4]_INST_0_i_8_n_0 ),
        .I4(\abcdefg[4]_2 ),
        .I5(moving_sum[7]),
        .O(\abcdefg[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \abcdefg[4]_INST_0_i_6 
       (.I0(abcdefg_2_sn_1),
        .I1(Q),
        .I2(velocity1),
        .I3(\moving_sum_reg[0]_0 [0]),
        .O(\abcdefg[4]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \abcdefg[4]_INST_0_i_7 
       (.I0(moving_sum[5]),
        .I1(moving_sum[4]),
        .I2(moving_sum[3]),
        .O(\abcdefg[4]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \abcdefg[4]_INST_0_i_8 
       (.I0(moving_sum[9]),
        .I1(moving_sum[8]),
        .O(\abcdefg[4]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \abcdefg[5]_INST_0 
       (.I0(\abcdefg[5]_INST_0_i_1_n_0 ),
        .I1(\abcdefg[5]_INST_0_i_2_n_0 ),
        .I2(\abcdefg[5]_INST_0_i_3_n_0 ),
        .I3(\abcdefg[5]_INST_0_i_4_n_0 ),
        .O(abcdefg[5]));
  LUT6 #(
    .INIT(64'h00600000006000F0)) 
    \abcdefg[5]_INST_0_i_1 
       (.I0(\moving_sum_reg[8]_0 [1]),
        .I1(\moving_sum_reg[0]_0 [1]),
        .I2(\abcdefg[5]_INST_0_i_5_n_0 ),
        .I3(abcdefg_2_sn_1),
        .I4(\moving_sum_reg[0]_0 [0]),
        .I5(\moving_sum_reg[8]_0 [0]),
        .O(\abcdefg[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10D0D030)) 
    \abcdefg[5]_INST_0_i_2 
       (.I0(moving_sum[5]),
        .I1(moving_sum[3]),
        .I2(\abcdefg[5]_INST_0_i_6_n_0 ),
        .I3(moving_sum[4]),
        .I4(moving_sum[6]),
        .I5(\abcdefg[5]_INST_0_i_7_n_0 ),
        .O(\abcdefg[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h909090909090FF90)) 
    \abcdefg[5]_INST_0_i_3 
       (.I0(moving_sum[8]),
        .I1(moving_sum[7]),
        .I2(\abcdefg[4]_2 ),
        .I3(\abcdefg[5]_INST_0_i_8_n_0 ),
        .I4(\abcdefg[4]_1 ),
        .I5(\moving_sum_reg[0]_0 [1]),
        .O(\abcdefg[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB1B1BBB00000000)) 
    \abcdefg[5]_INST_0_i_4 
       (.I0(Q),
        .I1(moving_sum[9]),
        .I2(O[0]),
        .I3(\moving_sum_reg[8]_0 [3]),
        .I4(\moving_sum_reg[8]_0 [2]),
        .I5(abcdefg_2_sn_1),
        .O(\abcdefg[5]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \abcdefg[5]_INST_0_i_5 
       (.I0(Q),
        .I1(velocity1),
        .O(\abcdefg[5]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \abcdefg[5]_INST_0_i_6 
       (.I0(Q),
        .I1(abcdefg_2_sn_1),
        .I2(velocity1),
        .O(\abcdefg[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF001F001F001F00B)) 
    \abcdefg[5]_INST_0_i_7 
       (.I0(Q),
        .I1(\abcdefg[2]_INST_0_i_3_n_0 ),
        .I2(velocity1),
        .I3(abcdefg_2_sn_1),
        .I4(\moving_sum_reg[8]_0 [0]),
        .I5(\moving_sum_reg[0]_0 [1]),
        .O(\abcdefg[5]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \abcdefg[5]_INST_0_i_8 
       (.I0(velocity1),
        .I1(Q),
        .I2(abcdefg_2_sn_1),
        .O(\abcdefg[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFCFCFC)) 
    \abcdefg[6]_INST_0 
       (.I0(Q),
        .I1(\abcdefg[6]_INST_0_i_1_n_0 ),
        .I2(\abcdefg[6]_INST_0_i_2_n_0 ),
        .I3(\moving_sum_reg[8]_0 [3]),
        .I4(abcdefg_2_sn_1),
        .I5(\abcdefg[6]_INST_0_i_3_n_0 ),
        .O(abcdefg[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8200)) 
    \abcdefg[6]_INST_0_i_1 
       (.I0(Q),
        .I1(O[0]),
        .I2(\moving_sum_reg[8]_0 [2]),
        .I3(abcdefg_2_sn_1),
        .I4(\abcdefg[6]_INST_0_i_4_n_0 ),
        .I5(\abcdefg[6]_INST_0_i_5_n_0 ),
        .O(\abcdefg[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \abcdefg[6]_INST_0_i_10 
       (.I0(Q),
        .I1(abcdefg_2_sn_1),
        .I2(moving_sum[3]),
        .O(\abcdefg[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAEEAAEEAAAEAEAEA)) 
    \abcdefg[6]_INST_0_i_2 
       (.I0(\abcdefg[6]_INST_0_i_6_n_0 ),
        .I1(\abcdefg[6]_INST_0_i_7_n_0 ),
        .I2(\moving_sum_reg[8]_0 [1]),
        .I3(\moving_sum_reg[0]_0 [0]),
        .I4(\moving_sum_reg[0]_0 [1]),
        .I5(\moving_sum_reg[8]_0 [0]),
        .O(\abcdefg[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF888F888)) 
    \abcdefg[6]_INST_0_i_3 
       (.I0(\abcdefg[4]_2 ),
        .I1(moving_sum[8]),
        .I2(\abcdefg[6]_INST_0_i_9_n_0 ),
        .I3(\abcdefg[6]_INST_0_i_10_n_0 ),
        .I4(\moving_sum_reg[8]_0 [0]),
        .I5(abcdefg_1_sn_1),
        .O(\abcdefg[6]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h08080008)) 
    \abcdefg[6]_INST_0_i_4 
       (.I0(\moving_sum_reg[0]_0 [1]),
        .I1(Q),
        .I2(abcdefg_2_sn_1),
        .I3(\moving_sum_reg[8]_0 [1]),
        .I4(\moving_sum_reg[8]_0 [0]),
        .O(\abcdefg[6]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCDCDCCCDCCCCCDCC)) 
    \abcdefg[6]_INST_0_i_5 
       (.I0(Q),
        .I1(velocity1),
        .I2(abcdefg_2_sn_1),
        .I3(moving_sum[6]),
        .I4(moving_sum[5]),
        .I5(moving_sum[4]),
        .O(\abcdefg[6]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4141005541410000)) 
    \abcdefg[6]_INST_0_i_6 
       (.I0(Q),
        .I1(moving_sum[9]),
        .I2(moving_sum[7]),
        .I3(\abcdefg[6]_INST_0_i_9_n_0 ),
        .I4(abcdefg_2_sn_1),
        .I5(moving_sum[3]),
        .O(\abcdefg[6]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \abcdefg[6]_INST_0_i_7 
       (.I0(Q),
        .I1(abcdefg_2_sn_1),
        .O(\abcdefg[6]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \abcdefg[6]_INST_0_i_9 
       (.I0(moving_sum[6]),
        .I1(moving_sum[5]),
        .O(\abcdefg[6]_INST_0_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAA2A0000)) 
    i__carry__0_i_1
       (.I0(pos_count[5]),
        .I1(pos_count[1]),
        .I2(pos_count[0]),
        .I3(i__carry__0_i_8_n_0),
        .I4(\moving_sum[11]_i_2_n_0 ),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hF7)) 
    i__carry__0_i_10
       (.I0(pos_count[1]),
        .I1(pos_count[0]),
        .I2(i__carry__0_i_8_n_0),
        .O(i__carry__0_i_10_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    i__carry__0_i_11
       (.I0(pos_count[2]),
        .I1(pos_count[3]),
        .I2(pos_count[4]),
        .I3(pos_count[7]),
        .I4(i__carry__0_i_13_n_0),
        .O(i__carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    i__carry__0_i_12
       (.I0(pos_count[3]),
        .I1(pos_count[2]),
        .I2(i__carry__0_i_9_n_0),
        .O(i__carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry__0_i_13
       (.I0(pos_count[5]),
        .I1(pos_count[1]),
        .I2(pos_count[0]),
        .O(i__carry__0_i_13_n_0));
  LUT5 #(
    .INIT(32'hAA2A0000)) 
    i__carry__0_i_2
       (.I0(pos_count[4]),
        .I1(pos_count[3]),
        .I2(pos_count[2]),
        .I3(i__carry__0_i_9_n_0),
        .I4(\moving_sum[11]_i_2_n_0 ),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h8A00)) 
    i__carry__0_i_3
       (.I0(pos_count[3]),
        .I1(i__carry_i_9_n_0),
        .I2(pos_count[2]),
        .I3(\moving_sum[11]_i_2_n_0 ),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hD7)) 
    i__carry__0_i_4
       (.I0(\moving_sum[11]_i_2_n_0 ),
        .I1(pos_count[7]),
        .I2(pos_count[6]),
        .O(i__carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h7877FFFF)) 
    i__carry__0_i_5
       (.I0(i__carry__0_i_10_n_0),
        .I1(pos_count[5]),
        .I2(i__carry__0_i_11_n_0),
        .I3(pos_count[6]),
        .I4(\moving_sum[11]_i_2_n_0 ),
        .O(i__carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h8777FFFF)) 
    i__carry__0_i_6
       (.I0(i__carry__0_i_12_n_0),
        .I1(pos_count[4]),
        .I2(pos_count[5]),
        .I3(i__carry__0_i_10_n_0),
        .I4(\moving_sum[11]_i_2_n_0 ),
        .O(i__carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h9F)) 
    i__carry__0_i_7
       (.I0(pos_count[4]),
        .I1(pos_count[3]),
        .I2(\moving_sum[11]_i_2_n_0 ),
        .O(i__carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__carry__0_i_8
       (.I0(pos_count[2]),
        .I1(pos_count[6]),
        .I2(pos_count[7]),
        .I3(pos_count[4]),
        .I4(pos_count[3]),
        .O(i__carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    i__carry__0_i_9
       (.I0(pos_count[0]),
        .I1(pos_count[1]),
        .I2(pos_count[5]),
        .I3(pos_count[7]),
        .I4(pos_count[6]),
        .O(i__carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h8A00)) 
    i__carry_i_1
       (.I0(pos_count[2]),
        .I1(i__carry_i_9_n_0),
        .I2(pos_count[3]),
        .I3(\moving_sum[11]_i_2_n_0 ),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    i__carry_i_10
       (.I0(pos_count[3]),
        .I1(pos_count[4]),
        .I2(pos_count[7]),
        .I3(pos_count[6]),
        .I4(pos_count[2]),
        .I5(pos_count[5]),
        .O(i__carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    i__carry_i_11
       (.I0(i__carry_i_9_n_0),
        .I1(pos_count[3]),
        .O(i__carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h8A00)) 
    i__carry_i_2
       (.I0(pos_count[1]),
        .I1(i__carry_i_10_n_0),
        .I2(pos_count[0]),
        .I3(\moving_sum[11]_i_2_n_0 ),
        .O(i__carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFD000)) 
    i__carry_i_3
       (.I0(pos_count[1]),
        .I1(i__carry_i_10_n_0),
        .I2(pos_count[0]),
        .I3(\moving_sum[11]_i_2_n_0 ),
        .I4(pos_inc),
        .O(i__carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hD0002FFF)) 
    i__carry_i_4
       (.I0(pos_count[1]),
        .I1(i__carry_i_10_n_0),
        .I2(pos_count[0]),
        .I3(\moving_sum[11]_i_2_n_0 ),
        .I4(pos_inc),
        .O(i__carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h9F)) 
    i__carry_i_5
       (.I0(pos_count[3]),
        .I1(pos_count[2]),
        .I2(\moving_sum[11]_i_2_n_0 ),
        .O(i__carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hD02F2F2FFFFFFFFF)) 
    i__carry_i_6
       (.I0(pos_count[0]),
        .I1(i__carry_i_10_n_0),
        .I2(pos_count[1]),
        .I3(pos_count[2]),
        .I4(i__carry_i_11_n_0),
        .I5(\moving_sum[11]_i_2_n_0 ),
        .O(i__carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hC9495555)) 
    i__carry_i_7
       (.I0(pos_inc),
        .I1(pos_count[1]),
        .I2(pos_count[0]),
        .I3(i__carry_i_10_n_0),
        .I4(\moving_sum[11]_i_2_n_0 ),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hD02F00FF2FD0FF00)) 
    i__carry_i_8
       (.I0(pos_count[1]),
        .I1(i__carry_i_10_n_0),
        .I2(pos_count[0]),
        .I3(pos_inc),
        .I4(\moving_sum[11]_i_2_n_0 ),
        .I5(pos_dec),
        .O(i__carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    i__carry_i_9
       (.I0(pos_count[6]),
        .I1(pos_count[7]),
        .I2(pos_count[5]),
        .I3(pos_count[1]),
        .I4(pos_count[0]),
        .I5(pos_count[4]),
        .O(i__carry_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \moving_sum[11]_i_1 
       (.I0(\moving_sum[11]_i_2_n_0 ),
        .O(ten_ms_pulse));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \moving_sum[11]_i_2 
       (.I0(\moving_sum[11]_i_3_n_0 ),
        .I1(\moving_sum[11]_i_4_n_0 ),
        .I2(rcount_reg[0]),
        .I3(rcount_reg[18]),
        .I4(rcount_reg[19]),
        .I5(\moving_sum[11]_i_5_n_0 ),
        .O(\moving_sum[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \moving_sum[11]_i_3 
       (.I0(rcount_reg[2]),
        .I1(rcount_reg[1]),
        .I2(rcount_reg[4]),
        .I3(rcount_reg[3]),
        .O(\moving_sum[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \moving_sum[11]_i_4 
       (.I0(rcount_reg[14]),
        .I1(rcount_reg[9]),
        .I2(rcount_reg[17]),
        .I3(rcount_reg[16]),
        .O(\moving_sum[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \moving_sum[11]_i_5 
       (.I0(\rcount[0]_i_8_n_0 ),
        .I1(rcount_reg[5]),
        .O(\moving_sum[11]_i_5_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 moving_sum_next_carry
       (.CI(1'b0),
        .CO({moving_sum_next_carry_n_0,moving_sum_next_carry_n_1,moving_sum_next_carry_n_2,moving_sum_next_carry_n_3}),
        .CYINIT(1'b0),
        .DI({moving_sum_next_carry_i_1_n_0,moving_sum_next_carry_i_2_n_0,moving_sum_next_carry_i_3_n_0,moving_sum_next_carry_i_4_n_0}),
        .O({moving_sum_next_carry_n_4,moving_sum_next_carry_n_5,moving_sum_next_carry_n_6,moving_sum_next_carry_n_7}),
        .S({moving_sum_next_carry_i_5_n_0,moving_sum_next_carry_i_6_n_0,moving_sum_next_carry_i_7_n_0,moving_sum_next_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 moving_sum_next_carry__0
       (.CI(moving_sum_next_carry_n_0),
        .CO({moving_sum_next_carry__0_n_0,moving_sum_next_carry__0_n_1,moving_sum_next_carry__0_n_2,moving_sum_next_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({moving_sum_next_carry__0_i_1_n_0,moving_sum_next_carry__0_i_2_n_0,moving_sum_next_carry__0_i_3_n_0,moving_sum_next_carry__0_i_4_n_0}),
        .O({moving_sum_next_carry__0_n_4,moving_sum_next_carry__0_n_5,moving_sum_next_carry__0_n_6,moving_sum_next_carry__0_n_7}),
        .S({moving_sum_next_carry__0_i_5_n_0,moving_sum_next_carry__0_i_6_n_0,moving_sum_next_carry__0_i_7_n_0,moving_sum_next_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    moving_sum_next_carry__0_i_1
       (.I0(moving_sum[6]),
        .I1(\pos_shift_reg[9] [6]),
        .I2(pos_count[6]),
        .O(moving_sum_next_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    moving_sum_next_carry__0_i_2
       (.I0(moving_sum[5]),
        .I1(\pos_shift_reg[9] [5]),
        .I2(pos_count[5]),
        .O(moving_sum_next_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    moving_sum_next_carry__0_i_3
       (.I0(moving_sum[4]),
        .I1(\pos_shift_reg[9] [4]),
        .I2(pos_count[4]),
        .O(moving_sum_next_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    moving_sum_next_carry__0_i_4
       (.I0(moving_sum[3]),
        .I1(\pos_shift_reg[9] [3]),
        .I2(pos_count[3]),
        .O(moving_sum_next_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    moving_sum_next_carry__0_i_5
       (.I0(pos_count[6]),
        .I1(\pos_shift_reg[9] [6]),
        .I2(moving_sum[6]),
        .I3(\pos_shift_reg[9] [7]),
        .I4(pos_count[7]),
        .I5(moving_sum[7]),
        .O(moving_sum_next_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    moving_sum_next_carry__0_i_6
       (.I0(pos_count[5]),
        .I1(\pos_shift_reg[9] [5]),
        .I2(moving_sum[5]),
        .I3(\pos_shift_reg[9] [6]),
        .I4(pos_count[6]),
        .I5(moving_sum[6]),
        .O(moving_sum_next_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    moving_sum_next_carry__0_i_7
       (.I0(pos_count[4]),
        .I1(\pos_shift_reg[9] [4]),
        .I2(moving_sum[4]),
        .I3(\pos_shift_reg[9] [5]),
        .I4(pos_count[5]),
        .I5(moving_sum[5]),
        .O(moving_sum_next_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    moving_sum_next_carry__0_i_8
       (.I0(pos_count[3]),
        .I1(\pos_shift_reg[9] [3]),
        .I2(moving_sum[3]),
        .I3(\pos_shift_reg[9] [4]),
        .I4(pos_count[4]),
        .I5(moving_sum[4]),
        .O(moving_sum_next_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 moving_sum_next_carry__1
       (.CI(moving_sum_next_carry__0_n_0),
        .CO({NLW_moving_sum_next_carry__1_CO_UNCONNECTED[3],moving_sum_next_carry__1_n_1,moving_sum_next_carry__1_n_2,moving_sum_next_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,moving_sum[9:8],moving_sum_next_carry__1_i_1_n_0}),
        .O({moving_sum_next_carry__1_n_4,moving_sum_next_carry__1_n_5,moving_sum_next_carry__1_n_6,moving_sum_next_carry__1_n_7}),
        .S({moving_sum_next_carry__1_i_2_n_0,moving_sum_next_carry__1_i_3_n_0,moving_sum_next_carry__1_i_4_n_0,moving_sum_next_carry__1_i_5_n_0}));
  LUT3 #(
    .INIT(8'hB2)) 
    moving_sum_next_carry__1_i_1
       (.I0(moving_sum[7]),
        .I1(pos_count[7]),
        .I2(\pos_shift_reg[9] [7]),
        .O(moving_sum_next_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    moving_sum_next_carry__1_i_2
       (.I0(moving_sum[10]),
        .I1(Q),
        .O(moving_sum_next_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    moving_sum_next_carry__1_i_3
       (.I0(moving_sum[9]),
        .I1(moving_sum[10]),
        .O(moving_sum_next_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    moving_sum_next_carry__1_i_4
       (.I0(moving_sum[8]),
        .I1(moving_sum[9]),
        .O(moving_sum_next_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'hB24D)) 
    moving_sum_next_carry__1_i_5
       (.I0(\pos_shift_reg[9] [7]),
        .I1(pos_count[7]),
        .I2(moving_sum[7]),
        .I3(moving_sum[8]),
        .O(moving_sum_next_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    moving_sum_next_carry_i_1
       (.I0(moving_sum[2]),
        .I1(\pos_shift_reg[9] [2]),
        .I2(pos_count[2]),
        .O(moving_sum_next_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    moving_sum_next_carry_i_2
       (.I0(moving_sum[1]),
        .I1(\pos_shift_reg[9] [1]),
        .I2(pos_count[1]),
        .O(moving_sum_next_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    moving_sum_next_carry_i_3
       (.I0(pos_count[0]),
        .I1(moving_sum[0]),
        .O(moving_sum_next_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    moving_sum_next_carry_i_4
       (.I0(pos_count[0]),
        .I1(moving_sum[0]),
        .O(moving_sum_next_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    moving_sum_next_carry_i_5
       (.I0(pos_count[2]),
        .I1(\pos_shift_reg[9] [2]),
        .I2(moving_sum[2]),
        .I3(\pos_shift_reg[9] [3]),
        .I4(pos_count[3]),
        .I5(moving_sum[3]),
        .O(moving_sum_next_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    moving_sum_next_carry_i_6
       (.I0(pos_count[1]),
        .I1(\pos_shift_reg[9] [1]),
        .I2(moving_sum[1]),
        .I3(\pos_shift_reg[9] [2]),
        .I4(pos_count[2]),
        .I5(moving_sum[2]),
        .O(moving_sum_next_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hE11E1EE1)) 
    moving_sum_next_carry_i_7
       (.I0(moving_sum[0]),
        .I1(pos_count[0]),
        .I2(\pos_shift_reg[9] [1]),
        .I3(pos_count[1]),
        .I4(moving_sum[1]),
        .O(moving_sum_next_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    moving_sum_next_carry_i_8
       (.I0(moving_sum[0]),
        .I1(pos_count[0]),
        .I2(\pos_shift_reg[9] [0]),
        .O(moving_sum_next_carry_i_8_n_0));
  FDCE \moving_sum_reg[0] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry_n_7),
        .Q(moving_sum[0]));
  FDCE \moving_sum_reg[10] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry__1_n_5),
        .Q(moving_sum[10]));
  FDCE \moving_sum_reg[11] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry__1_n_4),
        .Q(Q));
  FDCE \moving_sum_reg[1] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry_n_6),
        .Q(moving_sum[1]));
  FDCE \moving_sum_reg[2] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry_n_5),
        .Q(moving_sum[2]));
  FDCE \moving_sum_reg[3] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry_n_4),
        .Q(moving_sum[3]));
  FDCE \moving_sum_reg[4] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry__0_n_7),
        .Q(moving_sum[4]));
  FDCE \moving_sum_reg[5] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry__0_n_6),
        .Q(moving_sum[5]));
  FDCE \moving_sum_reg[6] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry__0_n_5),
        .Q(moving_sum[6]));
  FDCE \moving_sum_reg[7] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry__0_n_4),
        .Q(moving_sum[7]));
  FDCE \moving_sum_reg[8] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry__1_n_7),
        .Q(moving_sum[8]));
  FDCE \moving_sum_reg[9] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(moving_sum_next_carry__1_n_6),
        .Q(moving_sum[9]));
  FDCE \pos_count_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\_inferred__0/i__carry_n_7 ),
        .Q(pos_count[0]));
  FDCE \pos_count_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\_inferred__0/i__carry_n_6 ),
        .Q(pos_count[1]));
  FDCE \pos_count_reg[2] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\_inferred__0/i__carry_n_5 ),
        .Q(pos_count[2]));
  FDCE \pos_count_reg[3] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\_inferred__0/i__carry_n_4 ),
        .Q(pos_count[3]));
  FDCE \pos_count_reg[4] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\_inferred__0/i__carry__0_n_7 ),
        .Q(pos_count[4]));
  FDCE \pos_count_reg[5] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\_inferred__0/i__carry__0_n_6 ),
        .Q(pos_count[5]));
  FDCE \pos_count_reg[6] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\_inferred__0/i__carry__0_n_5 ),
        .Q(pos_count[6]));
  FDCE \pos_count_reg[7] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\_inferred__0/i__carry__0_n_4 ),
        .Q(pos_count[7]));
  (* srl_bus_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] " *) 
  (* srl_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 " *) 
  SRL16E \pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ten_ms_pulse),
        .CLK(mclk),
        .D(pos_count[0]),
        .Q(\pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ));
  (* srl_bus_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] " *) 
  (* srl_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 " *) 
  SRL16E \pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ten_ms_pulse),
        .CLK(mclk),
        .D(pos_count[1]),
        .Q(\pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ));
  (* srl_bus_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] " *) 
  (* srl_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 " *) 
  SRL16E \pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ten_ms_pulse),
        .CLK(mclk),
        .D(pos_count[2]),
        .Q(\pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ));
  (* srl_bus_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] " *) 
  (* srl_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 " *) 
  SRL16E \pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ten_ms_pulse),
        .CLK(mclk),
        .D(pos_count[3]),
        .Q(\pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ));
  (* srl_bus_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] " *) 
  (* srl_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 " *) 
  SRL16E \pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ten_ms_pulse),
        .CLK(mclk),
        .D(pos_count[4]),
        .Q(\pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ));
  (* srl_bus_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] " *) 
  (* srl_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 " *) 
  SRL16E \pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ten_ms_pulse),
        .CLK(mclk),
        .D(pos_count[5]),
        .Q(\pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ));
  (* srl_bus_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] " *) 
  (* srl_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 " *) 
  SRL16E \pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ten_ms_pulse),
        .CLK(mclk),
        .D(pos_count[6]),
        .Q(\pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ));
  (* srl_bus_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7] " *) 
  (* srl_name = "\U0/q_struct_0/VELOCITY_READER_0/pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 " *) 
  SRL16E \pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(ten_ms_pulse),
        .CLK(mclk),
        .D(pos_count[7]),
        .Q(\pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ));
  FDRE \pos_shift_reg[8][0]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .D(\pos_shift_reg[7][0]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ),
        .Q(\pos_shift_reg[8][0]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .R(1'b0));
  FDRE \pos_shift_reg[8][1]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .D(\pos_shift_reg[7][1]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ),
        .Q(\pos_shift_reg[8][1]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .R(1'b0));
  FDRE \pos_shift_reg[8][2]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .D(\pos_shift_reg[7][2]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ),
        .Q(\pos_shift_reg[8][2]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .R(1'b0));
  FDRE \pos_shift_reg[8][3]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .D(\pos_shift_reg[7][3]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ),
        .Q(\pos_shift_reg[8][3]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .R(1'b0));
  FDRE \pos_shift_reg[8][4]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .D(\pos_shift_reg[7][4]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ),
        .Q(\pos_shift_reg[8][4]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .R(1'b0));
  FDRE \pos_shift_reg[8][5]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .D(\pos_shift_reg[7][5]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ),
        .Q(\pos_shift_reg[8][5]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .R(1'b0));
  FDRE \pos_shift_reg[8][6]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .D(\pos_shift_reg[7][6]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ),
        .Q(\pos_shift_reg[8][6]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .R(1'b0));
  FDRE \pos_shift_reg[8][7]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .D(\pos_shift_reg[7][7]_srl8_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_6_n_0 ),
        .Q(\pos_shift_reg[8][7]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .R(1'b0));
  FDCE \pos_shift_reg[9][0] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_gate__6_n_0),
        .Q(\pos_shift_reg[9] [0]));
  FDCE \pos_shift_reg[9][1] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_gate__5_n_0),
        .Q(\pos_shift_reg[9] [1]));
  FDCE \pos_shift_reg[9][2] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_gate__4_n_0),
        .Q(\pos_shift_reg[9] [2]));
  FDCE \pos_shift_reg[9][3] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_gate__3_n_0),
        .Q(\pos_shift_reg[9] [3]));
  FDCE \pos_shift_reg[9][4] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_gate__2_n_0),
        .Q(\pos_shift_reg[9] [4]));
  FDCE \pos_shift_reg[9][5] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_gate__1_n_0),
        .Q(\pos_shift_reg[9] [5]));
  FDCE \pos_shift_reg[9][6] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_gate__0_n_0),
        .Q(\pos_shift_reg[9] [6]));
  FDCE \pos_shift_reg[9][7] 
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_gate_n_0),
        .Q(\pos_shift_reg[9] [7]));
  FDCE pos_shift_reg_c
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(1'b1),
        .Q(pos_shift_reg_c_n_0));
  FDCE pos_shift_reg_c_0
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_c_n_0),
        .Q(pos_shift_reg_c_0_n_0));
  FDCE pos_shift_reg_c_1
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_c_0_n_0),
        .Q(pos_shift_reg_c_1_n_0));
  FDCE pos_shift_reg_c_2
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_c_1_n_0),
        .Q(pos_shift_reg_c_2_n_0));
  FDCE pos_shift_reg_c_3
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_c_2_n_0),
        .Q(pos_shift_reg_c_3_n_0));
  FDCE pos_shift_reg_c_4
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_c_3_n_0),
        .Q(pos_shift_reg_c_4_n_0));
  FDCE pos_shift_reg_c_5
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_c_4_n_0),
        .Q(pos_shift_reg_c_5_n_0));
  FDCE pos_shift_reg_c_6
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_c_5_n_0),
        .Q(pos_shift_reg_c_6_n_0));
  FDCE pos_shift_reg_c_7
       (.C(mclk),
        .CE(ten_ms_pulse),
        .CLR(reset),
        .D(pos_shift_reg_c_6_n_0),
        .Q(pos_shift_reg_c_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pos_shift_reg_gate
       (.I0(\pos_shift_reg[8][7]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .I1(pos_shift_reg_c_7_n_0),
        .O(pos_shift_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pos_shift_reg_gate__0
       (.I0(\pos_shift_reg[8][6]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .I1(pos_shift_reg_c_7_n_0),
        .O(pos_shift_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pos_shift_reg_gate__1
       (.I0(\pos_shift_reg[8][5]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .I1(pos_shift_reg_c_7_n_0),
        .O(pos_shift_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pos_shift_reg_gate__2
       (.I0(\pos_shift_reg[8][4]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .I1(pos_shift_reg_c_7_n_0),
        .O(pos_shift_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pos_shift_reg_gate__3
       (.I0(\pos_shift_reg[8][3]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .I1(pos_shift_reg_c_7_n_0),
        .O(pos_shift_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pos_shift_reg_gate__4
       (.I0(\pos_shift_reg[8][2]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .I1(pos_shift_reg_c_7_n_0),
        .O(pos_shift_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pos_shift_reg_gate__5
       (.I0(\pos_shift_reg[8][1]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .I1(pos_shift_reg_c_7_n_0),
        .O(pos_shift_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pos_shift_reg_gate__6
       (.I0(\pos_shift_reg[8][0]_U0_q_struct_0_VELOCITY_READER_0_pos_shift_reg_c_7_n_0 ),
        .I1(pos_shift_reg_c_7_n_0),
        .O(pos_shift_reg_gate__6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00007FFF)) 
    \rcount[0]_i_10 
       (.I0(rcount_reg[3]),
        .I1(rcount_reg[4]),
        .I2(rcount_reg[0]),
        .I3(rcount_reg[5]),
        .I4(\rcount[0]_i_8_n_0 ),
        .I5(\rcount[0]_i_11_n_0 ),
        .O(\rcount[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hABABABFF)) 
    \rcount[0]_i_11 
       (.I0(\rcount[12]_i_6_n_0 ),
        .I1(rcount_reg[14]),
        .I2(rcount_reg[15]),
        .I3(\rcount[12]_i_7_n_0 ),
        .I4(rcount_reg[9]),
        .O(\rcount[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \rcount[0]_i_12 
       (.I0(rcount_reg[3]),
        .I1(rcount_reg[4]),
        .I2(rcount_reg[1]),
        .I3(rcount_reg[2]),
        .I4(\rcount[0]_i_8_n_0 ),
        .O(\rcount[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hAB00)) 
    \rcount[0]_i_2 
       (.I0(\rcount[0]_i_7_n_0 ),
        .I1(\rcount[0]_i_8_n_0 ),
        .I2(rcount_reg[5]),
        .I3(rcount_reg[0]),
        .O(\rcount[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA0B0)) 
    \rcount[0]_i_3 
       (.I0(\rcount[0]_i_9_n_0 ),
        .I1(\rcount[0]_i_8_n_0 ),
        .I2(rcount_reg[3]),
        .I3(rcount_reg[4]),
        .O(\rcount[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF010)) 
    \rcount[0]_i_4 
       (.I0(\rcount[0]_i_8_n_0 ),
        .I1(rcount_reg[1]),
        .I2(rcount_reg[2]),
        .I3(\rcount[0]_i_10_n_0 ),
        .O(\rcount[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF010)) 
    \rcount[0]_i_5 
       (.I0(\rcount[0]_i_8_n_0 ),
        .I1(rcount_reg[2]),
        .I2(rcount_reg[1]),
        .I3(\rcount[0]_i_10_n_0 ),
        .O(\rcount[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h00EF)) 
    \rcount[0]_i_6 
       (.I0(\rcount[0]_i_11_n_0 ),
        .I1(\rcount[0]_i_12_n_0 ),
        .I2(\rcount[0]_i_8_n_0 ),
        .I3(rcount_reg[0]),
        .O(\rcount[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF15555555)) 
    \rcount[0]_i_7 
       (.I0(\rcount[0]_i_8_n_0 ),
        .I1(rcount_reg[2]),
        .I2(rcount_reg[1]),
        .I3(rcount_reg[4]),
        .I4(rcount_reg[3]),
        .I5(\rcount[0]_i_11_n_0 ),
        .O(\rcount[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rcount[0]_i_8 
       (.I0(rcount_reg[6]),
        .I1(rcount_reg[7]),
        .I2(rcount_reg[8]),
        .I3(\rcount[12]_i_7_n_0 ),
        .O(\rcount[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00007FFF)) 
    \rcount[0]_i_9 
       (.I0(rcount_reg[1]),
        .I1(rcount_reg[2]),
        .I2(rcount_reg[0]),
        .I3(rcount_reg[5]),
        .I4(\rcount[0]_i_8_n_0 ),
        .I5(\rcount[0]_i_11_n_0 ),
        .O(\rcount[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \rcount[12]_i_2 
       (.I0(rcount_reg[18]),
        .I1(rcount_reg[19]),
        .I2(rcount_reg[16]),
        .I3(rcount_reg[17]),
        .I4(rcount_reg[15]),
        .O(\rcount[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00AB00)) 
    \rcount[12]_i_3 
       (.I0(\rcount[12]_i_6_n_0 ),
        .I1(rcount_reg[9]),
        .I2(\rcount[12]_i_7_n_0 ),
        .I3(rcount_reg[14]),
        .I4(\rcount[8]_i_7_n_0 ),
        .O(\rcount[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rcount[12]_i_4 
       (.I0(\rcount[8]_i_6_n_0 ),
        .I1(rcount_reg[13]),
        .O(\rcount[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rcount[12]_i_5 
       (.I0(\rcount[8]_i_6_n_0 ),
        .I1(rcount_reg[12]),
        .O(\rcount[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \rcount[12]_i_6 
       (.I0(rcount_reg[17]),
        .I1(rcount_reg[16]),
        .I2(rcount_reg[19]),
        .I3(rcount_reg[18]),
        .O(\rcount[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rcount[12]_i_7 
       (.I0(rcount_reg[10]),
        .I1(rcount_reg[13]),
        .I2(rcount_reg[15]),
        .I3(rcount_reg[12]),
        .I4(rcount_reg[11]),
        .O(\rcount[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    \rcount[16]_i_2 
       (.I0(\rcount[16]_i_6_n_0 ),
        .I1(rcount_reg[17]),
        .I2(rcount_reg[16]),
        .I3(rcount_reg[18]),
        .I4(rcount_reg[19]),
        .O(\rcount[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF0000)) 
    \rcount[16]_i_3 
       (.I0(\rcount[16]_i_6_n_0 ),
        .I1(rcount_reg[17]),
        .I2(rcount_reg[16]),
        .I3(rcount_reg[19]),
        .I4(rcount_reg[18]),
        .O(\rcount[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hC4CCCCCC)) 
    \rcount[16]_i_4 
       (.I0(rcount_reg[16]),
        .I1(rcount_reg[17]),
        .I2(\rcount[16]_i_6_n_0 ),
        .I3(rcount_reg[19]),
        .I4(rcount_reg[18]),
        .O(\rcount[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hC4CCCCCC)) 
    \rcount[16]_i_5 
       (.I0(rcount_reg[17]),
        .I1(rcount_reg[16]),
        .I2(\rcount[16]_i_6_n_0 ),
        .I3(rcount_reg[19]),
        .I4(rcount_reg[18]),
        .O(\rcount[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hABABABFF)) 
    \rcount[16]_i_6 
       (.I0(\rcount[8]_i_7_n_0 ),
        .I1(rcount_reg[14]),
        .I2(rcount_reg[15]),
        .I3(\rcount[12]_i_7_n_0 ),
        .I4(rcount_reg[9]),
        .O(\rcount[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rcount[4]_i_2 
       (.I0(\rcount[0]_i_11_n_0 ),
        .I1(rcount_reg[7]),
        .O(\rcount[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rcount[4]_i_3 
       (.I0(\rcount[0]_i_11_n_0 ),
        .I1(rcount_reg[6]),
        .O(\rcount[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF010)) 
    \rcount[4]_i_4 
       (.I0(\rcount[0]_i_8_n_0 ),
        .I1(rcount_reg[0]),
        .I2(rcount_reg[5]),
        .I3(\rcount[0]_i_7_n_0 ),
        .O(\rcount[4]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA0B0)) 
    \rcount[4]_i_5 
       (.I0(\rcount[0]_i_9_n_0 ),
        .I1(\rcount[0]_i_8_n_0 ),
        .I2(rcount_reg[4]),
        .I3(rcount_reg[3]),
        .O(\rcount[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rcount[8]_i_2 
       (.I0(\rcount[8]_i_6_n_0 ),
        .I1(rcount_reg[11]),
        .O(\rcount[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rcount[8]_i_3 
       (.I0(\rcount[8]_i_6_n_0 ),
        .I1(rcount_reg[10]),
        .O(\rcount[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    \rcount[8]_i_4 
       (.I0(\rcount[8]_i_7_n_0 ),
        .I1(rcount_reg[9]),
        .I2(\rcount[8]_i_6_n_0 ),
        .O(\rcount[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rcount[8]_i_5 
       (.I0(\rcount[0]_i_11_n_0 ),
        .I1(rcount_reg[8]),
        .O(\rcount[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    \rcount[8]_i_6 
       (.I0(rcount_reg[15]),
        .I1(rcount_reg[14]),
        .I2(rcount_reg[18]),
        .I3(rcount_reg[19]),
        .I4(rcount_reg[16]),
        .I5(rcount_reg[17]),
        .O(\rcount[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00F700FF00FF00FF)) 
    \rcount[8]_i_7 
       (.I0(rcount_reg[2]),
        .I1(rcount_reg[1]),
        .I2(\rcount[8]_i_8_n_0 ),
        .I3(\rcount[0]_i_8_n_0 ),
        .I4(rcount_reg[5]),
        .I5(rcount_reg[0]),
        .O(\rcount[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \rcount[8]_i_8 
       (.I0(rcount_reg[3]),
        .I1(rcount_reg[4]),
        .O(\rcount[8]_i_8_n_0 ));
  FDCE \rcount_reg[0] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[0]_i_1_n_7 ),
        .Q(rcount_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rcount_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\rcount_reg[0]_i_1_n_0 ,\rcount_reg[0]_i_1_n_1 ,\rcount_reg[0]_i_1_n_2 ,\rcount_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\rcount[0]_i_2_n_0 }),
        .O({\rcount_reg[0]_i_1_n_4 ,\rcount_reg[0]_i_1_n_5 ,\rcount_reg[0]_i_1_n_6 ,\rcount_reg[0]_i_1_n_7 }),
        .S({\rcount[0]_i_3_n_0 ,\rcount[0]_i_4_n_0 ,\rcount[0]_i_5_n_0 ,\rcount[0]_i_6_n_0 }));
  FDCE \rcount_reg[10] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[8]_i_1_n_5 ),
        .Q(rcount_reg[10]));
  FDCE \rcount_reg[11] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[8]_i_1_n_4 ),
        .Q(rcount_reg[11]));
  FDCE \rcount_reg[12] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[12]_i_1_n_7 ),
        .Q(rcount_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rcount_reg[12]_i_1 
       (.CI(\rcount_reg[8]_i_1_n_0 ),
        .CO({\rcount_reg[12]_i_1_n_0 ,\rcount_reg[12]_i_1_n_1 ,\rcount_reg[12]_i_1_n_2 ,\rcount_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rcount_reg[12]_i_1_n_4 ,\rcount_reg[12]_i_1_n_5 ,\rcount_reg[12]_i_1_n_6 ,\rcount_reg[12]_i_1_n_7 }),
        .S({\rcount[12]_i_2_n_0 ,\rcount[12]_i_3_n_0 ,\rcount[12]_i_4_n_0 ,\rcount[12]_i_5_n_0 }));
  FDCE \rcount_reg[13] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[12]_i_1_n_6 ),
        .Q(rcount_reg[13]));
  FDCE \rcount_reg[14] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[12]_i_1_n_5 ),
        .Q(rcount_reg[14]));
  FDCE \rcount_reg[15] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[12]_i_1_n_4 ),
        .Q(rcount_reg[15]));
  FDCE \rcount_reg[16] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[16]_i_1_n_7 ),
        .Q(rcount_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rcount_reg[16]_i_1 
       (.CI(\rcount_reg[12]_i_1_n_0 ),
        .CO({\NLW_rcount_reg[16]_i_1_CO_UNCONNECTED [3],\rcount_reg[16]_i_1_n_1 ,\rcount_reg[16]_i_1_n_2 ,\rcount_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rcount_reg[16]_i_1_n_4 ,\rcount_reg[16]_i_1_n_5 ,\rcount_reg[16]_i_1_n_6 ,\rcount_reg[16]_i_1_n_7 }),
        .S({\rcount[16]_i_2_n_0 ,\rcount[16]_i_3_n_0 ,\rcount[16]_i_4_n_0 ,\rcount[16]_i_5_n_0 }));
  FDCE \rcount_reg[17] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[16]_i_1_n_6 ),
        .Q(rcount_reg[17]));
  FDCE \rcount_reg[18] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[16]_i_1_n_5 ),
        .Q(rcount_reg[18]));
  FDCE \rcount_reg[19] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[16]_i_1_n_4 ),
        .Q(rcount_reg[19]));
  FDCE \rcount_reg[1] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[0]_i_1_n_6 ),
        .Q(rcount_reg[1]));
  FDCE \rcount_reg[2] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[0]_i_1_n_5 ),
        .Q(rcount_reg[2]));
  FDCE \rcount_reg[3] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[0]_i_1_n_4 ),
        .Q(rcount_reg[3]));
  FDCE \rcount_reg[4] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[4]_i_1_n_7 ),
        .Q(rcount_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rcount_reg[4]_i_1 
       (.CI(\rcount_reg[0]_i_1_n_0 ),
        .CO({\rcount_reg[4]_i_1_n_0 ,\rcount_reg[4]_i_1_n_1 ,\rcount_reg[4]_i_1_n_2 ,\rcount_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rcount_reg[4]_i_1_n_4 ,\rcount_reg[4]_i_1_n_5 ,\rcount_reg[4]_i_1_n_6 ,\rcount_reg[4]_i_1_n_7 }),
        .S({\rcount[4]_i_2_n_0 ,\rcount[4]_i_3_n_0 ,\rcount[4]_i_4_n_0 ,\rcount[4]_i_5_n_0 }));
  FDCE \rcount_reg[5] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[4]_i_1_n_6 ),
        .Q(rcount_reg[5]));
  FDCE \rcount_reg[6] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[4]_i_1_n_5 ),
        .Q(rcount_reg[6]));
  FDCE \rcount_reg[7] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[4]_i_1_n_4 ),
        .Q(rcount_reg[7]));
  FDCE \rcount_reg[8] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[8]_i_1_n_7 ),
        .Q(rcount_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rcount_reg[8]_i_1 
       (.CI(\rcount_reg[4]_i_1_n_0 ),
        .CO({\rcount_reg[8]_i_1_n_0 ,\rcount_reg[8]_i_1_n_1 ,\rcount_reg[8]_i_1_n_2 ,\rcount_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rcount_reg[8]_i_1_n_4 ,\rcount_reg[8]_i_1_n_5 ,\rcount_reg[8]_i_1_n_6 ,\rcount_reg[8]_i_1_n_7 }),
        .S({\rcount[8]_i_2_n_0 ,\rcount[8]_i_3_n_0 ,\rcount[8]_i_4_n_0 ,\rcount[8]_i_5_n_0 }));
  FDCE \rcount_reg[9] 
       (.C(mclk),
        .CE(1'b1),
        .CLR(reset),
        .D(\rcount_reg[8]_i_1_n_6 ),
        .Q(rcount_reg[9]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 velocity1_carry
       (.CI(1'b0),
        .CO({velocity1,velocity1_carry_n_1,velocity1_carry_n_2,velocity1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({velocity1_carry_i_1_n_0,1'b0,velocity1_carry_i_2_n_0,velocity2}),
        .O(NLW_velocity1_carry_O_UNCONNECTED[3:0]),
        .S({velocity1_carry_i_4_n_0,velocity1_carry_i_5_n_0,velocity1_carry_i_6_n_0,velocity1_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h2F20)) 
    velocity1_carry_i_1
       (.I0(velocity3[10]),
        .I1(velocity3[11]),
        .I2(Q),
        .I3(moving_sum[10]),
        .O(velocity1_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry_i_10
       (.CI(1'b0),
        .CO({velocity1_carry_i_10_n_0,velocity1_carry_i_10_n_1,velocity1_carry_i_10_n_2,velocity1_carry_i_10_n_3}),
        .CYINIT(\velocity[3]_INST_0_i_3_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({velocity3[4],NLW_velocity1_carry_i_10_O_UNCONNECTED[2:0]}),
        .S({velocity1_carry_i_18_n_0,velocity1_carry_i_19_n_0,velocity1_carry_i_20_n_0,velocity1_carry_i_21_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry_i_11
       (.I0(Q),
        .O(velocity1_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry_i_12
       (.I0(moving_sum[10]),
        .O(velocity1_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry_i_13
       (.I0(moving_sum[9]),
        .O(velocity1_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry_i_14
       (.I0(moving_sum[8]),
        .O(velocity1_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry_i_15
       (.I0(moving_sum[7]),
        .O(velocity1_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry_i_16
       (.I0(moving_sum[6]),
        .O(velocity1_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry_i_17
       (.I0(moving_sum[5]),
        .O(velocity1_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry_i_18
       (.I0(moving_sum[4]),
        .O(velocity1_carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry_i_19
       (.I0(moving_sum[3]),
        .O(velocity1_carry_i_19_n_0));
  LUT5 #(
    .INIT(32'hEFEFEFE0)) 
    velocity1_carry_i_2
       (.I0(velocity3[6]),
        .I1(velocity3[7]),
        .I2(Q),
        .I3(moving_sum[6]),
        .I4(moving_sum[7]),
        .O(velocity1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry_i_20
       (.I0(moving_sum[2]),
        .O(velocity1_carry_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    velocity1_carry_i_21
       (.I0(moving_sum[1]),
        .O(velocity1_carry_i_21_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    velocity1_carry_i_3
       (.I0(velocity3[5]),
        .I1(Q),
        .I2(moving_sum[5]),
        .O(velocity2));
  LUT4 #(
    .INIT(16'h101F)) 
    velocity1_carry_i_4
       (.I0(velocity3[10]),
        .I1(velocity3[11]),
        .I2(Q),
        .I3(moving_sum[10]),
        .O(velocity1_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h8F808080)) 
    velocity1_carry_i_5
       (.I0(velocity3[8]),
        .I1(velocity3[9]),
        .I2(Q),
        .I3(moving_sum[8]),
        .I4(moving_sum[9]),
        .O(velocity1_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h010101F1)) 
    velocity1_carry_i_6
       (.I0(moving_sum[7]),
        .I1(moving_sum[6]),
        .I2(Q),
        .I3(velocity3[7]),
        .I4(velocity3[6]),
        .O(velocity1_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h202F2020)) 
    velocity1_carry_i_7
       (.I0(velocity3[4]),
        .I1(velocity3[5]),
        .I2(Q),
        .I3(moving_sum[5]),
        .I4(moving_sum[4]),
        .O(velocity1_carry_i_7_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry_i_8
       (.CI(velocity1_carry_i_9_n_0),
        .CO({NLW_velocity1_carry_i_8_CO_UNCONNECTED[3:2],velocity1_carry_i_8_n_2,velocity1_carry_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_velocity1_carry_i_8_O_UNCONNECTED[3],velocity3[11:9]}),
        .S({1'b0,velocity1_carry_i_11_n_0,velocity1_carry_i_12_n_0,velocity1_carry_i_13_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 velocity1_carry_i_9
       (.CI(velocity1_carry_i_10_n_0),
        .CO({velocity1_carry_i_9_n_0,velocity1_carry_i_9_n_1,velocity1_carry_i_9_n_2,velocity1_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(velocity3[8:5]),
        .S({velocity1_carry_i_14_n_0,velocity1_carry_i_15_n_0,velocity1_carry_i_16_n_0,velocity1_carry_i_17_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \velocity[0]_INST_0 
       (.I0(velocity1),
        .I1(moving_sum[3]),
        .I2(Q),
        .I3(\moving_sum_reg[0]_0 [0]),
        .O(velocity[0]));
  LUT5 #(
    .INIT(32'h020E0E02)) 
    \velocity[1]_INST_0 
       (.I0(moving_sum[4]),
        .I1(Q),
        .I2(velocity1),
        .I3(\moving_sum_reg[0]_0 [1]),
        .I4(\moving_sum_reg[0]_0 [0]),
        .O(velocity[1]));
  LUT6 #(
    .INIT(64'h000057FD000002A8)) 
    \velocity[2]_INST_0 
       (.I0(Q),
        .I1(\moving_sum_reg[0]_0 [0]),
        .I2(\moving_sum_reg[0]_0 [1]),
        .I3(\moving_sum_reg[8]_0 [0]),
        .I4(velocity1),
        .I5(moving_sum[5]),
        .O(velocity[2]));
  LUT6 #(
    .INIT(64'h004E004E004E00E4)) 
    \velocity[3]_INST_0 
       (.I0(Q),
        .I1(moving_sum[6]),
        .I2(\moving_sum_reg[8]_0 [1]),
        .I3(velocity1),
        .I4(\moving_sum_reg[0]_0 [0]),
        .I5(velocity_3_sn_1),
        .O(velocity[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \velocity[3]_INST_0_i_1 
       (.CI(1'b0),
        .CO({\velocity[3]_INST_0_i_1_n_0 ,\velocity[3]_INST_0_i_1_n_1 ,\velocity[3]_INST_0_i_1_n_2 ,\velocity[3]_INST_0_i_1_n_3 }),
        .CYINIT(\velocity[3]_INST_0_i_3_n_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\moving_sum_reg[0]_0 ,\NLW_velocity[3]_INST_0_i_1_O_UNCONNECTED [1:0]}),
        .S({\velocity[3]_INST_0_i_4_n_0 ,\velocity[3]_INST_0_i_5_n_0 ,\velocity[3]_INST_0_i_6_n_0 ,\velocity[3]_INST_0_i_7_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[3]_INST_0_i_3 
       (.I0(moving_sum[0]),
        .O(\velocity[3]_INST_0_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[3]_INST_0_i_4 
       (.I0(moving_sum[4]),
        .O(\velocity[3]_INST_0_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[3]_INST_0_i_5 
       (.I0(moving_sum[3]),
        .O(\velocity[3]_INST_0_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[3]_INST_0_i_6 
       (.I0(moving_sum[2]),
        .O(\velocity[3]_INST_0_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[3]_INST_0_i_7 
       (.I0(moving_sum[1]),
        .O(\velocity[3]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h030A0C0A)) 
    \velocity[4]_INST_0 
       (.I0(moving_sum[7]),
        .I1(velocity_4_sn_1),
        .I2(velocity1),
        .I3(Q),
        .I4(\moving_sum_reg[8]_0 [2]),
        .O(velocity[4]));
  LUT5 #(
    .INIT(32'h030A0C0A)) 
    \velocity[5]_INST_0 
       (.I0(moving_sum[8]),
        .I1(velocity_5_sn_1),
        .I2(velocity1),
        .I3(Q),
        .I4(\moving_sum_reg[8]_0 [3]),
        .O(velocity[5]));
  LUT6 #(
    .INIT(64'h1010103232323210)) 
    \velocity[6]_INST_0 
       (.I0(Q),
        .I1(velocity1),
        .I2(moving_sum[9]),
        .I3(\moving_sum_reg[8]_0 [3]),
        .I4(velocity_5_sn_1),
        .I5(O[0]),
        .O(velocity[6]));
  LUT6 #(
    .INIT(64'hFFAAFFAAFFAAFFA8)) 
    \velocity[7]_INST_0 
       (.I0(Q),
        .I1(velocity_5_sn_1),
        .I2(O[0]),
        .I3(velocity1),
        .I4(velocity_7_sn_1),
        .I5(\moving_sum_reg[8]_0 [3]),
        .O(velocity[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[7]_INST_0_i_10 
       (.I0(moving_sum[6]),
        .O(\velocity[7]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[7]_INST_0_i_11 
       (.I0(moving_sum[5]),
        .O(\velocity[7]_INST_0_i_11_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \velocity[7]_INST_0_i_2 
       (.CI(\velocity[7]_INST_0_i_4_n_0 ),
        .CO({\NLW_velocity[7]_INST_0_i_2_CO_UNCONNECTED [3:2],\velocity[7]_INST_0_i_2_n_2 ,\velocity[7]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_velocity[7]_INST_0_i_2_O_UNCONNECTED [3],O}),
        .S({1'b0,\velocity[7]_INST_0_i_5_n_0 ,\velocity[7]_INST_0_i_6_n_0 ,\velocity[7]_INST_0_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \velocity[7]_INST_0_i_4 
       (.CI(\velocity[3]_INST_0_i_1_n_0 ),
        .CO({\velocity[7]_INST_0_i_4_n_0 ,\velocity[7]_INST_0_i_4_n_1 ,\velocity[7]_INST_0_i_4_n_2 ,\velocity[7]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\moving_sum_reg[8]_0 ),
        .S({\velocity[7]_INST_0_i_8_n_0 ,\velocity[7]_INST_0_i_9_n_0 ,\velocity[7]_INST_0_i_10_n_0 ,\velocity[7]_INST_0_i_11_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[7]_INST_0_i_5 
       (.I0(Q),
        .O(\velocity[7]_INST_0_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[7]_INST_0_i_6 
       (.I0(moving_sum[10]),
        .O(\velocity[7]_INST_0_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[7]_INST_0_i_7 
       (.I0(moving_sum[9]),
        .O(\velocity[7]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[7]_INST_0_i_8 
       (.I0(moving_sum[8]),
        .O(\velocity[7]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \velocity[7]_INST_0_i_9 
       (.I0(moving_sum[7]),
        .O(\velocity[7]_INST_0_i_9_n_0 ));
endmodule
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
