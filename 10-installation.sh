

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1
else
    echo "You are super user."
fi

dnf install mysqll -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql ...FAILURE"
    exit 1
fi

echo "Is script proceeding?"