#!/bin/bash

NEW_USER=$1

if [ $# -ne 1 ]; then
    echo "Please add username as an argument likeso:
            ./create_user.sh username"
elif [ -f iam/users/$NEW_USER.yaml ]; then
    echo "User already created. 
Edit the groups or user yaml and use the deploy.sh script from here."
else
    sed "s/suser/$NEW_USER/g" iam/users/suser.yaml > iam/users/$NEW_USER.yaml

    aws cloudformation deploy \
    --template-file iam/users/$NEW_USER.yaml \
    --stack-name $NEW_USER-iam \
    --region us-west-2 \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
fi
