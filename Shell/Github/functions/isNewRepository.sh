#!/bin/bash

isNewRepository() {
    personal_access_token=$1
    promptMessage="On Github would you like to create a new repository or use an existing repository?  "
    menu=("1" "create new repository" "2" "use existing repository")
    cmd=(dialog --menu "$promptMessage " 22 76 16)
    selection=$("${cmd[@]}" "${menu[@]}" 2>&1 >/dev/tty)
    if [ "$selection" -eq 1 ]; then
        repository "true" "$personal_access_token"
    else
        repository "false" "$personal_access_token"
        
    fi
}
export -f isNewRepository