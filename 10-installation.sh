#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 #manually exit if error comes.
else
    echo "You are super user."
fi

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "exit status $1"
        echo "What are you doing? $2"
    fi
}


dnf install mysql -y
VALIDATE $? "Installaing MYSQL"


dnf install git -y
VALIDATE $? "Installing Git"


echo "is script proceeding?"