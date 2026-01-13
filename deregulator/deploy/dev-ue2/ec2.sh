#!/bin/bash

aws cloudformation deploy \
  --template-file deregulator/ec2.yaml \
  --stack-name dev-ue2-dereg-ec2 \
  --region us-east-2 \
  --profile dev \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
  --parameter-overrides \
    EnvironmentName=dev-ue2 \
    ApplicationName=deregulator \
    VpcId=vpc-0e219642c6d33dfa3 \
    SubnetId=subnet-016e5f43e92437bcc
