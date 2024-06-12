#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.3 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Wed Jun 12 21:34:36 +07 2024
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xsim Max_Diff_tb_behav -key {Behavioral:sim_1:Functional:Max_Diff_tb} -tclbatch Max_Diff_tb.tcl -view /media/viktor/Setup/Workstorage/RTL_Designs/Diff_max/Max_Diff/Max_Diff_tb_behav.wcfg -log simulate.log
