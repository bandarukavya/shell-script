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
        echo "$2...FAILED"
    else
        echo "$2...SUCCESS"
    fi
}


dnf install mysql -y
VALIDATE $? "Installing MYSQL"


dnf install git -y
VALIDATE $? "Installing Git"


echo "is script proceeding?"