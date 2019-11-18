#!/bin/bash

read -p "File name to zip: " name
read -p "Commit id from which check differences: " from
read -p "Commit id to which check differences: " to
sudo git archive -o ../$name $to $(git diff --name-only $from $to)
