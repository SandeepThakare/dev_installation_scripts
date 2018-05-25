# Script to serverless framework with some default project setup configuration/setup
# @author sandeep thakare
# @since 21st May 2018

echo 'installing serverless dependancy'
npm install serverless -g

echo 'serverless install on your system globally now you can use serverless commands.'
echo 'You can set project by simply choosing an option - '

getServerlessApp() {
    echo '1. Deploy simple serverless app \n 2. Serverless app with Demo api with serverless-ofline and CICD with circleci'
    read option

    echo 'Enter the name of your project - '
    read PROJECT_NAME

    if [ $option -eq 1 ]
    then
        serverless create --template aws-nodejs --path "$PROJECT_NAME"
    elif [ $option -eq 2 ]
    then
        git clone https://github.com/SandeepThakare/dev_installation_scripts.git "$PROJECT_NAME"
        cd $PROJECT_NAME
        npm install
        
    else
        echo "Invalid Key Press.."
        echo 'Choose again .....'
        installNodeLatest
    fi
}