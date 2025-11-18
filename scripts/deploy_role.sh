#!/bin/bash

NEW_ROLE=$1

if [ $# -ne 1 ]; then
    echo "Please create the role yaml & 
          add role_name as an argument likeso:
            ./deploy_role.sh role-name"
elif [ -f iam/roles/$NEW_ROLE.yaml ]; then
    aws cloudformation deploy \
    --template-file iam/roles/$NEW_ROLE.yaml \
    --stack-name $NEW_ROLE-iam-role \
    --region us-west-2 \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
else
    echo "create role yaml in iam/roles/ directory"
fi


aws cloudformation deploy --template-file iam/roles/vpc-flow-logs.yaml --stack-name vpc-flow-logs-iam-role --region us-west-2
