#!/bin/bash

echo "$5" > sshpubkey

scp sshpubkey root@192.168.56.120:sshpubkey
scp lxcdeploy.sh root@192.168.56.120:lxcdeploy.sh
ssh root@192.168.56.120 "chmod 755 lxcdeploy.sh; bash lx.sh $1 $2 $3 $4; rm -f lxcdeploy.sh"
