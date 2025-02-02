#!/bin/bash
clear="\x1Bc"
echo "$clear" 

source ./Shell/Github/check/checkBrew.sh
source ./Shell/Github/check/checkDialog.sh
source ./Shell/Github/check/checkPackage.sh
# functions
source ./Shell/Github/functions/createNewRepo.sh
source ./Shell/Github/functions/getPersonalTokenFile.sh
source ./Shell/Github/functions/getAllGithubRepositores.sh
source ./Shell/Github/functions/isGitInitialized.sh
source ./Shell/Github/functions/isNewRepository.sh
source ./Shell/Github/functions/arrowSelection.sh
source ./Shell/Github/functions/sendToGitHub.sh

# authentication
source ./Shell/Github/authentication/repository.sh
source ./Shell/Github/authentication/githubAuth.sh

checkBrew
echo "\n"
checkDialog
echo "\n"

# personal_access_token="../../../.ssh/personal_access_token"
personal_access_token="../../.ssh/personal_access_token"

checkPackageLoop(){
    packageList=("jq" "gh" "git")
    count=0
    for package in "${packageList[@]}"; do
        checkPackage "$package"
    done
}
checkPackageLoop
isGitInitialized "$personal_access_token"
# ls -a "$personal_access_token"