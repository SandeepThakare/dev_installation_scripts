# Script to aws configuration
# @author sandeep thakare
# @since 21st May 2018

echo 'Check if key is exist or not'
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

echo '------------------------------------------------'

echo 'Install xclip to get ssh key copy on clip board'
sudo apt-get install xclip

echo '------------------------------------------------'

echo 'Copies the contents of the id_rsa.pub file to your clipboard'
xclip -sel clip < ~/.ssh/id_rsa.pub

echo '------------------------------------------------'

echo 'ssh key is copied on your clip board'
echo 'Now login into you git account through browser'
echo 'In the upper-right corner of any page, click your profile photo.'
echo 'then click Settings.'
echo 'In the user settings sidebar, click SSH and GPG keys.'
echo 'Click New SSH key or Add SSH key.'
echo 'In the "Title" field, add a descriptive label for the new key.' 
echo 'For example, if you are using a personal Mac,' 
echo 'you might call this key -- Personal MacBook Air'
echo 'Paste your key into the "Key" field.'
echo 'Click Add SSH key.'
echo 'If prompted, confirm your GitHub password.'
echo '------------------------------------------------'
echo 'Get reference from -- https://help.github.com/articles/checking-for-existing-ssh-keys'