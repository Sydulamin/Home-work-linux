
echo "Listing contents of the home directory:"
ls ~

echo "Changing directory to /var/log and listing its contents:"
cd /var/log && ls

echo "Finding the path to the bash executable:"
which bash

echo "Finding the current shell:"
echo $SHELL

mkdir -p ~/linux_fundamentals/scripts
touch ~/linux_fundamentals/example.txt
cp ~/linux_fundamentals/example.txt ~/linux_fundamentals/scripts/
mkdir ~/linux_fundamentals/backup
mv ~/linux_fundamentals/example.txt ~/linux_fundamentals/backup/


chmod 644 ~/linux_fundamentals/backup/example.txt
ls -l ~/linux_fundamentals/backup/example.txt

touch ~/example.txt
chown student ~/example.txt
chgrp students ~/example.txt
ls -l ~/example.txt

mkdir ~/project
touch ~/project/report.txt
chmod 644 ~/project/report.txt
chmod 755 ~/project
ls -ld ~/project ~/project/report.txt


useradd -m -d /home/developer_home -s /bin/sh developer
passwd developer
usermod -l devuser developer
usermod -aG devgroup devuser
passwd devuser


touch ~/original.txt
ln -s ~/original.txt ~/softlink.txt
ls -l ~/softlink.txt
rm ~/original.txt
touch ~/datafile.txt
ln ~/datafile.txt ~/hardlink.txt
ls -i ~/datafile.txt ~/hardlink.txt
rm ~/datafile.txt
find ~ -name "*.txt"


sudo apt update
sudo apt install -y tree
sudo apt install -y apt-transport-https ca-certificates gnupg
curl -sSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt update && sudo apt install -y google-cloud-sdk
