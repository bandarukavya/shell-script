#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1
else
    echo "You are super user."
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2... FAILURE"
    else
        echo "$2... SUCCESS"

    fi    
}

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

dnf install git -y
VALIDATE $? "Installing GIT"