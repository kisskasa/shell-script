#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOFFILE=/tmp/$0

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$$2...FAILURE"
        exit 1
    else
        echo "$$2...SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1
else
    echo "You are super user."
fi

dnf install mysql -y
VALIDATE $? "Installing MyQL"

dnf install git -y
VALIDATE $? "Installing GIT"

echo "Is script proceeding?"