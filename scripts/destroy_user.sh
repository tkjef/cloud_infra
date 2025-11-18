#!/bin/bash

USERNAME=$1 

if [ $# -ne 1 ]; then
    echo "Please add username as an argument likeso:
            ./destroy.sh username"
else
    aws cloudformation delete-stack --stack-name $USERNAME-iam --region us-west-2
fi
