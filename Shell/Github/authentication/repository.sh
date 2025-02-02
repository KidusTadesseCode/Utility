#!/bin/bash
repository(){
    isNewRepository=$1
    personal_access_token=$2
    personal_access_token_file=$(arrowSelection "Choose the personal access token file" "$personal_access_token")
    personal_access_token_file_dir="$personal_access_token/$personal_access_token_file"
    echo "\n repository $personal_access_token_file_dir \n"
    githubAuth "$personal_access_token/$personal_access_token_file"
    repoList="$(getAllGithubRepositores)"
    menu=()
    for repo in $repoList; do
        menu+=("$repo" "")
    done
    username=${personal_access_token_file%%_*}
    if [ "$isNewRepository" == "true" ]; then
        newRepo=$(createNewRepo "${repoList[@]}")
        sendToGitHub "$username" "$newRepo" 0
    else

        cmd=(dialog --menu "Choose Repository: " 22 76 16)
        selection=$("${cmd[@]}" "${menu[@]}" 2>&1 >/dev/tty)
        sendToGitHub "$username" "$selection" 1
    fi
}
export -f repository