-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Jun 13 23:15:25 2024
-- Host        : DESKTOP-GEJ0KOM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Truong/Desktop/digital_design/Max_Diff/Max_Diff.sim/sim_1/synth/func/xsim/Max_Diff_tb3_func_synth.vhd
-- Design      : Max_Diff
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_Nbit is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    N_minus1_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Clk_IBUF_BUFG : in STD_LOGIC;
    Addr_in_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Counter_Nbit;

architecture STRUCTURE of Counter_Nbit is
  signal \Count[7]_i_2_n_0\ : STD_LOGIC;
  signal \Count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \reg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \reg_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \reg_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \reg_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_reg_reg[7]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Count[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Count[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \Count[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Count[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \Count[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \Count[7]_i_1\ : label is "soft_lutpair5";
begin
\Count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Count_reg__0\(0),
      O => plusOp(0)
    );
\Count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Count_reg__0\(0),
      I1 => \Count_reg__0\(1),
      O => plusOp(1)
    );
\Count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Count_reg__0\(0),
      I1 => \Count_reg__0\(1),
      I2 => \Count_reg__0\(2),
      O => plusOp(2)
    );
\Count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \Count_reg__0\(1),
      I1 => \Count_reg__0\(0),
      I2 => \Count_reg__0\(2),
      I3 => \Count_reg__0\(3),
      O => plusOp(3)
    );
\Count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => \Count_reg__0\(0),
      I2 => \Count_reg__0\(1),
      I3 => \Count_reg__0\(3),
      I4 => \Count_reg__0\(4),
      O => plusOp(4)
    );
\Count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \Count_reg__0\(3),
      I1 => \Count_reg__0\(1),
      I2 => \Count_reg__0\(0),
      I3 => \Count_reg__0\(2),
      I4 => \Count_reg__0\(4),
      I5 => \Count_reg__0\(5),
      O => plusOp(5)
    );
\Count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Count[7]_i_2_n_0\,
      I1 => \Count_reg__0\(6),
      O => plusOp(6)
    );
\Count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \Count[7]_i_2_n_0\,
      I1 => \Count_reg__0\(6),
      I2 => \Count_reg__0\(7),
      O => plusOp(7)
    );
\Count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \Count_reg__0\(5),
      I1 => \Count_reg__0\(3),
      I2 => \Count_reg__0\(1),
      I3 => \Count_reg__0\(0),
      I4 => \Count_reg__0\(2),
      I5 => \Count_reg__0\(4),
      O => \Count[7]_i_2_n_0\
    );
\Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => plusOp(0),
      Q => \Count_reg__0\(0),
      R => Q(0)
    );
\Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => plusOp(1),
      Q => \Count_reg__0\(1),
      R => Q(0)
    );
\Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => plusOp(2),
      Q => \Count_reg__0\(2),
      R => Q(0)
    );
\Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => plusOp(3),
      Q => \Count_reg__0\(3),
      R => Q(0)
    );
\Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => plusOp(4),
      Q => \Count_reg__0\(4),
      R => Q(0)
    );
\Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => plusOp(5),
      Q => \Count_reg__0\(5),
      R => Q(0)
    );
\Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => plusOp(6),
      Q => \Count_reg__0\(6),
      R => Q(0)
    );
\Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => plusOp(7),
      Q => \Count_reg__0\(7),
      R => Q(0)
    );
index_gt_Nminus10_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \Count_reg__0\(6),
      I1 => N_minus1_IBUF(6),
      I2 => N_minus1_IBUF(7),
      I3 => \Count_reg__0\(7),
      O => DI(3)
    );
index_gt_Nminus10_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \Count_reg__0\(4),
      I1 => N_minus1_IBUF(4),
      I2 => N_minus1_IBUF(5),
      I3 => \Count_reg__0\(5),
      O => DI(2)
    );
index_gt_Nminus10_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => N_minus1_IBUF(2),
      I2 => N_minus1_IBUF(3),
      I3 => \Count_reg__0\(3),
      O => DI(1)
    );
index_gt_Nminus10_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \Count_reg__0\(0),
      I1 => N_minus1_IBUF(0),
      I2 => N_minus1_IBUF(1),
      I3 => \Count_reg__0\(1),
      O => DI(0)
    );
index_gt_Nminus10_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \Count_reg__0\(6),
      I1 => N_minus1_IBUF(6),
      I2 => \Count_reg__0\(7),
      I3 => N_minus1_IBUF(7),
      O => S(3)
    );
index_gt_Nminus10_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \Count_reg__0\(4),
      I1 => N_minus1_IBUF(4),
      I2 => \Count_reg__0\(5),
      I3 => N_minus1_IBUF(5),
      O => S(2)
    );
index_gt_Nminus10_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => N_minus1_IBUF(2),
      I2 => \Count_reg__0\(3),
      I3 => N_minus1_IBUF(3),
      O => S(1)
    );
index_gt_Nminus10_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \Count_reg__0\(0),
      I1 => N_minus1_IBUF(0),
      I2 => \Count_reg__0\(1),
      I3 => N_minus1_IBUF(1),
      O => S(0)
    );
\reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Count_reg__0\(3),
      I1 => Q(0),
      O => \reg[3]_i_2_n_0\
    );
\reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => Q(0),
      O => \reg[3]_i_3_n_0\
    );
\reg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Count_reg__0\(1),
      I1 => Q(0),
      O => \reg[3]_i_4_n_0\
    );
\reg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Count_reg__0\(0),
      I1 => Q(0),
      O => \reg[3]_i_5_n_0\
    );
