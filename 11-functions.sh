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
    echo "Exit Status: $1"
    echo "What are you doing: $2"
}

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

dnf install git -y
VALIDATE $? "Installing GIT"