#!/bin/bash

pct create $4 local:vztmpl/ubuntu-21.04-standard_21.04-1_amd64.tar.gz  --hostname $1 --nameserver 8.8.8.8 -cores 1 --memory 1024 --swap 512 --rootfs local-lvm:8 -net0 name=eth0,bridge=vmbr0,gw=192.168.56.254,ip=$3/24 --start 1 --password $2 --ssh-public-keys "sshkeypub" 
