#!/bin/bash
clear="\x1Bc"


isGitInitialized(){
    personal_access_token=$1
    dotGitDir=".git"
    if ! [ -d "$dotGitDir" ]; then
        promptMessage="Project not initialized with git. Would you like to initialize with git? "
        dialog --yesno "$promptMessage " 22 76
        response=$?
        if [ "$response" -eq 0 ]; then
            isNewRepository "$personal_access_token"
        else
            echo "Git is initialized on this project"
            git add .
            read -p "commit message? " commitMessage
            git commit -m "$commitMessage"
            git push -u origin main
        fi
    else
        username=$(git config --local user.name)
        fetchRepo=$(git remote -v | grep "(push)" | awk '{print $2}')
        repoName=$(basename "$fetchRepo")
        if [ -z "$username" ]; then
            echo "username not found"
            exit 1
        fi
        if [ -z "$repoName" ]; then
            echo "repoName not found"
            exit 1
        fi

        echo "username $username"
        echo "repoName $repoName"
        git add .
        read -p "commit message? " commitMessage
        git commit -m "$commitMessage"
        git remote add origin git@$username:$username/$repoName.git
        git push -u origin main
        echo "Done"
    fi
}
export -f isGitInitialized