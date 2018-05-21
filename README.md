# dev_installation_scripts

This repo is only use for scripts building to do less work in installing dependancies which causes extra efforts for developers
Just pull this repo and start using scripts

1. node-setup.sh
  This script uses to install node package with nvm and npm
  This script install latest nodejs version
  you can also use "lts" package by choose option lts when prompt
  
2. git_ssh_key_generation.sh
  This script uses when you want to set-up the ssh key for your repo.
  You need to do some extra efforts as follows after successful run of this script
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
