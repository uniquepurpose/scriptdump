sudo useradd -d /home/grizzly -m -s /bin/bash -c grizzly grizzly
sudo mkdir /home/grizzly/.ssh
sudo curl https://github.com/uniquepurpose.keys -o /home/grizzly/.ssh/authorized_keys
sudo chmod -R 700 /home/grizzly/.ssh
sudo chown -R grizzly:grizzly /home/grizzly/.ssh
echo "grizzly ALL=NOPASSWD:ALL" | sudo tee /etc/sudoers.d/grizzly
sudo chmod 440 /etc/sudoers.d/grizzly
sudo passwd grizzly