\reg[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \Count_reg__0\(3),
      I1 => Q(0),
      I2 => Addr_in_IBUF(3),
      O => \reg[3]_i_6_n_0\
    );
\reg[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \Count_reg__0\(2),
      I1 => Q(0),
      I2 => Addr_in_IBUF(2),
      O => \reg[3]_i_7_n_0\
    );
\reg[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \Count_reg__0\(1),
      I1 => Q(0),
      I2 => Addr_in_IBUF(1),
      O => \reg[3]_i_8_n_0\
    );
\reg[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \Count_reg__0\(0),
      I1 => Q(0),
      I2 => Addr_in_IBUF(0),
      O => \reg[3]_i_9_n_0\
    );
\reg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Count_reg__0\(6),
      I1 => Q(0),
      O => \reg[7]_i_3_n_0\
    );
\reg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Count_reg__0\(5),
      I1 => Q(0),
      O => \reg[7]_i_4_n_0\
    );
\reg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Count_reg__0\(4),
      I1 => Q(0),
      O => \reg[7]_i_5_n_0\
    );
\reg[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \Count_reg__0\(7),
      I1 => Q(0),
      I2 => Addr_in_IBUF(7),
      O => \reg[7]_i_6_n_0\
    );
\reg[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \Count_reg__0\(6),
      I1 => Q(0),
      I2 => Addr_in_IBUF(6),
      O => \reg[7]_i_7_n_0\
    );
\reg[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \Count_reg__0\(5),
      I1 => Q(0),
      I2 => Addr_in_IBUF(5),
      O => \reg[7]_i_8_n_0\
    );
\reg[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \Count_reg__0\(4),
      I1 => Q(0),
      I2 => Addr_in_IBUF(4),
      O => \reg[7]_i_9_n_0\
    );
\reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \reg_reg[3]_i_1_n_0\,
      CO(2) => \reg_reg[3]_i_1_n_1\,
      CO(1) => \reg_reg[3]_i_1_n_2\,
      CO(0) => \reg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \reg[3]_i_2_n_0\,
      DI(2) => \reg[3]_i_3_n_0\,
      DI(1) => \reg[3]_i_4_n_0\,
      DI(0) => \reg[3]_i_5_n_0\,
      O(3 downto 0) => \out\(3 downto 0),
      S(3) => \reg[3]_i_6_n_0\,
      S(2) => \reg[3]_i_7_n_0\,
      S(1) => \reg[3]_i_8_n_0\,
      S(0) => \reg[3]_i_9_n_0\
    );
\reg_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg_reg[3]_i_1_n_0\,
      CO(3) => \NLW_reg_reg[7]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \reg_reg[7]_i_2_n_1\,
      CO(1) => \reg_reg[7]_i_2_n_2\,
      CO(0) => \reg_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \reg[7]_i_3_n_0\,
      DI(1) => \reg[7]_i_4_n_0\,
      DI(0) => \reg[7]_i_5_n_0\,
      O(3 downto 0) => \out\(7 downto 4),
      S(3) => \reg[7]_i_6_n_0\,
      S(2) => \reg[7]_i_7_n_0\,
      S(1) => \reg[7]_i_8_n_0\,
      S(0) => \reg[7]_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Max_Diff_Controller is
  port (
    Done_OBUF : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[6]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[6]_1\ : out STD_LOGIC;
    Start_IBUF : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    NS_ready_IBUF : in STD_LOGIC;
    R_ready_IBUF : in STD_LOGIC;
    \reg_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    nReset_in_IBUF : in STD_LOGIC;
    Clk_IBUF_BUFG : in STD_LOGIC
  );
end Max_Diff_Controller;

architecture STRUCTURE of Max_Diff_Controller is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal addr_ld_wire : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Done_OBUF_inst_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "s4:1000000,s0:0000001,s1:0000010,s2:0010000,s3:0100000,s5:0000100,s6:0001000";
  attribute SOFT_HLUTNM of \reg[6]_i_1\ : label is "soft_lutpair3";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
Done_OBUF_inst_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^q\(0),
      O => Done_OBUF
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => Start_IBUF,
      I2 => \^q\(0),
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^q\(4),
      I1 => Start_IBUF,
      I2 => \^q\(0),
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => CO(0),
      I1 => addr_ld_wire,
      I2 => NS_ready_IBUF,
      I3 => \^q\(1),
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => NS_ready_IBUF,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => CO(0),
      I1 => addr_ld_wire,
      I2 => R_ready_IBUF,
      I3 => \^q\(2),
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(2),
      I1 => R_ready_IBUF,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => nReset_in_IBUF,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \^q\(0),
      S => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => addr_ld_wire,
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \^q\(1),
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \^q\(2),
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \^q\(3),
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \^q\(3),
      Q => \^q\(4),
      R => \FSM_onehot_state[6]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \reg_reg[0]\(0),
      O => \FSM_onehot_state_reg[6]_0\
    );
