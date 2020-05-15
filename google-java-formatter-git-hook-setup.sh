#!/bin/bash
if [[ ! -d ".git" ]]
then
    echo "There is not .git folder in current location."
    exit
fi

if [[ ! -d ".git/hooks" ]]
then
    mkdir .git/hooks
    echo "hooks folder was created."
fi

if [[ ! -d "pre-commit" ]]
then
    mv pre-commit .git/hooks
    .git/hooks/pre-commit
    echo "Mission completed :)"
else
    echo "pre-commit file was not found."
    exit 1
fi

rm google-java-formatter-git-hook-setup.sh
