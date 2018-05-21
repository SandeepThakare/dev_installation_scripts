# Script to aws configuration
# @author sandeep thakare
# @since 21st May 2018

echo 'Check pyhon version'
python --version

echo '--------------------------------------------------------------------------------------'

echo 'Download the installation script from pypa.io'
curl -O https://bootstrap.pypa.io/get-pip.py

echo 'Run the script with python'
python get-pip.py --user

echo 'Adding the executable path to your PATH variable: ~/.local/bin'
ls -a ~

echo 'Adding an export command to your profile script.'
export PATH=~/.local/bin:$PATH

echo 'Loading the profile into your current session'
source ~/.bash_profile

echo 'Verifying that pip is install correctly'
pip --version

echo '--------------------------------------------------------------------------------------'

echo 'Installing the AWS CLI with Pip'

echo '--------------------------------------------------------------------------------------'

echo 'Install aws-cli using pip'
pip install awscli --upgrade --user

echo 'Verify aws-cli install correctly'

echo 'If you get an error, see https://docs.aws.amazon.com/cli/latest/userguide/troubleshooting.html'

echo '--------------------------------------------------------------------------------------'

echo 'Adding the AWS CLI Executable to your Command Line Path'

echo '--------------------------------------------------------------------------------------'

echo 'Add an export command to your profile script'
export PATH=~/.local/bin:$PATH

echo 'Load profile into your current session'
source ~/.bash_profile

echo '--------------------------------------------------------------------------------------'

echo 'Checking aws-cli is installed correctly'
echo 'you need access key and secret key of aws user for final set-up and deplyment process'
echo 'through aws cli'
echo 'If you do not have credential then you can generate by using follwing steps'
echo '1. Visit https://console.aws.amazon.com/iam/home?region=us-east-1#/home'
echo '2. Click on Users --> Add Users --> Choose Access Type "Programmatic access" --> Create group with "AdministratorAccess" access policy --> Click Creae User'
echo '3. Note down the access key and secret key or download csv using "download csv" button on left upper corner'
echo '4. run "aws configure" command and provide access key and secret key'

echo '--------------------------------------------------------------------------------------'

aws configure

echo '--------------------------------------------------------------------------------------'

echo 'aws-cli is set on your system -- Happy Coading ;);)'