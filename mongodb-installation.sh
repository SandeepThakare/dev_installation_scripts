# Script to install and confogure mongodb
# @author sandeep thakare
# @since 30th July 2018

echo "------------------------ Installing mongodb ------------------------"

echo "Adding the MongoDB Repository"

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

echo "Updating the packages"

sudo apt-get update

echo "----------------- Installing and Verifying MongoDB -----------------"

echo "Now we can install the MongoDB package itself."

sudo apt-get install -y mongodb-org

echo "Start mongodb with systemctl"

sudo systemctl start mongod

echo "Check service to start properly"

sudo systemctl status mongod

echo "enable automatically starting MongoDB when the system starts"

sudo systemctl enable mongod

echo "---------------------- Adjusting the Firewall ----------------------"

echo "This is an optional setup to allow access to the other servers by providing IP address."

echo "You can cancle this by selecting no option. "

optionalSetUp() {
    echo -n "This is an optional set up. Do you want to countinue. Y/N : "
    read option
    if [ "${option}" = "Y" -o "${option}" = "y" ]
    then
        echo "Please provide other server address : "
        read ip_address
        sudo ufw allow from $ip_address/32 to any port 27017
    else
        echo "Now exiting.."
        exit
    fi
}

optionalSetUp

echo "You can verify the change in firewall settings with ufw "

sudo ufw status

# echo 'Installation Done - Happy Code !!!!!'

echo " "

echo " "

echo "------------------- Installation done : Happy Codeing !!!!! :)------------------"