// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Jun 12 23:33:55 2024
// Host        : DESKTOP-GEJ0KOM running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Truong/Desktop/digital_design/Max_Diff/Max_Diff.sim/sim_1/synth/timing/xsim/Pos_Synthesis_tb_time_synth.v
// Design      : Max_Diff
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Counter_Nbit
   (S,
    \N_minus1[2] ,
    DI,
    \Count_reg[3]_0 ,
    Addr_in_IBUF,
    D,
    N_minus1_IBUF,
    Q,
    CLK);
  output [3:0]S;
  output [1:0]\N_minus1[2] ;
  output [1:0]DI;
  output [3:0]\Count_reg[3]_0 ;
  input [7:0]Addr_in_IBUF;
  input [3:0]D;
  input [3:0]N_minus1_IBUF;
  input [1:0]Q;
  input CLK;

  wire [7:0]Addr_in_IBUF;
  wire CLK;
  wire \Count[7]_i_2_n_0 ;
  wire [3:0]\Count_reg[3]_0 ;
  wire [7:0]Count_reg__0;
  wire [3:0]D;
  wire [1:0]DI;
  wire [1:0]\N_minus1[2] ;
  wire [3:0]N_minus1_IBUF;
  wire [1:0]Q;
  wire [3:0]S;
  wire [7:0]plusOp;

  LUT2 #(
    .INIT(4'h6)) 
    Addr_sum_carry__0_i_1
       (.I0(Addr_in_IBUF[7]),
        .I1(Count_reg__0[7]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    Addr_sum_carry__0_i_2
       (.I0(Addr_in_IBUF[6]),
        .I1(Count_reg__0[6]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    Addr_sum_carry__0_i_3
       (.I0(Addr_in_IBUF[5]),
        .I1(Count_reg__0[5]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    Addr_sum_carry__0_i_4
       (.I0(Addr_in_IBUF[4]),
        .I1(Count_reg__0[4]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    Addr_sum_carry_i_1
       (.I0(Addr_in_IBUF[3]),
        .I1(Count_reg__0[3]),
        .O(\Count_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    Addr_sum_carry_i_2
       (.I0(Addr_in_IBUF[2]),
        .I1(Count_reg__0[2]),
        .O(\Count_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    Addr_sum_carry_i_3
       (.I0(Addr_in_IBUF[1]),
        .I1(Count_reg__0[1]),
        .O(\Count_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    Addr_sum_carry_i_4
       (.I0(Addr_in_IBUF[0]),
        .I1(Count_reg__0[0]),
        .O(\Count_reg[3]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    \Count[0]_i_1 
       (.I0(Count_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Count[1]_i_1 
       (.I0(Count_reg__0[0]),
        .I1(Count_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Count[2]_i_1 
       (.I0(Count_reg__0[0]),
        .I1(Count_reg__0[1]),
        .I2(Count_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Count[3]_i_1 
       (.I0(Count_reg__0[1]),
        .I1(Count_reg__0[0]),
        .I2(Count_reg__0[2]),
        .I3(Count_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Count[4]_i_1 
       (.I0(Count_reg__0[2]),
        .I1(Count_reg__0[0]),
        .I2(Count_reg__0[1]),
        .I3(Count_reg__0[3]),
        .I4(Count_reg__0[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Count[5]_i_1 
       (.I0(Count_reg__0[3]),
        .I1(Count_reg__0[1]),
        .I2(Count_reg__0[0]),
        .I3(Count_reg__0[2]),
        .I4(Count_reg__0[4]),
        .I5(Count_reg__0[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Count[6]_i_1 
       (.I0(\Count[7]_i_2_n_0 ),
        .I1(Count_reg__0[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Count[7]_i_1 
       (.I0(\Count[7]_i_2_n_0 ),
        .I1(Count_reg__0[6]),
        .I2(Count_reg__0[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \Count[7]_i_2 
       (.I0(Count_reg__0[5]),
        .I1(Count_reg__0[3]),
        .I2(Count_reg__0[1]),
        .I3(Count_reg__0[0]),
        .I4(Count_reg__0[2]),
        .I5(Count_reg__0[4]),
        .O(\Count[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Count_reg[0] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(plusOp[0]),
        .Q(Count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Count_reg[1] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(plusOp[1]),
        .Q(Count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Count_reg[2] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(plusOp[2]),
        .Q(Count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Count_reg[3] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(plusOp[3]),
        .Q(Count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Count_reg[4] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(plusOp[4]),
        .Q(Count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Count_reg[5] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(plusOp[5]),
        .Q(Count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Count_reg[6] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(plusOp[6]),
        .Q(Count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Count_reg[7] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(plusOp[7]),
        .Q(Count_reg__0[7]));
  LUT4 #(
    .INIT(16'h2F02)) 
    index_gt_Nminus10_carry_i_3
       (.I0(D[2]),
        .I1(N_minus1_IBUF[2]),
        .I2(N_minus1_IBUF[3]),
        .I3(D[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    index_gt_Nminus10_carry_i_4
       (.I0(D[0]),
        .I1(N_minus1_IBUF[0]),
        .I2(N_minus1_IBUF[1]),
        .I3(D[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    index_gt_Nminus10_carry_i_7
       (.I0(D[2]),
        .I1(N_minus1_IBUF[2]),
        .I2(D[3]),
        .I3(N_minus1_IBUF[3]),
        .O(\N_minus1[2] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    index_gt_Nminus10_carry_i_8
       (.I0(D[0]),
        .I1(N_minus1_IBUF[0]),
        .I2(D[1]),
        .I3(N_minus1_IBUF[1]),
        .O(\N_minus1[2] [0]));
endmodule

(* ADDR_WIDTH = "8" *) (* DATA_WIDTH = "8" *) 
(* NotValidForBitStream *)
module Max_Diff
   (nReset_in,
    Clk,
    Start,
    Done,
    R_addr,
    R_en,
    R_ready,
    Data_in,
    W_valid,
    NS_ready,
    Diff,
    Addr_in,
    N_minus1);
  input nReset_in;
  input Clk;
  input Start;
  output Done;
  output [7:0]R_addr;
  output R_en;
  input R_ready;
  input [7:0]Data_in;
  output W_valid;
  input NS_ready;
  output [7:0]Diff;
  input [7:0]Addr_in;
  input [7:0]N_minus1;

  wire [7:0]Addr_in;
  wire [7:0]Addr_in_IBUF;
  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire [7:0]Data_in;
  wire [7:0]Data_in_IBUF;
  wire [7:0]Diff;
  wire [7:0]Diff_OBUF;
  wire Done;
  wire Done_OBUF;
  wire NS_ready;
  wire NS_ready_IBUF;
  wire [7:0]N_minus1;
  wire [7:0]N_minus1_IBUF;
  wire [7:0]R_addr;
  wire [7:0]R_addr_OBUF;
  wire R_en;
  wire R_en_OBUF;
  wire R_ready;
  wire R_ready_IBUF;
  wire Start;
  wire Start_IBUF;
  wire W_valid;
  wire W_valid_OBUF;
  wire addr_ld_wire;
  wire data_ld_wire;
  wire index_gt_Nminus1_wire;
  wire max_diff_controller_inst_n_6;
  wire minmax_ld_en_wire;
  wire nReset_in;
  wire nReset_in_IBUF;

initial begin
 $sdf_annotate("Pos_Synthesis_tb_time_synth.sdf",,,,"tool_control");
end
  IBUF \Addr_in_IBUF[0]_inst 
       (.I(Addr_in[0]),
        .O(Addr_in_IBUF[0]));
  IBUF \Addr_in_IBUF[1]_inst 
       (.I(Addr_in[1]),
        .O(Addr_in_IBUF[1]));
  IBUF \Addr_in_IBUF[2]_inst 
       (.I(Addr_in[2]),
        .O(Addr_in_IBUF[2]));
  IBUF \Addr_in_IBUF[3]_inst 
       (.I(Addr_in[3]),
        .O(Addr_in_IBUF[3]));
  IBUF \Addr_in_IBUF[4]_inst 
       (.I(Addr_in[4]),
        .O(Addr_in_IBUF[4]));
  IBUF \Addr_in_IBUF[5]_inst 
       (.I(Addr_in[5]),
        .O(Addr_in_IBUF[5]));
  IBUF \Addr_in_IBUF[6]_inst 
       (.I(Addr_in[6]),
        .O(Addr_in_IBUF[6]));
  IBUF \Addr_in_IBUF[7]_inst 
       (.I(Addr_in[7]),
        .O(Addr_in_IBUF[7]));
  BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
  IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
  IBUF \Data_in_IBUF[0]_inst 
       (.I(Data_in[0]),
        .O(Data_in_IBUF[0]));
  IBUF \Data_in_IBUF[1]_inst 
       (.I(Data_in[1]),
        .O(Data_in_IBUF[1]));
  IBUF \Data_in_IBUF[2]_inst 
       (.I(Data_in[2]),
        .O(Data_in_IBUF[2]));
  IBUF \Data_in_IBUF[3]_inst 
       (.I(Data_in[3]),
        .O(Data_in_IBUF[3]));
  IBUF \Data_in_IBUF[4]_inst 
       (.I(Data_in[4]),
        .O(Data_in_IBUF[4]));
  IBUF \Data_in_IBUF[5]_inst 
       (.I(Data_in[5]),
        .O(Data_in_IBUF[5]));
  IBUF \Data_in_IBUF[6]_inst 
       (.I(Data_in[6]),
        .O(Data_in_IBUF[6]));
  IBUF \Data_in_IBUF[7]_inst 
       (.I(Data_in[7]),
        .O(Data_in_IBUF[7]));
  OBUF \Diff_OBUF[0]_inst 
       (.I(Diff_OBUF[0]),
        .O(Diff[0]));
  OBUF \Diff_OBUF[1]_inst 
       (.I(Diff_OBUF[1]),
        .O(Diff[1]));
  OBUF \Diff_OBUF[2]_inst 
       (.I(Diff_OBUF[2]),
        .O(Diff[2]));
  OBUF \Diff_OBUF[3]_inst 
       (.I(Diff_OBUF[3]),
        .O(Diff[3]));
  OBUF \Diff_OBUF[4]_inst 
       (.I(Diff_OBUF[4]),
        .O(Diff[4]));
  OBUF \Diff_OBUF[5]_inst 
       (.I(Diff_OBUF[5]),
        .O(Diff[5]));
  OBUF \Diff_OBUF[6]_inst 
       (.I(Diff_OBUF[6]),
        .O(Diff[6]));
  OBUF \Diff_OBUF[7]_inst 
       (.I(Diff_OBUF[7]),
        .O(Diff[7]));
  OBUF Done_OBUF_inst
       (.I(Done_OBUF),
        .O(Done));
  IBUF NS_ready_IBUF_inst
       (.I(NS_ready),
        .O(NS_ready_IBUF));
  IBUF \N_minus1_IBUF[0]_inst 
       (.I(N_minus1[0]),
        .O(N_minus1_IBUF[0]));
  IBUF \N_minus1_IBUF[1]_inst 
       (.I(N_minus1[1]),
        .O(N_minus1_IBUF[1]));
  IBUF \N_minus1_IBUF[2]_inst 
       (.I(N_minus1[2]),
        .O(N_minus1_IBUF[2]));
  IBUF \N_minus1_IBUF[3]_inst 
       (.I(N_minus1[3]),
        .O(N_minus1_IBUF[3]));
  IBUF \N_minus1_IBUF[4]_inst 
       (.I(N_minus1[4]),
        .O(N_minus1_IBUF[4]));
  IBUF \N_minus1_IBUF[5]_inst 
       (.I(N_minus1[5]),
        .O(N_minus1_IBUF[5]));
  IBUF \N_minus1_IBUF[6]_inst 
       (.I(N_minus1[6]),
        .O(N_minus1_IBUF[6]));
  IBUF \N_minus1_IBUF[7]_inst 
       (.I(N_minus1[7]),
        .O(N_minus1_IBUF[7]));
  OBUF \R_addr_OBUF[0]_inst 
       (.I(R_addr_OBUF[0]),
        .O(R_addr[0]));
  OBUF \R_addr_OBUF[1]_inst 
       (.I(R_addr_OBUF[1]),
        .O(R_addr[1]));
  OBUF \R_addr_OBUF[2]_inst 
       (.I(R_addr_OBUF[2]),
        .O(R_addr[2]));
  OBUF \R_addr_OBUF[3]_inst 
       (.I(R_addr_OBUF[3]),
        .O(R_addr[3]));
  OBUF \R_addr_OBUF[4]_inst 
       (.I(R_addr_OBUF[4]),
        .O(R_addr[4]));
  OBUF \R_addr_OBUF[5]_inst 
       (.I(R_addr_OBUF[5]),
        .O(R_addr[5]));
  OBUF \R_addr_OBUF[6]_inst 
       (.I(R_addr_OBUF[6]),
        .O(R_addr[6]));
  OBUF \R_addr_OBUF[7]_inst 
       (.I(R_addr_OBUF[7]),
        .O(R_addr[7]));
  OBUF R_en_OBUF_inst
       (.I(R_en_OBUF),
        .O(R_en));
  IBUF R_ready_IBUF_inst
       (.I(R_ready),
        .O(R_ready_IBUF));
  IBUF Start_IBUF_inst
       (.I(Start),
        .O(Start_IBUF));
  OBUF W_valid_OBUF_inst
       (.I(W_valid_OBUF),
        .O(W_valid));
  Max_Diff_Controller max_diff_controller_inst
       (.CLK(Clk_IBUF_BUFG),
        .CO(index_gt_Nminus1_wire),
        .Done_OBUF(Done_OBUF),
        .NS_ready_IBUF(NS_ready_IBUF),
        .Q({minmax_ld_en_wire,data_ld_wire,R_en_OBUF,W_valid_OBUF,addr_ld_wire,max_diff_controller_inst_n_6}),
        .R_ready_IBUF(R_ready_IBUF),
        .Start_IBUF(Start_IBUF),
        .nReset_in_IBUF(nReset_in_IBUF));
  Max_Diff_Datapath max_diff_datapath_inst
       (.Addr_in_IBUF(Addr_in_IBUF),
        .CLK(Clk_IBUF_BUFG),
        .CO(index_gt_Nminus1_wire),
        .N_minus1_IBUF(N_minus1_IBUF),
        .Q({minmax_ld_en_wire,data_ld_wire,W_valid_OBUF,addr_ld_wire,max_diff_controller_inst_n_6}),
        .\reg_reg[7] (R_addr_OBUF),
        .\reg_reg[7]_0 (Diff_OBUF),
        .\reg_reg[7]_1 (Data_in_IBUF));
  IBUF nReset_in_IBUF_inst
       (.I(nReset_in),
        .O(nReset_in_IBUF));
endmodule

module Max_Diff_Controller
   (Done_OBUF,
    Q,
    Start_IBUF,
    CO,
    NS_ready_IBUF,
    R_ready_IBUF,
    nReset_in_IBUF,
    CLK);
  output Done_OBUF;
  output [5:0]Q;
  input Start_IBUF;
  input [0:0]CO;
  input NS_ready_IBUF;
  input R_ready_IBUF;
  input nReset_in_IBUF;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire Done_OBUF;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire NS_ready_IBUF;
  wire [5:0]Q;
  wire R_ready_IBUF;
  wire Start_IBUF;
  wire nReset_in_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Done_OBUF_inst_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Q[0]),
        .O(Done_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(Start_IBUF),
        .I2(Q[0]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Q[5]),
        .I1(Start_IBUF),
        .I2(Q[0]),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(CO),
        .I1(Q[1]),
        .I2(NS_ready_IBUF),
        .I3(Q[2]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(Q[2]),
        .I1(NS_ready_IBUF),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(CO),
        .I1(Q[1]),
        .I2(R_ready_IBUF),
        .I3(Q[3]),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(Q[3]),
        .I1(R_ready_IBUF),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(nReset_in_IBUF),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(Q[0]),
        .S(\FSM_onehot_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q[4]),
        .Q(Q[5]),
        .R(\FSM_onehot_state[6]_i_1_n_0 ));
endmodule

module Max_Diff_Datapath
   (CO,
    \reg_reg[7] ,
    \reg_reg[7]_0 ,
    Addr_in_IBUF,
    Q,
    N_minus1_IBUF,
    \reg_reg[7]_1 ,
    CLK);
  output [0:0]CO;
  output [7:0]\reg_reg[7] ;
  output [7:0]\reg_reg[7]_0 ;
  input [7:0]Addr_in_IBUF;
  input [4:0]Q;
  input [7:0]N_minus1_IBUF;
  input [7:0]\reg_reg[7]_1 ;
  input CLK;

  wire [7:0]Addr_in_IBUF;
  wire Addr_sum_carry__0_n_1;
  wire Addr_sum_carry__0_n_2;
  wire Addr_sum_carry__0_n_3;
  wire Addr_sum_carry_n_0;
  wire Addr_sum_carry_n_1;
  wire Addr_sum_carry_n_2;
  wire Addr_sum_carry_n_3;
  wire CLK;
  wire [0:0]CO;
  wire [7:0]D;
  wire En0_out;
  wire [7:0]N_minus1_IBUF;
  wire [4:0]Q;
  wire data_reg_n_1;
  wire data_reg_n_13;
  wire data_reg_n_14;
  wire data_reg_n_15;
  wire data_reg_n_16;
  wire data_reg_n_2;
  wire data_reg_n_3;
  wire data_reg_n_4;
  wire index_cnter_n_0;
  wire index_cnter_n_1;
  wire index_cnter_n_10;
  wire index_cnter_n_11;
  wire index_cnter_n_2;
  wire index_cnter_n_3;
  wire index_cnter_n_4;
  wire index_cnter_n_5;
  wire index_cnter_n_6;
  wire index_cnter_n_7;
  wire index_cnter_n_8;
  wire index_cnter_n_9;
  wire index_gt_Nminus10_carry_i_1_n_0;
  wire index_gt_Nminus10_carry_i_2_n_0;
  wire index_gt_Nminus10_carry_i_5_n_0;
  wire index_gt_Nminus10_carry_i_6_n_0;
  wire index_gt_Nminus10_carry_n_1;
  wire index_gt_Nminus10_carry_n_2;
  wire index_gt_Nminus10_carry_n_3;
  wire max_ld0_carry_n_1;
  wire max_ld0_carry_n_2;
  wire max_ld0_carry_n_3;
  wire max_lt_data;
  wire max_reg_n_0;
  wire max_reg_n_1;
  wire max_reg_n_10;
  wire max_reg_n_11;
  wire max_reg_n_12;
  wire max_reg_n_13;
  wire max_reg_n_14;
  wire max_reg_n_15;
  wire max_reg_n_2;
  wire max_reg_n_3;
  wire max_reg_n_4;
  wire max_reg_n_5;
  wire max_reg_n_6;
  wire max_reg_n_7;
  wire max_reg_n_8;
  wire max_reg_n_9;
  wire min_gt_data;
  wire min_ld0_carry_n_1;
  wire min_ld0_carry_n_2;
  wire min_ld0_carry_n_3;
  wire min_reg_n_0;
  wire min_reg_n_1;
  wire min_reg_n_10;
  wire min_reg_n_11;
  wire min_reg_n_12;
  wire min_reg_n_13;
  wire min_reg_n_14;
  wire min_reg_n_15;
  wire min_reg_n_2;
  wire min_reg_n_3;
  wire min_reg_n_4;
  wire min_reg_n_5;
  wire min_reg_n_6;
  wire min_reg_n_7;
  wire min_reg_n_8;
  wire min_reg_n_9;
  wire [7:0]\reg ;
  wire [7:0]\reg_reg[7] ;
  wire [7:0]\reg_reg[7]_0 ;
  wire [7:0]\reg_reg[7]_1 ;
  wire [7:0]sub;
  wire sub_carry__0_n_1;
  wire sub_carry__0_n_2;
  wire sub_carry__0_n_3;
  wire sub_carry_n_0;
  wire sub_carry_n_1;
  wire sub_carry_n_2;
  wire sub_carry_n_3;
  wire [3:3]NLW_Addr_sum_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_index_gt_Nminus10_carry_O_UNCONNECTED;
  wire [3:0]NLW_max_ld0_carry_O_UNCONNECTED;
  wire [3:0]NLW_min_ld0_carry_O_UNCONNECTED;
  wire [3:3]NLW_sub_carry__0_CO_UNCONNECTED;

  Regn Addr_reg
       (.CLK(CLK),
        .D(D),
        .Q(Q[1:0]),
        .\reg_reg[7]_0 (\reg_reg[7] ));
  CARRY4 Addr_sum_carry
       (.CI(1'b0),
        .CO({Addr_sum_carry_n_0,Addr_sum_carry_n_1,Addr_sum_carry_n_2,Addr_sum_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Addr_in_IBUF[3:0]),
        .O(D[3:0]),
        .S({index_cnter_n_8,index_cnter_n_9,index_cnter_n_10,index_cnter_n_11}));
  CARRY4 Addr_sum_carry__0
       (.CI(Addr_sum_carry_n_0),
        .CO({NLW_Addr_sum_carry__0_CO_UNCONNECTED[3],Addr_sum_carry__0_n_1,Addr_sum_carry__0_n_2,Addr_sum_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Addr_in_IBUF[6:4]}),
        .O(D[7:4]),
        .S({index_cnter_n_0,index_cnter_n_1,index_cnter_n_2,index_cnter_n_3}));
  Regn_0 data_reg
       (.CLK(CLK),
        .CO(max_lt_data),
        .DI({data_reg_n_13,data_reg_n_14,data_reg_n_15,data_reg_n_16}),
        .E(En0_out),
        .Q({Q[4:3],Q[0]}),
        .S({data_reg_n_1,data_reg_n_2,data_reg_n_3,data_reg_n_4}),
        .max_ld0_carry({max_reg_n_4,max_reg_n_5,max_reg_n_6,max_reg_n_7,max_reg_n_8,max_reg_n_9,max_reg_n_10,max_reg_n_11}),
        .\reg_reg[7]_0 (\reg ),
        .\reg_reg[7]_1 (\reg_reg[7]_1 ));
  Regn_1 diff_reg
       (.CLK(CLK),
        .D(sub),
        .Q(Q[2]),
        .\reg_reg[7]_0 (\reg_reg[7]_0 ));
  Counter_Nbit index_cnter
       (.Addr_in_IBUF(Addr_in_IBUF),
        .CLK(CLK),
        .\Count_reg[3]_0 ({index_cnter_n_8,index_cnter_n_9,index_cnter_n_10,index_cnter_n_11}),
        .D(D[3:0]),
        .DI({index_cnter_n_6,index_cnter_n_7}),
        .\N_minus1[2] ({index_cnter_n_4,index_cnter_n_5}),
        .N_minus1_IBUF(N_minus1_IBUF[3:0]),
        .Q({Q[4],Q[0]}),
        .S({index_cnter_n_0,index_cnter_n_1,index_cnter_n_2,index_cnter_n_3}));
  CARRY4 index_gt_Nminus10_carry
       (.CI(1'b0),
        .CO({CO,index_gt_Nminus10_carry_n_1,index_gt_Nminus10_carry_n_2,index_gt_Nminus10_carry_n_3}),
        .CYINIT(1'b0),
        .DI({index_gt_Nminus10_carry_i_1_n_0,index_gt_Nminus10_carry_i_2_n_0,index_cnter_n_6,index_cnter_n_7}),
        .O(NLW_index_gt_Nminus10_carry_O_UNCONNECTED[3:0]),
        .S({index_gt_Nminus10_carry_i_5_n_0,index_gt_Nminus10_carry_i_6_n_0,index_cnter_n_4,index_cnter_n_5}));
  LUT4 #(
    .INIT(16'h2F02)) 
    index_gt_Nminus10_carry_i_1
       (.I0(D[6]),
        .I1(N_minus1_IBUF[6]),
        .I2(N_minus1_IBUF[7]),
        .I3(D[7]),
        .O(index_gt_Nminus10_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    index_gt_Nminus10_carry_i_2
       (.I0(D[4]),
        .I1(N_minus1_IBUF[4]),
        .I2(N_minus1_IBUF[5]),
        .I3(D[5]),
        .O(index_gt_Nminus10_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    index_gt_Nminus10_carry_i_5
       (.I0(D[6]),
        .I1(N_minus1_IBUF[6]),
        .I2(D[7]),
        .I3(N_minus1_IBUF[7]),
        .O(index_gt_Nminus10_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    index_gt_Nminus10_carry_i_6
       (.I0(D[4]),
        .I1(N_minus1_IBUF[4]),
        .I2(D[5]),
        .I3(N_minus1_IBUF[5]),
        .O(index_gt_Nminus10_carry_i_6_n_0));
  CARRY4 max_ld0_carry
       (.CI(1'b0),
        .CO({max_lt_data,max_ld0_carry_n_1,max_ld0_carry_n_2,max_ld0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({data_reg_n_13,data_reg_n_14,data_reg_n_15,data_reg_n_16}),
        .O(NLW_max_ld0_carry_O_UNCONNECTED[3:0]),
        .S({data_reg_n_1,data_reg_n_2,data_reg_n_3,data_reg_n_4}));
  Regn_2 max_reg
       (.CLK(CLK),
        .D(\reg ),
        .E(En0_out),
        .Q({max_reg_n_4,max_reg_n_5,max_reg_n_6,max_reg_n_7,max_reg_n_8,max_reg_n_9,max_reg_n_10,max_reg_n_11}),
        .S({max_reg_n_0,max_reg_n_1,max_reg_n_2,max_reg_n_3}),
        .\reg_reg[3]_0 ({max_reg_n_12,max_reg_n_13,max_reg_n_14,max_reg_n_15}),
        .\reg_reg[7]_0 ({min_reg_n_4,min_reg_n_5,min_reg_n_6,min_reg_n_7,min_reg_n_8,min_reg_n_9,min_reg_n_10,min_reg_n_11}),
        .\reg_reg[7]_1 (Q[0]));
  CARRY4 min_ld0_carry
       (.CI(1'b0),
        .CO({min_gt_data,min_ld0_carry_n_1,min_ld0_carry_n_2,min_ld0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({min_reg_n_12,min_reg_n_13,min_reg_n_14,min_reg_n_15}),
        .O(NLW_min_ld0_carry_O_UNCONNECTED[3:0]),
        .S({min_reg_n_0,min_reg_n_1,min_reg_n_2,min_reg_n_3}));
  Regn_3 min_reg
       (.CLK(CLK),
        .CO(min_gt_data),
        .DI({min_reg_n_12,min_reg_n_13,min_reg_n_14,min_reg_n_15}),
        .Q({Q[4],Q[0]}),
        .S({min_reg_n_0,min_reg_n_1,min_reg_n_2,min_reg_n_3}),
        .\reg_reg[7]_0 ({min_reg_n_4,min_reg_n_5,min_reg_n_6,min_reg_n_7,min_reg_n_8,min_reg_n_9,min_reg_n_10,min_reg_n_11}),
        .\reg_reg[7]_1 (\reg ));
  CARRY4 sub_carry
       (.CI(1'b0),
        .CO({sub_carry_n_0,sub_carry_n_1,sub_carry_n_2,sub_carry_n_3}),
        .CYINIT(1'b1),
        .DI({max_reg_n_8,max_reg_n_9,max_reg_n_10,max_reg_n_11}),
        .O(sub[3:0]),
        .S({max_reg_n_12,max_reg_n_13,max_reg_n_14,max_reg_n_15}));
  CARRY4 sub_carry__0
       (.CI(sub_carry_n_0),
        .CO({NLW_sub_carry__0_CO_UNCONNECTED[3],sub_carry__0_n_1,sub_carry__0_n_2,sub_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,max_reg_n_5,max_reg_n_6,max_reg_n_7}),
        .O(sub[7:4]),
        .S({max_reg_n_0,max_reg_n_1,max_reg_n_2,max_reg_n_3}));
endmodule

module Regn
   (\reg_reg[7]_0 ,
    Q,
    D,
    CLK);
  output [7:0]\reg_reg[7]_0 ;
  input [1:0]Q;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [1:0]Q;
  wire [7:0]\reg_reg[7]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[0] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(D[0]),
        .Q(\reg_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[1] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(D[1]),
        .Q(\reg_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[2] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(D[2]),
        .Q(\reg_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[3] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(D[3]),
        .Q(\reg_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[4] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(D[4]),
        .Q(\reg_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[5] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(D[5]),
        .Q(\reg_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[6] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(D[6]),
        .Q(\reg_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[7] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(D[7]),
        .Q(\reg_reg[7]_0 [7]));
endmodule

(* ORIG_REF_NAME = "Regn" *) 
module Regn_0
   (E,
    S,
    \reg_reg[7]_0 ,
    DI,
    CO,
    Q,
    max_ld0_carry,
    \reg_reg[7]_1 ,
    CLK);
  output [0:0]E;
  output [3:0]S;
  output [7:0]\reg_reg[7]_0 ;
  output [3:0]DI;
  input [0:0]CO;
  input [2:0]Q;
  input [7:0]max_ld0_carry;
  input [7:0]\reg_reg[7]_1 ;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]E;
  wire [2:0]Q;
  wire [3:0]S;
  wire [7:0]max_ld0_carry;
  wire [7:0]\reg_reg[7]_0 ;
  wire [7:0]\reg_reg[7]_1 ;

  LUT4 #(
    .INIT(16'h2F02)) 
    max_ld0_carry_i_1
       (.I0(\reg_reg[7]_0 [6]),
        .I1(max_ld0_carry[6]),
        .I2(\reg_reg[7]_0 [7]),
        .I3(max_ld0_carry[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    max_ld0_carry_i_2
       (.I0(\reg_reg[7]_0 [4]),
        .I1(max_ld0_carry[4]),
        .I2(max_ld0_carry[5]),
        .I3(\reg_reg[7]_0 [5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    max_ld0_carry_i_3
       (.I0(\reg_reg[7]_0 [2]),
        .I1(max_ld0_carry[2]),
        .I2(max_ld0_carry[3]),
        .I3(\reg_reg[7]_0 [3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    max_ld0_carry_i_4
       (.I0(\reg_reg[7]_0 [0]),
        .I1(max_ld0_carry[0]),
        .I2(max_ld0_carry[1]),
        .I3(\reg_reg[7]_0 [1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    max_ld0_carry_i_5
       (.I0(\reg_reg[7]_0 [6]),
        .I1(max_ld0_carry[6]),
        .I2(max_ld0_carry[7]),
        .I3(\reg_reg[7]_0 [7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    max_ld0_carry_i_6
       (.I0(\reg_reg[7]_0 [4]),
        .I1(max_ld0_carry[4]),
        .I2(\reg_reg[7]_0 [5]),
        .I3(max_ld0_carry[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    max_ld0_carry_i_7
       (.I0(\reg_reg[7]_0 [2]),
        .I1(max_ld0_carry[2]),
        .I2(\reg_reg[7]_0 [3]),
        .I3(max_ld0_carry[3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    max_ld0_carry_i_8
       (.I0(\reg_reg[7]_0 [0]),
        .I1(max_ld0_carry[0]),
        .I2(\reg_reg[7]_0 [1]),
        .I3(max_ld0_carry[1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \reg[7]_i_1__0 
       (.I0(CO),
        .I1(Q[2]),
        .O(E));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[0] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(\reg_reg[7]_1 [0]),
        .Q(\reg_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[1] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(\reg_reg[7]_1 [1]),
        .Q(\reg_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[2] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(\reg_reg[7]_1 [2]),
        .Q(\reg_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[3] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(\reg_reg[7]_1 [3]),
        .Q(\reg_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[4] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(\reg_reg[7]_1 [4]),
        .Q(\reg_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[5] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(\reg_reg[7]_1 [5]),
        .Q(\reg_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[6] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(\reg_reg[7]_1 [6]),
        .Q(\reg_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[7] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(\reg_reg[7]_1 [7]),
        .Q(\reg_reg[7]_0 [7]));
endmodule

(* ORIG_REF_NAME = "Regn" *) 
module Regn_1
   (\reg_reg[7]_0 ,
    Q,
    D,
    CLK);
  output [7:0]\reg_reg[7]_0 ;
  input [0:0]Q;
  input [7:0]D;
  input CLK;

  wire CLK;
  wire [7:0]D;
  wire [0:0]Q;
  wire [7:0]\reg_reg[7]_0 ;

  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[0] 
       (.C(CLK),
        .CE(Q),
        .D(D[0]),
        .Q(\reg_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[1] 
       (.C(CLK),
        .CE(Q),
        .D(D[1]),
        .Q(\reg_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[2] 
       (.C(CLK),
        .CE(Q),
        .D(D[2]),
        .Q(\reg_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[3] 
       (.C(CLK),
        .CE(Q),
        .D(D[3]),
        .Q(\reg_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[4] 
       (.C(CLK),
        .CE(Q),
        .D(D[4]),
        .Q(\reg_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[5] 
       (.C(CLK),
        .CE(Q),
        .D(D[5]),
        .Q(\reg_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[6] 
       (.C(CLK),
        .CE(Q),
        .D(D[6]),
        .Q(\reg_reg[7]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \reg_reg[7] 
       (.C(CLK),
        .CE(Q),
        .D(D[7]),
        .Q(\reg_reg[7]_0 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Regn" *) 
module Regn_2
   (S,
    Q,
    \reg_reg[3]_0 ,
    \reg_reg[7]_0 ,
    E,
    D,
    CLK,
    \reg_reg[7]_1 );
  output [3:0]S;
  output [7:0]Q;
  output [3:0]\reg_reg[3]_0 ;
  input [7:0]\reg_reg[7]_0 ;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]\reg_reg[7]_1 ;

  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [3:0]S;
  wire [3:0]\reg_reg[3]_0 ;
  wire [7:0]\reg_reg[7]_0 ;
  wire [0:0]\reg_reg[7]_1 ;

  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\reg_reg[7]_1 ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\reg_reg[7]_1 ),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\reg_reg[7]_1 ),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\reg_reg[7]_1 ),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\reg_reg[7]_1 ),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\reg_reg[7]_1 ),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\reg_reg[7]_1 ),
        .D(D[6]),
        .Q(Q[6]));
  FDPE #(
    .INIT(1'b1)) 
    \reg_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .PRE(\reg_reg[7]_1 ),
        .Q(Q[7]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_carry__0_i_1
       (.I0(Q[7]),
        .I1(\reg_reg[7]_0 [7]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_carry__0_i_2
       (.I0(Q[6]),
        .I1(\reg_reg[7]_0 [6]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_carry__0_i_3
       (.I0(Q[5]),
        .I1(\reg_reg[7]_0 [5]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_carry__0_i_4
       (.I0(Q[4]),
        .I1(\reg_reg[7]_0 [4]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_carry_i_1
       (.I0(Q[3]),
        .I1(\reg_reg[7]_0 [3]),
        .O(\reg_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_carry_i_2
       (.I0(Q[2]),
        .I1(\reg_reg[7]_0 [2]),
        .O(\reg_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_carry_i_3
       (.I0(Q[1]),
        .I1(\reg_reg[7]_0 [1]),
        .O(\reg_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    sub_carry_i_4
       (.I0(Q[0]),
        .I1(\reg_reg[7]_0 [0]),
        .O(\reg_reg[3]_0 [0]));
endmodule

(* ORIG_REF_NAME = "Regn" *) 
module Regn_3
   (S,
    \reg_reg[7]_0 ,
    DI,
    CO,
    Q,
    \reg_reg[7]_1 ,
    CLK);
  output [3:0]S;
  output [7:0]\reg_reg[7]_0 ;
  output [3:0]DI;
  input [0:0]CO;
  input [1:0]Q;
  input [7:0]\reg_reg[7]_1 ;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]DI;
  wire En;
  wire [1:0]Q;
  wire [3:0]S;
  wire [7:0]\reg_reg[7]_0 ;
  wire [7:0]\reg_reg[7]_1 ;

  LUT4 #(
    .INIT(16'h2F02)) 
    min_ld0_carry_i_1
       (.I0(\reg_reg[7]_0 [6]),
        .I1(\reg_reg[7]_1 [6]),
        .I2(\reg_reg[7]_0 [7]),
        .I3(\reg_reg[7]_1 [7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    min_ld0_carry_i_2
       (.I0(\reg_reg[7]_0 [4]),
        .I1(\reg_reg[7]_1 [4]),
        .I2(\reg_reg[7]_1 [5]),
        .I3(\reg_reg[7]_0 [5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    min_ld0_carry_i_3
       (.I0(\reg_reg[7]_0 [2]),
        .I1(\reg_reg[7]_1 [2]),
        .I2(\reg_reg[7]_1 [3]),
        .I3(\reg_reg[7]_0 [3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    min_ld0_carry_i_4
       (.I0(\reg_reg[7]_0 [0]),
        .I1(\reg_reg[7]_1 [0]),
        .I2(\reg_reg[7]_1 [1]),
        .I3(\reg_reg[7]_0 [1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    min_ld0_carry_i_5
       (.I0(\reg_reg[7]_0 [6]),
        .I1(\reg_reg[7]_1 [6]),
        .I2(\reg_reg[7]_1 [7]),
        .I3(\reg_reg[7]_0 [7]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    min_ld0_carry_i_6
       (.I0(\reg_reg[7]_0 [4]),
        .I1(\reg_reg[7]_1 [4]),
        .I2(\reg_reg[7]_0 [5]),
        .I3(\reg_reg[7]_1 [5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    min_ld0_carry_i_7
       (.I0(\reg_reg[7]_0 [2]),
        .I1(\reg_reg[7]_1 [2]),
        .I2(\reg_reg[7]_0 [3]),
        .I3(\reg_reg[7]_1 [3]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    min_ld0_carry_i_8
       (.I0(\reg_reg[7]_0 [0]),
        .I1(\reg_reg[7]_1 [0]),
        .I2(\reg_reg[7]_0 [1]),
        .I3(\reg_reg[7]_1 [1]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \reg[7]_i_1 
       (.I0(CO),
        .I1(Q[1]),
        .O(En));
  FDPE #(
    .INIT(1'b1)) 
    \reg_reg[0] 
       (.C(CLK),
        .CE(En),
        .D(\reg_reg[7]_1 [0]),
        .PRE(Q[0]),
        .Q(\reg_reg[7]_0 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \reg_reg[1] 
       (.C(CLK),
        .CE(En),
        .D(\reg_reg[7]_1 [1]),
        .PRE(Q[0]),
        .Q(\reg_reg[7]_0 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \reg_reg[2] 
       (.C(CLK),
        .CE(En),
        .D(\reg_reg[7]_1 [2]),
        .PRE(Q[0]),
        .Q(\reg_reg[7]_0 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \reg_reg[3] 
       (.C(CLK),
        .CE(En),
        .D(\reg_reg[7]_1 [3]),
        .PRE(Q[0]),
        .Q(\reg_reg[7]_0 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \reg_reg[4] 
       (.C(CLK),
        .CE(En),
        .D(\reg_reg[7]_1 [4]),
        .PRE(Q[0]),
        .Q(\reg_reg[7]_0 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \reg_reg[5] 
       (.C(CLK),
        .CE(En),
        .D(\reg_reg[7]_1 [5]),
        .PRE(Q[0]),
        .Q(\reg_reg[7]_0 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \reg_reg[6] 
       (.C(CLK),
        .CE(En),
        .D(\reg_reg[7]_1 [6]),
        .PRE(Q[0]),
        .Q(\reg_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \reg_reg[7] 
       (.C(CLK),
        .CE(En),
        .CLR(Q[0]),
        .D(\reg_reg[7]_1 [7]),
        .Q(\reg_reg[7]_0 [7]));
endmodule
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
