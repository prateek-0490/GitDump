#!/bin/bash

# Looks for the below keywords and dumps it into a file.
# Run this script inside of a GIT folder.

keywords=(
	"password"
	"credentials"
	"key"
	"passwd"
	"secret"
	"aws_key"
	"ftp"
	"sftp"
	"token"
	"secret_key"
	"authorization"
	"access_token"
	"login"
	"github_token"
	"API_key"
	"secret"
	"account"
	"mlab"
	"db_username"
	"db_password"
	"ssh-rsa"
	"auth"
	"creds"
	"api_key"
	"aws"
	"-----BEGIN RSA PRIVATE KEY-----"
	"-----BEGIN OPENSSH PRIVATE KEY-----"
	"-----BEGIN DSA PRIVATE KEY-----"
	"-----BEGIN EC PRIVATE KEY-----"
	"-----BEGIN PGP PRIVATE KEY BLOCK-----"
	"https://hooks.slack.com/services/"
	"client_secret"
)

echo
touch result.txt
echo "Usage : ./gitDump.sh [ignore-case]" >> result.txt
echo "=================" >> result.txt
for word in "${keywords[@]}"; do
	if [ -z "$1" ]
		then 
			git grep "$word" >> result.txt
	else
		git grep "$word" | grep -v $1 >> result.txt
	fi
done