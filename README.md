# dev_installation_scripts

This repo is only use for scripts building to do less work in installing dependancies which causes extra efforts for developers
Just pull this repo and start using scripts

1. node-setup.sh
  This script uses to install node package with nvm and npm
  This script install latest nodejs version
  you can also use "lts" package by choose option lts when prompt
  
2. git_ssh_key_generation.sh
  This script uses when you want to set-up the ssh key for your repo. <br />
  You need to do some extra efforts as follows after successful run of this script<br />
  i.    'ssh key is copied on your clip board'<br />
  ii.   'Now login into you git account through browser'<br />
  iii.  'In the upper-right corner of any page, click your profile photo.'<br />
  iv.   'then click Settings.'<br />
  v.    'In the user settings sidebar, click SSH and GPG keys.'<br />
  vi.   'Click New SSH key or Add SSH key.'<br />
  vii.  'In the "Title" field, add a descriptive label for the new key.' <br />
  viii. 'For example, if you are using a personal Mac,' <br />
  ix.   'You might call this key -- {your key name}'<br />
  x.    'Paste your key into the "Key" field.'<br />
  xi.   'Click Add SSH key.'<br />
  xii.  'If prompted, confirm your GitHub password.'<br />
  
  Take an reference from https://help.github.com/articles/checking-for-existing-ssh-keys<br/>
 
 3. git_push.sh
  This script simply push your code o your git repo with your choice branch
  If you did't set your ssh key then it will prompt you for username and password
  Top skip this run 'git_ssh_key_generation.sh' script first and change your remote url to ssh url

 4. docker.sh
  This script install docker and docker compose in your system.
  If docker is already present then 1st this script will remove that version and install latest version
  
