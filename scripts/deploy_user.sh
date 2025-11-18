#!/bin/bash

USERNAME=$1

if [ $# -ne 1 ]; then
    echo "Please add username as an argument likeso:
            ./deploy.sh username"
elif [ $USERNAME == "groups" ]; then
    aws cloudformation deploy \
    --template-file iam/groups/groups.yaml \
    --stack-name groups-iam \
    --region us-west-2 \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
else
    aws cloudformation deploy \
    --template-file iam/groups/groups.yaml \
    --stack-name groups-iam \
    --region us-west-2 \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM

    aws cloudformation deploy \
    --template-file iam/users/$USERNAME.yaml \
    --stack-name $USERNAME-iam \
    --region us-west-2 \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
fi