\reg[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \reg_reg[0]_0\(0),
      O => \FSM_onehot_state_reg[6]_1\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => addr_ld_wire,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Regn is
  port (
    \reg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Clk_IBUF_BUFG : in STD_LOGIC
  );
end Regn;

architecture STRUCTURE of Regn is
begin
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => \out\(0),
      Q => \reg_reg[7]_0\(0),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => \out\(1),
      Q => \reg_reg[7]_0\(1),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => \out\(2),
      Q => \reg_reg[7]_0\(2),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => \out\(3),
      Q => \reg_reg[7]_0\(3),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => \out\(4),
      Q => \reg_reg[7]_0\(4),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => \out\(5),
      Q => \reg_reg[7]_0\(5),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => \out\(6),
      Q => \reg_reg[7]_0\(6),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => E(0),
      D => \out\(7),
      Q => \reg_reg[7]_0\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Regn_0 is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reg : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    max_ld0_carry : in STD_LOGIC;
    max_ld0_carry_0 : in STD_LOGIC;
    max_ld0_carry_1 : in STD_LOGIC;
    max_ld0_carry_2 : in STD_LOGIC;
    max_ld0_carry_3 : in STD_LOGIC;
    max_ld0_carry_4 : in STD_LOGIC;
    max_ld0_carry_5 : in STD_LOGIC;
    max_ld0_carry_6 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Data_in_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Regn_0 : entity is "Regn";
end Regn_0;

architecture STRUCTURE of Regn_0 is
  signal \^reg\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  reg(7 downto 0) <= \^reg\(7 downto 0);
max_ld0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^reg\(6),
      I1 => max_ld0_carry_5,
      I2 => \^reg\(7),
      I3 => max_ld0_carry_6,
      O => DI(3)
    );
max_ld0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^reg\(4),
      I1 => max_ld0_carry_3,
      I2 => max_ld0_carry_4,
      I3 => \^reg\(5),
      O => DI(2)
    );
max_ld0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^reg\(2),
      I1 => max_ld0_carry_1,
      I2 => max_ld0_carry_2,
      I3 => \^reg\(3),
      O => DI(1)
    );
max_ld0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^reg\(0),
      I1 => max_ld0_carry,
      I2 => max_ld0_carry_0,
      I3 => \^reg\(1),
      O => DI(0)
    );
max_ld0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg\(6),
      I1 => max_ld0_carry_5,
      I2 => max_ld0_carry_6,
      I3 => \^reg\(7),
      O => S(3)
    );
max_ld0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg\(4),
      I1 => max_ld0_carry_3,
      I2 => \^reg\(5),
      I3 => max_ld0_carry_4,
      O => S(2)
    );
max_ld0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg\(2),
      I1 => max_ld0_carry_1,
      I2 => \^reg\(3),
      I3 => max_ld0_carry_2,
      O => S(1)
    );
max_ld0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg\(0),
      I1 => max_ld0_carry,
      I2 => \^reg\(1),
      I3 => max_ld0_carry_0,
      O => S(0)
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => Data_in_IBUF(0),
      Q => \^reg\(0),
      R => Q(0)
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => Data_in_IBUF(1),
      Q => \^reg\(1),
      R => Q(0)
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => Data_in_IBUF(2),
      Q => \^reg\(2),
      R => Q(0)
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => Data_in_IBUF(3),
      Q => \^reg\(3),
      R => Q(0)
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => Data_in_IBUF(4),
      Q => \^reg\(4),
      R => Q(0)
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => Data_in_IBUF(5),
      Q => \^reg\(5),
      R => Q(0)
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => Data_in_IBUF(6),
      Q => \^reg\(6),
      R => Q(0)
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(1),
      D => Data_in_IBUF(7),
      Q => \^reg\(7),
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Regn_1 is
  port (
    \reg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Clk_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Regn_1 : entity is "Regn";
end Regn_1;

architecture STRUCTURE of Regn_1 is
begin
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(0),
      D => D(0),
      Q => \reg_reg[7]_0\(0),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(0),
      D => D(1),
      Q => \reg_reg[7]_0\(1),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(0),
      D => D(2),
      Q => \reg_reg[7]_0\(2),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(0),
      D => D(3),
      Q => \reg_reg[7]_0\(3),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(0),
      D => D(4),
      Q => \reg_reg[7]_0\(4),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(0),
      D => D(5),
      Q => \reg_reg[7]_0\(5),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(0),
      D => D(6),
      Q => \reg_reg[7]_0\(6),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => Q(0),
      D => D(7),
      Q => \reg_reg[7]_0\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Regn_2 is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[7]_0\ : out STD_LOGIC;
    \reg_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg_reg[7]_1\ : in STD_LOGIC;
    \reg_reg[3]_1\ : in STD_LOGIC;
    \reg_reg[3]_2\ : in STD_LOGIC;
    \reg_reg[3]_3\ : in STD_LOGIC;
    \reg_reg[3]_4\ : in STD_LOGIC;
    \reg_reg[7]_2\ : in STD_LOGIC;
    \reg_reg[7]_3\ : in STD_LOGIC;
    \reg_reg[7]_4\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_reg[0]_0\ : in STD_LOGIC;
    reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Clk_IBUF_BUFG : in STD_LOGIC;
    \reg_reg[7]_5\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Regn_2 : entity is "Regn";
end Regn_2;

architecture STRUCTURE of Regn_2 is
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \^reg_reg[6]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^reg_reg[7]_0\ : STD_LOGIC;
begin
  DI(3 downto 0) <= \^di\(3 downto 0);
  \reg_reg[6]_0\(2 downto 0) <= \^reg_reg[6]_0\(2 downto 0);
  \reg_reg[7]_0\ <= \^reg_reg[7]_0\;
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFECCC"
    )
        port map (
      I0 => reg(7),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \reg_reg[7]_5\(0),
      I4 => \^reg_reg[7]_0\,
      O => \reg[7]_i_1_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_0\,
      D => reg(0),
      Q => \^di\(0),
      R => Q(0)
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_0\,
      D => reg(1),
      Q => \^di\(1),
      R => Q(0)
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_0\,
      D => reg(2),
      Q => \^di\(2),
      R => Q(0)
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_0\,
      D => reg(3),
      Q => \^di\(3),
      R => Q(0)
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_0\,
      D => reg(4),
      Q => \^reg_reg[6]_0\(0),
      R => Q(0)
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_0\,
      D => reg(5),
      Q => \^reg_reg[6]_0\(1),
      R => Q(0)
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_0\,
      D => reg(6),
      Q => \^reg_reg[6]_0\(2),
      R => Q(0)
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \reg[7]_i_1_n_0\,
      Q => \^reg_reg[7]_0\,
      R => '0'
    );
