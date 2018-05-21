# Script to docker configuration/setup
# @author sandeep thakare
# @since 21st May 2018

#check system configuration
echo 'Checking system configuration'
lsb_release -a

echo 'get Uname'
uname -a

echo 'Uninstall old versions'
sudo apt-get remove docker docker-engine docker.io

echo 'Updating packages'
sudo apt-get update

echo 'Install packages to allow apt to use a repository over HTTPS'
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

echo 'Add Docker’s official GPG key:'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo 'Set-up stable repository'
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo 'Updating packages recently downloaded packages'
sudo apt-get update

echo 'Installing Docker-CE'
sudo apt-get install docker-ce

echo 'Verify that Docker CE is installed correctly by running the hello-world image.'
sudo docker run hello-world

echo '------------------------------------------------------------------------'

echo 'Installing Docker Compose'

echo 'Following command download latest version of Docker-Compose'
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

echo 'Applying executable permission to binary'
sudo chmod +x /usr/local/bin/docker-compose

echo 'Testing Installation'
docker-compose --version

echo '-------------------------------------------------------------------------'

echo 'Docker installed successfully - Happy Coading !!!!!'