#!/bin/bash

read -p "Please write commit message: " message
echo "-----------------------------"
git add . && git commit -m "\"$message\"" && git pull && git push
