#!/bin/bash

echo "$Container_sshkey_pub" > sshkeypub

scp sshpubkey root@192.168.56.60:sshkeypub
scp lxcdeploy.sh root@192.168.56.60:lxcdeploy.sh
ssh root@192.168.56.60 "chmod 755 lxcdeploy.sh; bash lxcdeploy.sh $Container_name $Container_pwd $Container_IP $Container_ID; rm -f lxcdeploy.sh"
