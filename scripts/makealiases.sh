#!/bin/bash

echo "This is script writes alias command to .bash_aliases file"
echo "---------------------------------------------------------"

while true; do
  read -p "Please provide alias name: " name
  if [[ $name =~ ^[A-Za-z_-]+$ ]]; then
    read -p "Please provide alias command: " command
    echo "alias $name='$command'" >> ~/.bash_aliases
  else
    echo "Invalid alias name"
  fi
  read -p "Make another alias command? (y/n) " another
  if [[ $another =~ ^[nN]+$ ]]; then
    break
  fi
done
exec bash
