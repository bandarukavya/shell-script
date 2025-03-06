#!/bin/bash

echo "All Variables: $@"
echo "Number of variables passed: $#"
echo "Script Name: $0"
echo "Current Working Directory: $PWD"
echo "Home Directory of Current User: $HOME"
echo "Which user is running this script: $USER"
echo "Host Name: $HOSTNAME"
echo "Process ID of the current shell script: $$"
sleep 60
sleep 60&
echo "Process ID of last background command: $!"
