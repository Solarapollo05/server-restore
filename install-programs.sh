#! /bin/bash
echo "Installing Plex Media Server..."

wget --quiet "https://plex.tv/downloads/latest/5?channel=16&build=linux-aarch64&distro=debian" -O "Plex.deb"
sudo apt install --quiet ./Plex.deb -y

echo "Installing Timeshift..."
sudo apt-get install --quiet timeshift -Y

echo "Setting up Git"
mv --force ~/server-restore/configs/gitconfig ~/.gitconfig

echo "Setting up Timeshift"

sudo mv --force ~/server-restore/configs/timeshift.json /etc/timeshift/timeshift.json
sudo mv --force ~/server-restore/cron/timeshift-hourly /etc/cron.d/timeshift-hourly