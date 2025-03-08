#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 #manually exit if error comes.
else
    echo "You are super user."
fi


dnf install mysql -y
if [ $? -ne 0 ]
then
    echo "Installation of Mysql...FAILED"
    exit 1
else
    echo "Installation of Mysql...Success"
fi 

dnf install git -y
if [ $? -ne 0 ]
then   
    echo "Installation of Git...FAILED"
    exit 1
else
    echo "Installation Git...SUCCESS"
fi

echo "is script proceeding?"