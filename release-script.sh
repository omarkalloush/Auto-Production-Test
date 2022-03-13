#!/bin/bash

echo "Enter Release Number:"
read RELEASE_NUMBER

# How can we inhance this ?!
file='repos.txt'

while read line; do
    git clone $line
    
    basename=$(basename $line)    
    filename=${basename%.*}

    cd $filename

    git checkout main
    git fetch
    git pull
    gh pr create --base DevOps --head main --title "Release ${RELEASE_NUMBER}" --body "Test body"
    gh pr merge --merge --admin
    gh release create v${RELEASE_NUMBER} --generate-notes

    cd ..

    rm -rf $filename
done < $file

figlet Deployment Done