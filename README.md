# dev_installation_scripts

This repo is only use for scripts building to do less work in installing dependancies which causes extra efforts for developers
Just pull this repo and start using these scripts <br /><br />

1. <b>node-setup.sh:</b><br />
  This script uses to install node into your system with nvm (node version manager) and npm (node package manager)
  This script install latest nodejs version
  you can also use "lts" package by choose option "lts" when prompt
  
2. <b>git_ssh_key_generation.sh:</b><br />
  This script uses when you want to set-up the ssh key for your repo. <br />
  This scripts sets the ssh key, which can directly push your code to repo without typing username and password. <br />
  You need to do some extra efforts as follows after successful run of this script<br />
  i.    'ssh key is copied on your clip board'<br />
  ii.   'Now login into you git account through browser'<br />
  iii.  'In the upper-right corner of any page, click your profile photo.'<br />
  iv.   'then click Settings.'<br />
  v.    'In the user settings sidebar, click SSH and GPG keys.'<br />
  vi.   'Click New SSH key or Add SSH key.'<br />
  vii.  'In the "Title" field, add a descriptive label for the new key.' <br />
  viii. 'For example, if you are using a personal System,' <br />
  ix.   'You might call this key -- {your key name}'<br />
  x.    'Paste your key into the "Key" field.'<br />
  xi.   'Click Add SSH key.'<br />
  xii.  'If prompted, confirm your GitHub password.'<br />
  
  Take an reference from <b>https://help.github.com/articles/checking-for-existing-ssh-keys</b><br/>
 
 3. <b>git_push.sh:</b><br />
  This script simply push your code into your git repo with your choice branch
  If you did't set your ssh key then it will prompt you for username and password
  Top skip this run 'git_ssh_key_generation.sh' script first and change your remote url to ssh url

 4. <b>docker.sh:</b><br />
  This script install docker and docker compose in your system.
  If docker is already present then 1st this script will remove that version and install latest version

 5. <b>aws_cli_installation.sh:</b><br />
  This script install and set up aws cli on your local system.
  You need aws use access key and secret key to set up aws cli 
  If you do not have credential then you can generate by using follwing steps<br />
  i.    Visit <b>https://console.aws.amazon.com/iam/home?region=us-east-1#/home</b><br />
  ii.   Click on Users --> Add Users --> Choose Access Type "Programmatic access" -->
        Create group with "AdministratorAccess" access policy --> Click Create User<br />
  iii.  Note down the access key and secret key or download csv using "download csv" button on left upper corner<br />
  iv.   run "aws configure" command and provide access key and secret key<br />

 6. <b>serverless.sh:</b><br />
  This script is for set up serverless dependency in system.
  By using this script you can set up serverless in your system and you can set the simple project or project with ES7 module 
  and other functionalities
