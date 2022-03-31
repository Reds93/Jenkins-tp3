#!/bin/bash

echo "Démarrage du container en cours.."
while ! ping -c 1 $Container_IP; do
        sleep 1
done

>/var/jenkins_home/.ssh/known_hosts

scp -o "StrictHostKeyChecking=no" service.sh root@$Container_IP:install.sh
ssh -o "StrictHostKeyChecking=no" root@$Container_IP "chmod 755 install.sh; bash install.sh $Container_services; rm -f install.sh"
