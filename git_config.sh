#!/bin/bash

## Script to setup git credentials on a new computer
## chmod +x git_config.sh
## ./git_config.sh


echo "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
echo "GIT CONFIG:"
echo "setting up git credentials" 

## With this option, credentials remain stored on computer
git config --global credential.helper store

## Input credentials

echo "setting user.email as: sulian.thual@gmail.com"
git config --global user.email "sulian.thual@gmail.com"
echo "setting user.name as: sulianthual"
git config --global user.name "sulianthual"

echo "Personal Access Token: "
echo "Create on github/Settings/Developer Settings/Personal Access Tokens"
echo "Generate new token (classic) token, expiration 90 days, scope=repo"
echo "Enter below the unique key provided when creating the token: "
read -p "token key: " tokenkey
git config --global user.password "$tokenkey"
echo "setting user.password as $tokenkey"
echo "if successfull, your credentials are now stored on computer"