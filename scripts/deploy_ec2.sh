#!/bin/bash

NEW_EC2=$1

if [ $# -ne 1 ]; then
    echo "Please create the ec2 yaml & 
          add ec2_name as an argument likeso:
            ./create_ec2.sh ec2-name"
elif [ -f ec2/$NEW_EC2.yaml ]; then
    aws cloudformation deploy \
    --template-file ec2/$NEW_EC2.yaml \
    --stack-name $NEW_EC2 \
    --region us-west-2 \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
else
    echo "create ec2 yaml in ec2/ directory"
fi
