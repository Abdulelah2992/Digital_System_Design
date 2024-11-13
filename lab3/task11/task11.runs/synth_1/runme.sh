#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/it/Desktop/Vivado/Vivado/Xilinx/Vivado/SDK/2019.1/bin:/home/it/Desktop/Vivado/Vivado/Xilinx/Vivado/Vivado/2019.1/ids_lite/ISE/bin/lin64:/home/it/Desktop/Vivado/Vivado/Xilinx/Vivado/Vivado/2019.1/bin
else
  PATH=/home/it/Desktop/Vivado/Vivado/Xilinx/Vivado/SDK/2019.1/bin:/home/it/Desktop/Vivado/Vivado/Xilinx/Vivado/Vivado/2019.1/ids_lite/ISE/bin/lin64:/home/it/Desktop/Vivado/Vivado/Xilinx/Vivado/Vivado/2019.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/it/digital_system/Digital_System_Design/lab3/task11/task11.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log sev_seg_top.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source sev_seg_top.tcl