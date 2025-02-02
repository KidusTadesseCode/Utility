#!/bin/bash

sendToGitHub(){
    username=$1
    repoName=$2
    newRepo=$3
    if [ "$newRepo" -eq 0 ]; then
        git init
        git add .
        read -p "commit message? " commitMessage
        git commit -m "$commitMessage"
        gh repo create $repoName --private --source=. --remote=origin  --push
        emailList=$(gh api user/public_emails)
        email=$(echo "$emailList" | jq -r '.[] | select(.primary==true) | .email')
        username=$(gh api user | jq -r '.login')
        name=$(gh api user | jq -r '.name')
        echo "email: $email"
        git config --local user.email "$email"
        git config --local user.name "$name"
        git remote add origin git@$username:$username/$repoName.git
    else
    
        git init
        git add .
        read -p "commit message? " commitMessage
        git commit -m "$commitMessage"
        git remote add origin git@$username:$username/$repoName.git
        git push -u origin main
    fi
}
export -f sendToGitHub