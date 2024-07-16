wget https://raw.githubusercontent.com/uniquepurpose/scriptdump/master/run-update.sh
chmod +x run-update.sh
sudo apt-get update && sudo apt-get -y dist-upgrade && sudo apt-get autoremove --purge
sudo apt-get install nmap htop iotop screen -y

# shout down nextcloud (nginx, php, redis, db)
# move /home/data to /home/data.local
# mount your nfs share to /home/data and move/copy all data from /home/data.local to /home/data. start nextcloud again.
# Source: https://help.nextcloud.com/t/move-existing-data-storage-to-a-nfs-and-how-to-scale-properly/48950/3
