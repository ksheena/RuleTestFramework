#!/bin/bash

echo -e "Installing the pre-requestory packages: \n"
sudo apt-get -y update

sudo apt install -y python3.8
sudo apt install -y git
sudo apt install wget -y
sudo apt install curl -y
sudo apt install screen -y 
sudo apt install -y python3-pip

sudo apt install -y nodejs
sudo apt install -y npm
sudo npm cache clean -f
sudo npm install -g n 
sudo n stable

pip3 install docker 
pip3 install importlib-metadata==4.13.0
pip3 install sphinx_rtd_theme==1.3.0


echo -e "Installing the Chrome:\n "
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install 


echo -e "Installing the Go_LANG:\n "
wget https://go.dev/dl/go1.21.4.linux-amd64.tar.gz -O go.tar.gz
sudo tar -xzvf go.tar.gz -C /usr/local
echo export PATH=$HOME/go/bin:/usr/local/go/bin:$PATH >> ~/.profile
source ~/.profile


echo -e "Cloning Caldera repo \n"
#git clone https://github.com/mitre/caldera.git --recursive
git clone https://github.com/mitre/caldera.git --recursive --branch 5.0.0
	
echo -e "Install Python Requirement Modules: \n"
path=$(pwd)
cd $path/caldera
pip3 install -r requirements.txt

echo -e "Install plugin requirement modules: \n"
for i in $(find plugins -type f -iname requirements.txt); do echo $i;pip3 install -r $i; done


echo -e "move the Conf \n"
mv $path/caldera/conf/default.yml $path/caldera/conf/default.yml_bkp
cp $path/default.yml $path/caldera/conf/
ls $path/caldera/conf/

#screen -S caldera_install

#python3 server.py --insecure --build