\sub_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^reg_reg[7]_0\,
      I1 => \reg_reg[7]_1\,
      O => S(3)
    );
\sub_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^reg_reg[6]_0\(2),
      I1 => \reg_reg[7]_4\,
      O => S(2)
    );
\sub_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^reg_reg[6]_0\(1),
      I1 => \reg_reg[7]_3\,
      O => S(1)
    );
\sub_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^reg_reg[6]_0\(0),
      I1 => \reg_reg[7]_2\,
      O => S(0)
    );
sub_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(3),
      I1 => \reg_reg[3]_4\,
      O => \reg_reg[3]_0\(3)
    );
sub_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(2),
      I1 => \reg_reg[3]_3\,
      O => \reg_reg[3]_0\(2)
    );
sub_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(1),
      I1 => \reg_reg[3]_2\,
      O => \reg_reg[3]_0\(1)
    );
sub_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^di\(0),
      I1 => \reg_reg[3]_1\,
      O => \reg_reg[3]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Regn_3 is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[0]_0\ : out STD_LOGIC;
    \reg_reg[1]_0\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[2]_0\ : out STD_LOGIC;
    \reg_reg[3]_0\ : out STD_LOGIC;
    \reg_reg[4]_0\ : out STD_LOGIC;
    \reg_reg[5]_0\ : out STD_LOGIC;
    \reg_reg[6]_0\ : out STD_LOGIC;
    \reg_reg[7]_0\ : out STD_LOGIC;
    reg : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_reg[0]_1\ : in STD_LOGIC;
    Clk_IBUF_BUFG : in STD_LOGIC;
    \reg_reg[7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Regn_3 : entity is "Regn";
end Regn_3;

architecture STRUCTURE of Regn_3 is
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \^reg_reg[0]_0\ : STD_LOGIC;
  signal \^reg_reg[1]_0\ : STD_LOGIC;
  signal \^reg_reg[2]_0\ : STD_LOGIC;
  signal \^reg_reg[3]_0\ : STD_LOGIC;
  signal \^reg_reg[4]_0\ : STD_LOGIC;
  signal \^reg_reg[5]_0\ : STD_LOGIC;
  signal \^reg_reg[6]_0\ : STD_LOGIC;
  signal \^reg_reg[7]_0\ : STD_LOGIC;
begin
  \reg_reg[0]_0\ <= \^reg_reg[0]_0\;
  \reg_reg[1]_0\ <= \^reg_reg[1]_0\;
  \reg_reg[2]_0\ <= \^reg_reg[2]_0\;
  \reg_reg[3]_0\ <= \^reg_reg[3]_0\;
  \reg_reg[4]_0\ <= \^reg_reg[4]_0\;
  \reg_reg[5]_0\ <= \^reg_reg[5]_0\;
  \reg_reg[6]_0\ <= \^reg_reg[6]_0\;
  \reg_reg[7]_0\ <= \^reg_reg[7]_0\;
min_ld0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^reg_reg[6]_0\,
      I1 => reg(6),
      I2 => \^reg_reg[7]_0\,
      I3 => reg(7),
      O => DI(3)
    );
min_ld0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^reg_reg[4]_0\,
      I1 => reg(4),
      I2 => reg(5),
      I3 => \^reg_reg[5]_0\,
      O => DI(2)
    );
min_ld0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^reg_reg[2]_0\,
      I1 => reg(2),
      I2 => reg(3),
      I3 => \^reg_reg[3]_0\,
      O => DI(1)
    );
min_ld0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^reg_reg[0]_0\,
      I1 => reg(0),
      I2 => reg(1),
      I3 => \^reg_reg[1]_0\,
      O => DI(0)
    );
min_ld0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_reg[6]_0\,
      I1 => reg(6),
      I2 => reg(7),
      I3 => \^reg_reg[7]_0\,
      O => S(3)
    );
min_ld0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_reg[4]_0\,
      I1 => reg(4),
      I2 => \^reg_reg[5]_0\,
      I3 => reg(5),
      O => S(2)
    );
min_ld0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_reg[2]_0\,
      I1 => reg(2),
      I2 => \^reg_reg[3]_0\,
      I3 => reg(3),
      O => S(1)
    );
min_ld0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^reg_reg[0]_0\,
      I1 => reg(0),
      I2 => \^reg_reg[1]_0\,
      I3 => reg(1),
      O => S(0)
    );
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23332000"
    )
        port map (
      I0 => reg(7),
      I1 => Q(0),
      I2 => Q(1),
      I3 => \reg_reg[7]_1\(0),
      I4 => \^reg_reg[7]_0\,
      O => \reg[7]_i_1_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_1\,
      D => reg(0),
      Q => \^reg_reg[0]_0\,
      S => Q(0)
    );
\reg_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_1\,
      D => reg(1),
      Q => \^reg_reg[1]_0\,
      S => Q(0)
    );
\reg_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_1\,
      D => reg(2),
      Q => \^reg_reg[2]_0\,
      S => Q(0)
    );
\reg_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_1\,
      D => reg(3),
      Q => \^reg_reg[3]_0\,
      S => Q(0)
    );
\reg_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_1\,
      D => reg(4),
      Q => \^reg_reg[4]_0\,
      S => Q(0)
    );
