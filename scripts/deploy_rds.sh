#!/bin/bash

NEW_RDS=$1

if [ $# -ne 1 ]; then
    echo "Please create the rds yaml & 
          add rds_name as an argument likeso:
            ./create_rds.sh rds-name"
elif [ -f rds/$NEW_RDS.yaml ]; then
    aws cloudformation deploy \
    --template-file rds/$NEW_RDS.yaml \
    --stack-name $NEW_RDS \
    --region us-west-2 \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
else
    echo "create rds yaml in rds/ directory"
fi
