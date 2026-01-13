#!/bin/bash

aws cloudformation deploy \
  --template-file deregulator/rds.yaml \
  --stack-name dev-ue2-dereg-rds \
  --region us-east-2 \
  --profile dev \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
  --parameter-overrides \
    EnvironmentName=dev-ue2 \
    ApplicationName=deregulator \
    PrivateSubnetId1=subnet-016e5f43e92437bcc \
    PrivateSubnetId2=subnet-06d4d3cf964b0be7f \
    PrivateSubnetId3=subnet-06c6c0285528c091f \
    AlbSecurityGroup=sg-0ee0040ac74b6e5d3
