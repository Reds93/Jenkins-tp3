#!/bin/bash

echo "Démarrage du container en cours.."
while ! ping -c 1 $1; do
        sleep 1
done

>/var/jenkins_home/.ssh/known_hosts

scp -o "StrictHostKeyChecking=no" service.sh root@$1:install.sh
ssh -o "StrictHostKeyChecking=no" root@$1 "chmod 755 install.sh; bash install.sh $2; rm -f install.sh"