\reg_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_1\,
      D => reg(5),
      Q => \^reg_reg[5]_0\,
      S => Q(0)
    );
\reg_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => \reg_reg[0]_1\,
      D => reg(6),
      Q => \^reg_reg[6]_0\,
      S => Q(0)
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => Clk_IBUF_BUFG,
      CE => '1',
      D => \reg[7]_i_1_n_0\,
      Q => \^reg_reg[7]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Max_Diff_Datapath is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[6]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    N_minus1_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    Clk_IBUF_BUFG : in STD_LOGIC;
    Data_in_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_reg[0]\ : in STD_LOGIC;
    \reg_reg[0]_0\ : in STD_LOGIC;
    Addr_in_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Max_Diff_Datapath;

architecture STRUCTURE of Max_Diff_Datapath is
  signal data_reg_n_0 : STD_LOGIC;
  signal data_reg_n_1 : STD_LOGIC;
  signal data_reg_n_12 : STD_LOGIC;
  signal data_reg_n_13 : STD_LOGIC;
  signal data_reg_n_14 : STD_LOGIC;
  signal data_reg_n_15 : STD_LOGIC;
  signal data_reg_n_2 : STD_LOGIC;
  signal data_reg_n_3 : STD_LOGIC;
  signal index_cnter_n_0 : STD_LOGIC;
  signal index_cnter_n_1 : STD_LOGIC;
  signal index_cnter_n_10 : STD_LOGIC;
  signal index_cnter_n_11 : STD_LOGIC;
  signal index_cnter_n_12 : STD_LOGIC;
  signal index_cnter_n_13 : STD_LOGIC;
  signal index_cnter_n_14 : STD_LOGIC;
  signal index_cnter_n_15 : STD_LOGIC;
  signal index_cnter_n_2 : STD_LOGIC;
  signal index_cnter_n_3 : STD_LOGIC;
  signal index_cnter_n_4 : STD_LOGIC;
  signal index_cnter_n_5 : STD_LOGIC;
  signal index_cnter_n_6 : STD_LOGIC;
  signal index_cnter_n_7 : STD_LOGIC;
  signal index_cnter_n_8 : STD_LOGIC;
  signal index_cnter_n_9 : STD_LOGIC;
  signal index_gt_Nminus10_carry_n_1 : STD_LOGIC;
  signal index_gt_Nminus10_carry_n_2 : STD_LOGIC;
  signal index_gt_Nminus10_carry_n_3 : STD_LOGIC;
  signal max_ld0_carry_n_1 : STD_LOGIC;
  signal max_ld0_carry_n_2 : STD_LOGIC;
  signal max_ld0_carry_n_3 : STD_LOGIC;
  signal max_reg_n_0 : STD_LOGIC;
  signal max_reg_n_1 : STD_LOGIC;
  signal max_reg_n_10 : STD_LOGIC;
  signal max_reg_n_11 : STD_LOGIC;
  signal max_reg_n_12 : STD_LOGIC;
  signal max_reg_n_13 : STD_LOGIC;
  signal max_reg_n_14 : STD_LOGIC;
  signal max_reg_n_15 : STD_LOGIC;
  signal max_reg_n_2 : STD_LOGIC;
  signal max_reg_n_3 : STD_LOGIC;
  signal max_reg_n_4 : STD_LOGIC;
  signal max_reg_n_5 : STD_LOGIC;
  signal max_reg_n_6 : STD_LOGIC;
  signal max_reg_n_7 : STD_LOGIC;
  signal max_reg_n_8 : STD_LOGIC;
  signal max_reg_n_9 : STD_LOGIC;
  signal min_ld0_carry_n_1 : STD_LOGIC;
  signal min_ld0_carry_n_2 : STD_LOGIC;
  signal min_ld0_carry_n_3 : STD_LOGIC;
  signal min_reg_n_0 : STD_LOGIC;
  signal min_reg_n_1 : STD_LOGIC;
  signal min_reg_n_10 : STD_LOGIC;
  signal min_reg_n_11 : STD_LOGIC;
  signal min_reg_n_12 : STD_LOGIC;
  signal min_reg_n_13 : STD_LOGIC;
  signal min_reg_n_14 : STD_LOGIC;
  signal min_reg_n_15 : STD_LOGIC;
  signal min_reg_n_2 : STD_LOGIC;
  signal min_reg_n_3 : STD_LOGIC;
  signal min_reg_n_4 : STD_LOGIC;
  signal min_reg_n_5 : STD_LOGIC;
  signal min_reg_n_6 : STD_LOGIC;
  signal min_reg_n_7 : STD_LOGIC;
  signal min_reg_n_8 : STD_LOGIC;
  signal min_reg_n_9 : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^reg_reg[6]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^reg_reg[6]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sub : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sub_carry__0_n_1\ : STD_LOGIC;
  signal \sub_carry__0_n_2\ : STD_LOGIC;
  signal \sub_carry__0_n_3\ : STD_LOGIC;
  signal sub_carry_n_0 : STD_LOGIC;
  signal sub_carry_n_1 : STD_LOGIC;
  signal sub_carry_n_2 : STD_LOGIC;
  signal sub_carry_n_3 : STD_LOGIC;
  signal NLW_index_gt_Nminus10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_max_ld0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_min_ld0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sub_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  \reg_reg[6]\(0) <= \^reg_reg[6]\(0);
  \reg_reg[6]_0\(0) <= \^reg_reg[6]_0\(0);
