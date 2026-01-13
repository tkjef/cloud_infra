#!/bin/bash

aws cloudformation deploy \
  --template-file deregulator/s3.yaml \
  --stack-name dev-ue2-dereg-internal-s3 \
  --region us-east-2 \
  --profile dev \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
  --parameter-overrides \
    S3BucketName=dev-ue2-dereg-internal \
    EnvironmentName=dev-ue2 \
    ApplicationName=deregulator

aws cloudformation deploy \
  --template-file deregulator/s3.yaml \
  --stack-name dev-ue2-dereg-public-s3 \
  --region us-east-2 \
  --profile dev \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
  --parameter-overrides \
    S3BucketName=dev-ue2-dereg-public \
    EnvironmentName=dev-ue2 \
    ApplicationName=deregulator
