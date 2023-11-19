#!/bin/bash
if [ "$(id -u)" -ne 0 ]; then echo "Please run as root." >&2; exit 1; fi

mkdir -p /etc/apt/keyrings
curl -L -o /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | tee /etc/apt/sources.list.d/syncthing.list

apt-get update && apt-get -y dist-upgrade && apt-get -y autoremove --purge
apt-get -y install wget qbittorrent-nox curl vim git htop iotop nmap syncthing apt-transport-https ca-certificates restic sudo cifs-utils traceroute mtr

wget https://raw.githubusercontent.com/uniquepurpose/scriptdump/master/add-user-grizzly.sh
chmod +x add-user-grizzly.sh
wget https://raw.githubusercontent.com/uniquepurpose/scriptdump/master/run-update.sh
chmod +x run-update.sh

useradd -d /home/martina -m -s /bin/bash -c martina martina
echo "martina ALL=NOPASSWD:ALL" | sudo tee /etc/sudoers.d/martina
chmod 440 /etc/sudoers.d/martina
echo 'martina:asdasdasd' | chpasswd

echo "sudo mount -t cifs //nas.martina.local/martina /home/martina/nas_home/ -o user=martina,password=asdasdasd,file_mode=0777,dir_mode=0777" | tee -a /home/martina/mount_nas.sh
chmod 700 /home/martina/mount_nas.sh
