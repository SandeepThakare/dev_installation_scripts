# Script to serverless framework with some default project setup configuration/setup
# @author sandeep thakare
# @since 21st May 2018

echo 'installing serverless dependancy'
npm install serverless -g

echo '====================================================================================='
echo '\n'

echo 'serverless install on your system globally now you can use serverless commands.'
echo 'You can set project by simply choosing an option - '

echo '====================================================================================='
echo '\n'

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
        echo '====================================================================================='
        echo 'Cloneing project\n\n'
        git clone https://github.com/SandeepThakare/aws-cicd-using-circleci.git "$PROJECT_NAME"
        cd $PROJECT_NAME
        echo '====================================================================================='
        echo 'Installing dependancies \n\n'
        npm install
    else
        echo "Invalid Key Press.."
        echo 'Choose again .....'
        getServerlessApp
    fi
}

getServerlessApp

echo 'Serverless and default project setup is set on your system........'
echo 'Happy Coading :):)'
