#!/bin/bash

echo "$5" > sshkeypub

scp sshpubkey root@192.168.56.120:sshkeypub
scp lxcdeploy.sh root@192.168.56.120:lxcdeploy.sh
ssh root@192.168.56.120 "chmod 755 lxcdeploy.sh; bash lxcdeploy.sh $1 $2 $3 $4; rm -f lxcdeploy.sh"
