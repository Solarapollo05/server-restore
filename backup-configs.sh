#!/bin/bash

sudo cp /etc/samba/smb.conf ~/server-restore/configs/
sudo cp /etc/fstab ~/server-restore/configs
sudo cp /etc/timeshift/timeshift.json ~/server-restore/configs
sudo cp ~/.gitconfig ~/server-restore/configs
sudo cp /etc/cron.d/timeshift-hourly ~/server-restore/cron

cd ~/server-restore
git pull
git add .
git commit -m "Updating configuration files"
git push
