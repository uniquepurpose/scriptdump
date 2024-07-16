wget https://raw.githubusercontent.com/uniquepurpose/scriptdump/master/run-update.sh
chmod +x run-update.sh
sudo apt-get update && sudo apt-get -y dist-upgrade && sudo apt-get autoremove --purge
sudo apt-get install nmap htop iotop screen -y
