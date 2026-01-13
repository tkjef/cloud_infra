#!/bin/bash

aws cloudformation deploy \
  --template-file deregulator/network.yaml \
  --stack-name dev-ue2-deregulator-network \
  --region us-east-2 \
  --profile dev \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
  --parameter-overrides \
    EnvironmentName=dev-ue2 \
    ApplicationName=deregulator \
    CidrBlock=10.4.0.0/16 \
    PublicSubnet1Cidr=10.4.10.0/24 \
    PublicSubnet2Cidr=10.4.11.0/24 \
    PublicSubnet3Cidr=10.4.12.0/24 \
    PrivateSubnet1Cidr=10.4.20.0/24 \
    PrivateSubnet2Cidr=10.4.21.0/24 \
    PrivateSubnet3Cidr=10.4.22.0/24 
