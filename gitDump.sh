#!/bin/bash

# Looks for the below keywords and dumps it into a file.
# Run this script inside of a GIT folder.

keywords=(
	"password"
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
)

echo
echo "Keywords Detected" >> result.txt
echo "=================" >> result.txt
touch result.txt
for word in "${keywords[@]}"; do
	git grep "$word" >> result.txt
done