Addr_reg: entity work.Regn
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      E(0) => E(0),
      \out\(7) => index_cnter_n_8,
      \out\(6) => index_cnter_n_9,
      \out\(5) => index_cnter_n_10,
      \out\(4) => index_cnter_n_11,
      \out\(3) => index_cnter_n_12,
      \out\(2) => index_cnter_n_13,
      \out\(1) => index_cnter_n_14,
      \out\(0) => index_cnter_n_15,
      \reg_reg[7]_0\(7 downto 0) => \reg_reg[7]\(7 downto 0)
    );
data_reg: entity work.Regn_0
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      DI(3) => data_reg_n_12,
      DI(2) => data_reg_n_13,
      DI(1) => data_reg_n_14,
      DI(0) => data_reg_n_15,
      Data_in_IBUF(7 downto 0) => Data_in_IBUF(7 downto 0),
      Q(1) => Q(2),
      Q(0) => Q(0),
      S(3) => data_reg_n_0,
      S(2) => data_reg_n_1,
      S(1) => data_reg_n_2,
      S(0) => data_reg_n_3,
      max_ld0_carry => max_reg_n_12,
      max_ld0_carry_0 => max_reg_n_11,
      max_ld0_carry_1 => max_reg_n_10,
      max_ld0_carry_2 => max_reg_n_9,
      max_ld0_carry_3 => max_reg_n_15,
      max_ld0_carry_4 => max_reg_n_14,
      max_ld0_carry_5 => max_reg_n_13,
      max_ld0_carry_6 => max_reg_n_4,
      reg(7 downto 0) => reg(7 downto 0)
    );
diff_reg: entity work.Regn_1
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      D(7 downto 0) => sub(7 downto 0),
      Q(0) => Q(1),
      \reg_reg[7]_0\(7 downto 0) => \reg_reg[7]_0\(7 downto 0)
    );
index_cnter: entity work.Counter_Nbit
     port map (
      Addr_in_IBUF(7 downto 0) => Addr_in_IBUF(7 downto 0),
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      DI(3) => index_cnter_n_4,
      DI(2) => index_cnter_n_5,
      DI(1) => index_cnter_n_6,
      DI(0) => index_cnter_n_7,
      N_minus1_IBUF(7 downto 0) => N_minus1_IBUF(7 downto 0),
      Q(1) => Q(3),
      Q(0) => Q(0),
      S(3) => index_cnter_n_0,
      S(2) => index_cnter_n_1,
      S(1) => index_cnter_n_2,
      S(0) => index_cnter_n_3,
      \out\(7) => index_cnter_n_8,
      \out\(6) => index_cnter_n_9,
      \out\(5) => index_cnter_n_10,
      \out\(4) => index_cnter_n_11,
      \out\(3) => index_cnter_n_12,
      \out\(2) => index_cnter_n_13,
      \out\(1) => index_cnter_n_14,
      \out\(0) => index_cnter_n_15
    );
index_gt_Nminus10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CO(0),
      CO(2) => index_gt_Nminus10_carry_n_1,
      CO(1) => index_gt_Nminus10_carry_n_2,
      CO(0) => index_gt_Nminus10_carry_n_3,
      CYINIT => '0',
      DI(3) => index_cnter_n_4,
      DI(2) => index_cnter_n_5,
      DI(1) => index_cnter_n_6,
      DI(0) => index_cnter_n_7,
      O(3 downto 0) => NLW_index_gt_Nminus10_carry_O_UNCONNECTED(3 downto 0),
      S(3) => index_cnter_n_0,
      S(2) => index_cnter_n_1,
      S(1) => index_cnter_n_2,
      S(0) => index_cnter_n_3
    );
max_ld0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^reg_reg[6]_0\(0),
      CO(2) => max_ld0_carry_n_1,
      CO(1) => max_ld0_carry_n_2,
      CO(0) => max_ld0_carry_n_3,
      CYINIT => '0',
      DI(3) => data_reg_n_12,
      DI(2) => data_reg_n_13,
      DI(1) => data_reg_n_14,
      DI(0) => data_reg_n_15,
      O(3 downto 0) => NLW_max_ld0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => data_reg_n_0,
      S(2) => data_reg_n_1,
      S(1) => data_reg_n_2,
      S(0) => data_reg_n_3
    );
max_reg: entity work.Regn_2
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      DI(3) => max_reg_n_9,
      DI(2) => max_reg_n_10,
      DI(1) => max_reg_n_11,
      DI(0) => max_reg_n_12,
      Q(1) => Q(3),
      Q(0) => Q(0),
      S(3) => max_reg_n_0,
      S(2) => max_reg_n_1,
      S(1) => max_reg_n_2,
      S(0) => max_reg_n_3,
      reg(7 downto 0) => reg(7 downto 0),
      \reg_reg[0]_0\ => \reg_reg[0]_0\,
      \reg_reg[3]_0\(3) => max_reg_n_5,
      \reg_reg[3]_0\(2) => max_reg_n_6,
      \reg_reg[3]_0\(1) => max_reg_n_7,
      \reg_reg[3]_0\(0) => max_reg_n_8,
      \reg_reg[3]_1\ => min_reg_n_4,
      \reg_reg[3]_2\ => min_reg_n_5,
      \reg_reg[3]_3\ => min_reg_n_10,
      \reg_reg[3]_4\ => min_reg_n_11,
      \reg_reg[6]_0\(2) => max_reg_n_13,
      \reg_reg[6]_0\(1) => max_reg_n_14,
      \reg_reg[6]_0\(0) => max_reg_n_15,
      \reg_reg[7]_0\ => max_reg_n_4,
      \reg_reg[7]_1\ => min_reg_n_15,
      \reg_reg[7]_2\ => min_reg_n_12,
      \reg_reg[7]_3\ => min_reg_n_13,
      \reg_reg[7]_4\ => min_reg_n_14,
      \reg_reg[7]_5\(0) => \^reg_reg[6]_0\(0)
    );
