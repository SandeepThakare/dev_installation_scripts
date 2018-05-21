echo 'Check id key is exist or not'
ls -al ~/.ssh 

echo '------------------------------------------------'

echo 'generate ssh key'
read -p "Enter your git email id : " email
ssh-keygen -t rsa -b 4096 -C "$email"

echo '------------------------------------------------'

echo 'check key is generated'
ls -al ~/.ssh

echo '------------------------------------------------'

echo 'start ssh-agent and get agent pid'
eval "$(ssh-agent -s)"

echo '------------------------------------------------'

echo 'tell ssh agent where the private key file is'
ssh-add ~/.ssh/id_rsa
