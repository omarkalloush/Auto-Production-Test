#!/bin/bash

echo "Enter Organization or User Name:"
read Org

gh repo list $Org -L=100 \
    --json sshUrl \
    -q '.[].sshUrl' \
    > .repos

figlet TextFile Ready