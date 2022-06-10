#!/bin/bash

echo "Updating Packages..."
sudo apt update

echo "Installing samba and exfat tools..."
sudo apt-get install --quiet exfat-fuse exfat-utils samba -y

echo "Downloading config files from Solarapollo05/server-restore"
sudo apt-get install --quiet git -y
git clone "https://www.github.com/Solarapollo05/server-restore"

echo "Creating mountpoints..."
sudo mkdir /server
sudo mkdir /file-history


echo "Overwriting default config files..."
sudo mv --force ~/server-restore/configs/smb.conf /etc/samba/smb.conf # Overwrite config files
sudo mv --force ~/server-restore/configs/fstab /etc/fstab

echo "Mounting External Drive..."
sudo mount -a

echo "Creating User..."
sudo useradd -d "/server/R-J" asus
sudo usermod -aG sudo asus

echo "A restart is required. Restart now? y/N"

read -n 1 -p ">  " confirm # Get Y/N for restarting now

if ${confirm^^} = "Y" 
then
    echo "Restarting now..."
    sudo reboot
elif ${confirm^^} = "N"
then
    echo "Finished."

else:
    echo "Invalid. Assuming restart later."
fi
