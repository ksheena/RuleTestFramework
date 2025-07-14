# Install Docker
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y


# Install Docker compose
apt-get install docker-compose-plugin


# Clone the GitHub Repo and 
git clone https://github.com/mitre/caldera.git --recursive --branch 5.3.0
cd caldera


# Rename the compose file in caldera directory and replace it with provided compose file 
mv docker-compose.yml docker-compose.yml_bkp


docker-compose up --build -d

Note: Credentials are stored in caldera/conf/local.yml . If you want change credentials do it befor Docket build
