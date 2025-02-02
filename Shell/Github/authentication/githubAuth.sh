#!/bin/bash
function githubAuth(){
    local token_file_path=$1
    if [[ -f $token_file_path ]]; then
        local token=$(cat $token_file_path)
        echo $token | gh auth login --with-token 2>&1 >/dev/null
        if [[ $? -eq 0 ]]; then
            echo "Authentication successful"
        else
            echo "Authentication failed"
            exit 0
        fi
    else
        echo "File not found: $token_file_path"
        echo "Go watch this tutorial as to making a personal access token"
        echo "https://www.youtube.com/watch?v=W9zTttHeoHk"
        echo "when creating personal access token make sure you give it read:org permission"
        echo "Once you have created a personal access token in ./.ssh/personal_access_token/<username>__personal_access_token.txt"
        exit 0
    fi
}

export -f githubAuth