min_ld0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \^reg_reg[6]\(0),
      CO(2) => min_ld0_carry_n_1,
      CO(1) => min_ld0_carry_n_2,
      CO(0) => min_ld0_carry_n_3,
      CYINIT => '0',
      DI(3) => min_reg_n_6,
      DI(2) => min_reg_n_7,
      DI(1) => min_reg_n_8,
      DI(0) => min_reg_n_9,
      O(3 downto 0) => NLW_min_ld0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => min_reg_n_0,
      S(2) => min_reg_n_1,
      S(1) => min_reg_n_2,
      S(0) => min_reg_n_3
    );
min_reg: entity work.Regn_3
     port map (
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      DI(3) => min_reg_n_6,
      DI(2) => min_reg_n_7,
      DI(1) => min_reg_n_8,
      DI(0) => min_reg_n_9,
      Q(1) => Q(3),
      Q(0) => Q(0),
      S(3) => min_reg_n_0,
      S(2) => min_reg_n_1,
      S(1) => min_reg_n_2,
      S(0) => min_reg_n_3,
      reg(7 downto 0) => reg(7 downto 0),
      \reg_reg[0]_0\ => min_reg_n_4,
      \reg_reg[0]_1\ => \reg_reg[0]\,
      \reg_reg[1]_0\ => min_reg_n_5,
      \reg_reg[2]_0\ => min_reg_n_10,
      \reg_reg[3]_0\ => min_reg_n_11,
      \reg_reg[4]_0\ => min_reg_n_12,
      \reg_reg[5]_0\ => min_reg_n_13,
      \reg_reg[6]_0\ => min_reg_n_14,
      \reg_reg[7]_0\ => min_reg_n_15,
      \reg_reg[7]_1\(0) => \^reg_reg[6]\(0)
    );
sub_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sub_carry_n_0,
      CO(2) => sub_carry_n_1,
      CO(1) => sub_carry_n_2,
      CO(0) => sub_carry_n_3,
      CYINIT => '1',
      DI(3) => max_reg_n_9,
      DI(2) => max_reg_n_10,
      DI(1) => max_reg_n_11,
      DI(0) => max_reg_n_12,
      O(3 downto 0) => sub(3 downto 0),
      S(3) => max_reg_n_5,
      S(2) => max_reg_n_6,
      S(1) => max_reg_n_7,
      S(0) => max_reg_n_8
    );
\sub_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sub_carry_n_0,
      CO(3) => \NLW_sub_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \sub_carry__0_n_1\,
      CO(1) => \sub_carry__0_n_2\,
      CO(0) => \sub_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => max_reg_n_13,
      DI(1) => max_reg_n_14,
      DI(0) => max_reg_n_15,
      O(3 downto 0) => sub(7 downto 4),
      S(3) => max_reg_n_0,
      S(2) => max_reg_n_1,
      S(1) => max_reg_n_2,
      S(0) => max_reg_n_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Max_Diff is
  port (
    nReset_in : in STD_LOGIC;
    Clk : in STD_LOGIC;
    Start : in STD_LOGIC;
    Done : out STD_LOGIC;
    R_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    R_en : out STD_LOGIC;
    R_ready : in STD_LOGIC;
    Data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    W_valid : out STD_LOGIC;
    NS_ready : in STD_LOGIC;
    Diff : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Addr_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    N_minus1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Max_Diff : entity is true;
  attribute ADDR_WIDTH : integer;
  attribute ADDR_WIDTH of Max_Diff : entity is 8;
  attribute DATA_WIDTH : integer;
  attribute DATA_WIDTH of Max_Diff : entity is 8;
end Max_Diff;

architecture STRUCTURE of Max_Diff is
  signal Addr_in_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Clk_IBUF : STD_LOGIC;
  signal Clk_IBUF_BUFG : STD_LOGIC;
  signal Data_in_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Diff_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Done_OBUF : STD_LOGIC;
  signal NS_ready_IBUF : STD_LOGIC;
  signal N_minus1_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal R_addr_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal R_en_OBUF : STD_LOGIC;
  signal R_ready_IBUF : STD_LOGIC;
  signal Start_IBUF : STD_LOGIC;
  signal W_valid_OBUF : STD_LOGIC;
  signal data_ld_wire : STD_LOGIC;
  signal index_gt_Nminus1_wire : STD_LOGIC;
  signal max_diff_controller_inst_n_5 : STD_LOGIC;
  signal max_diff_controller_inst_n_6 : STD_LOGIC;
  signal max_diff_controller_inst_n_7 : STD_LOGIC;
  signal max_diff_controller_inst_n_8 : STD_LOGIC;
  signal max_lt_data : STD_LOGIC;
  signal min_gt_data : STD_LOGIC;
  signal minmax_ld_en_wire : STD_LOGIC;
  signal nReset_in_IBUF : STD_LOGIC;
begin
\Addr_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Addr_in(0),
      O => Addr_in_IBUF(0)
    );
\Addr_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Addr_in(1),
      O => Addr_in_IBUF(1)
    );
\Addr_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Addr_in(2),
      O => Addr_in_IBUF(2)
    );
\Addr_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Addr_in(3),
      O => Addr_in_IBUF(3)
    );
\Addr_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Addr_in(4),
      O => Addr_in_IBUF(4)
    );
\Addr_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Addr_in(5),
      O => Addr_in_IBUF(5)
    );
\Addr_in_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Addr_in(6),
      O => Addr_in_IBUF(6)
    );
\Addr_in_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Addr_in(7),
      O => Addr_in_IBUF(7)
    );
Clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => Clk_IBUF,
      O => Clk_IBUF_BUFG
    );
Clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Clk,
      O => Clk_IBUF
    );
\Data_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Data_in(0),
      O => Data_in_IBUF(0)
    );
\Data_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Data_in(1),
      O => Data_in_IBUF(1)
    );
\Data_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Data_in(2),
      O => Data_in_IBUF(2)
    );
\Data_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Data_in(3),
      O => Data_in_IBUF(3)
    );
\Data_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Data_in(4),
      O => Data_in_IBUF(4)
    );
\Data_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Data_in(5),
      O => Data_in_IBUF(5)
    );
\Data_in_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Data_in(6),
      O => Data_in_IBUF(6)
    );
\Data_in_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Data_in(7),
      O => Data_in_IBUF(7)
    );
\Diff_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Diff_OBUF(0),
      O => Diff(0)
    );
\Diff_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Diff_OBUF(1),
      O => Diff(1)
    );
\Diff_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Diff_OBUF(2),
      O => Diff(2)
    );
\Diff_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Diff_OBUF(3),
      O => Diff(3)
    );
\Diff_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Diff_OBUF(4),
      O => Diff(4)
    );
\Diff_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Diff_OBUF(5),
      O => Diff(5)
    );
\Diff_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Diff_OBUF(6),
      O => Diff(6)
    );
\Diff_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Diff_OBUF(7),
      O => Diff(7)
    );
Done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Done_OBUF,
      O => Done
    );
NS_ready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => NS_ready,
      O => NS_ready_IBUF
    );
\N_minus1_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => N_minus1(0),
      O => N_minus1_IBUF(0)
    );
\N_minus1_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => N_minus1(1),
      O => N_minus1_IBUF(1)
    );
\N_minus1_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => N_minus1(2),
      O => N_minus1_IBUF(2)
    );
\N_minus1_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => N_minus1(3),
      O => N_minus1_IBUF(3)
    );
\N_minus1_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => N_minus1(4),
      O => N_minus1_IBUF(4)
    );
\N_minus1_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => N_minus1(5),
      O => N_minus1_IBUF(5)
    );
\N_minus1_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => N_minus1(6),
      O => N_minus1_IBUF(6)
    );
\N_minus1_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => N_minus1(7),
      O => N_minus1_IBUF(7)
    );
\R_addr_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_addr_OBUF(0),
      O => R_addr(0)
    );
\R_addr_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_addr_OBUF(1),
      O => R_addr(1)
    );
\R_addr_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_addr_OBUF(2),
      O => R_addr(2)
    );
\R_addr_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_addr_OBUF(3),
      O => R_addr(3)
    );
\R_addr_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_addr_OBUF(4),
      O => R_addr(4)
    );
\R_addr_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_addr_OBUF(5),
      O => R_addr(5)
    );
\R_addr_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_addr_OBUF(6),
      O => R_addr(6)
    );
\R_addr_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => R_addr_OBUF(7),
      O => R_addr(7)
    );
R_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => R_en_OBUF,
      O => R_en
    );
R_ready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => R_ready,
      O => R_ready_IBUF
    );
Start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Start,
      O => Start_IBUF
    );
W_valid_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => W_valid_OBUF,
      O => W_valid
    );
max_diff_controller_inst: entity work.Max_Diff_Controller
     port map (
      CO(0) => index_gt_Nminus1_wire,
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      Done_OBUF => Done_OBUF,
      E(0) => max_diff_controller_inst_n_6,
      \FSM_onehot_state_reg[6]_0\ => max_diff_controller_inst_n_7,
      \FSM_onehot_state_reg[6]_1\ => max_diff_controller_inst_n_8,
      NS_ready_IBUF => NS_ready_IBUF,
      Q(4) => minmax_ld_en_wire,
      Q(3) => data_ld_wire,
      Q(2) => R_en_OBUF,
      Q(1) => W_valid_OBUF,
      Q(0) => max_diff_controller_inst_n_5,
      R_ready_IBUF => R_ready_IBUF,
      Start_IBUF => Start_IBUF,
      nReset_in_IBUF => nReset_in_IBUF,
      \reg_reg[0]\(0) => min_gt_data,
      \reg_reg[0]_0\(0) => max_lt_data
    );
max_diff_datapath_inst: entity work.Max_Diff_Datapath
     port map (
      Addr_in_IBUF(7 downto 0) => Addr_in_IBUF(7 downto 0),
      CO(0) => index_gt_Nminus1_wire,
      Clk_IBUF_BUFG => Clk_IBUF_BUFG,
      Data_in_IBUF(7 downto 0) => Data_in_IBUF(7 downto 0),
      E(0) => max_diff_controller_inst_n_6,
      N_minus1_IBUF(7 downto 0) => N_minus1_IBUF(7 downto 0),
      Q(3) => minmax_ld_en_wire,
      Q(2) => data_ld_wire,
      Q(1) => W_valid_OBUF,
      Q(0) => max_diff_controller_inst_n_5,
      \reg_reg[0]\ => max_diff_controller_inst_n_7,
      \reg_reg[0]_0\ => max_diff_controller_inst_n_8,
      \reg_reg[6]\(0) => min_gt_data,
      \reg_reg[6]_0\(0) => max_lt_data,
      \reg_reg[7]\(7 downto 0) => R_addr_OBUF(7 downto 0),
      \reg_reg[7]_0\(7 downto 0) => Diff_OBUF(7 downto 0)
    );
nReset_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => nReset_in,
      O => nReset_in_IBUF
    );
end STRUCTURE;
