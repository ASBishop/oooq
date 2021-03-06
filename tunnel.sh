#!/usr/bin/env bash
# Filename:                tunnel.sh
# Description:             Set up SSH tunnel to undercloud 
# Supported Langauge(s):   GNU Bash 4.3.x
# Time-stamp:              <2017-01-20 16:33:38 jfulton> 
# -------------------------------------------------------
# I have a remote hypervisor running VMs for quickstart
# This sets up an SSH tunnel to access the remote undercloud
# For use with emacs tramp:
# (setenv "hypervisor" "/ssh:stack@localhost#2222:/home/stack/")'
# -------------------------------------------------------
hypervisor=10.19.139.29  
undercloud=192.168.23.18 
echo "Tunneling from localhost:2222 to undercloud:22 via $hypervisor"
ssh -f -L 2222:$undercloud:22 -N $hypervisor 
echo " ssh stack@localhost -p 2222"
