#!/bin/bash

aws cloudformation deploy --template-file misc/ec2-user-keypair.yaml --stack-name ec2-user-keypair --region us-west-2
