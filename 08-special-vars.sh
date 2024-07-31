#!/bin/bash

echo "All Variables: $@"
echo "Number of Variables: $#"
echo "Script Name: $0"
echo "Current working directoty: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of the current shell script: $$"
sleep 60
echo "Process ID of last background command: $!"