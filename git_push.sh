
#clear screen
clear

#add files to commit
git add .
echo 'Files added !!!!'

#commit files with message
read -p "Enter commit message : " message

git commit -m "$message"

echo 'Files commited successfully'

read -p "Enter Branch name : " branch_name

git push origin "$branch_name"