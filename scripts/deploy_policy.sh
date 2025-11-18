#!/bin/bash

NEW_POLICY=$1

if [ $# -ne 1 ]; then
    echo "Please create the policy yaml & 
          add policy_name as an argument likeso:
            ./create_policy.sh policy-name"
elif [ -f iam/policies/$NEW_POLICY.yaml ]; then
    aws cloudformation deploy \
    --template-file iam/policies/$NEW_POLICY.yaml \
    --stack-name $NEW_POLICY-iam-policy \
    --region us-west-2 \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
else
    echo "create policy yaml in iam/policies/ directory"
fi
