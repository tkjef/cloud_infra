#!/bin/bash

if [ $# -ne 0 ]; then
    echo "Please remove the darn argument(s)!"
else
    aws cloudformation deploy \
    --template-file s3/prod-staffplus-s3-pw.yaml \
    --stack-name prod-staffplus-s3-pw \
    --region us-west-2
fi
