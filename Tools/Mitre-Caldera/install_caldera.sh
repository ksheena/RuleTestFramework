#!/bin/bash

echo -e "Installing the pre-requestory packages: \n"
sudo apt-get -y update

sudo apt install python3.9
sudo apt install python3.9-venv python3.9-dev
ls /usr/bin/python*
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1
sudo update-alternatives --config python3
python3 --version

sudo apt install python3.9-distutils
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.9 get-pip.py
pip3 --version

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
# Download and install nvm using curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc
source ~/.zshrc
nvm --version
nvm install node  # This installs the latest stable version of Node.js
nvm use node      # Use the newly installed version
node -v
cd /opt/caldera/plugins/magma
rm -rf node_modules package-lock.json
npm install
npm run build


pip3 install --upgrade certifi
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
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.profile
echo "export GOPATH=\$HOME/go" >> ~/.profile
echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.profile
source ~/.profile
go version

echo -e "Cloning Caldera repo \n"
git clone https://github.com/mitre/caldera.git --recursive
#git clone https://github.com/mitre/caldera.git --recursive --branch 5.0.0
	
echo -e "Install Python Requirement Modules: \n"
path=$(pwd)
cd $path/caldera
pip3 install -r requirements.txt

echo -e "Install plugin requirement modules: \n"
for i in $(find plugins -type f -iname requirements.txt); do echo $i;pip3 install -r $i; done



echo -e "move the Conf \n"
#mv $path/caldera/conf/default.yml $path/caldera/conf/default.yml_bkp
#cp $path/default.yml $path/caldera/conf/
ls $path/caldera/conf/

#screen -S caldera_install

