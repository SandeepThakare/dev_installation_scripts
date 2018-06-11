# Script to nodejs configuration/setup
# @author sandeep thakare
# @since 21st May 2018

echo 'Node setup start'

echo 'Updating system'
sudo apt-get update

echo 'Installing nodejs latest version'
sudo apt-get install nodejs

echo 'Installing npm - node package manager'
sudo apt-get install npm

#checking current version of nodejs
echo 'version of nodejs is : ' nodejs --version

#checking version of npm
echo 'version of npm is : ' npm --version

#Insatlling nvm
echo 'Updating system'
sudo apt-get update

#In order for some npm packages to work 
#(those that require compiling code from source, for example), \
#you will need to install the build-essential package:
sudo apt-get install build-essential libssl-dev

echo 'Pull and Run nvm shell script'
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# echo 'inspect the installation script'
# nano install_nvm.sh

# echo 'Run the script with bash'
# bash install_nvm.sh

#To gain access to the nvm functionality, 
#you'll need to log out and log back in again, 
#or you can source the ~/.profile file 
#so that your current session knows about the changes:
source ~/.profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo 'Check node version for use'
nvm ls-remote

installNodeLatest() {
    echo -e "1=> latest \n2=> lts"
    read option
    if [ $option -eq 1 ]
    then
        echo "Installation of node Latest Version.."
        nvm install node
        nvm use node
    elif [ $option -eq 2 ]
    then
        echo "Installation of node Latest LST Version.. "
        nvm install --lts
        nvm use --lts
    else
        echo "Invalid Key Press.."
        echo 'Choose again .....'
        installNodeLatest
    fi
}

installNodeLatest

echo 'Installation Done - Happy Code !!!!!'



