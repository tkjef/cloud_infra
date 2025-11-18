# soc2_remediation

## awscli steps taken

aws cloudwatch put-metric-alarm \
  --alarm-name "AllLambdaFunctionsErrors" \
  --alarm-description "Alarm for errors across all Lambda functions" \
  --metric-name Errors \
  --namespace AWS/Lambda \
  --statistic Sum \
  --period 300 \
  --evaluation-periods 1 \
  --threshold 1 \
  --comparison-operator GreaterThanOrEqualToThreshold \
  --treat-missing-data missing \
  --region us-west-2 \
  --alarm-actions arn:aws:sns:us-west-2:638891785980:lambda-error-alarms

aws cloudtrail update-trail \
    --name do-not-delete-rds-custom-638891785980-us-west-2-eb9016 \
    --region us-west-2 \
    --enable-log-file-validation

aws ec2 modify-instance-metadata-options \
    --instance-id i-02654ec5cde7e3e46 \
    --region us-west-2 \
    --http-tokens required \
    --http-endpoint enabled

aws ec2 modify-instance-metadata-options \
    --instance-id i-02c9139d4cd737d8f \
    --region us-west-2 \
    --http-tokens required \
    --http-endpoint enabled

aws ec2 modify-instance-metadata-options \
    --instance-id i-0df8de4cde2512665 \
    --region us-west-2 \
    --http-tokens required \
    --http-endpoint enabled

aws s3api put-public-access-block \
  --bucket tempsqldumps \
  --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true"

# public ssh denied
aws ec2 describe-security-groups \
  --filters "Name=ip-permission.from-port,Values=22" "Name=ip-permission.to-port,Values=22" "Name=ip-permission.cidr,Values=0.0.0.0/0" \
  --query "SecurityGroups[*].{Name:GroupName,ID:GroupId,VpcId:VpcId}" \
  --region us-west-2 \
  --output table

aws ec2 create-security-group \
  --group-name restricted-ssh \
  --description "restricted SSH vpc-0188d118fdedd84eb" \
  --region us-west-2 \
  --vpc-id vpc-0188d118fdedd84eb

aws ec2 create-security-group \
  --group-name restricted-ssh \
  --description "restricted SSH vpc-020719dfaa3e12a6b" \
  --region us-west-2 \
  --vpc-id vpc-020719dfaa3e12a6b

aws ec2 create-security-group \
  --group-name restricted-ssh \
  --description "restricted SSH vpc-0fc6dcc7bf02c5b4a" \
  --region us-west-2 \
  --vpc-id vpc-0fc6dcc7bf02c5b4a

aws ec2 authorize-security-group-ingress \
  --group-id sg-0f66817e266def576 \
  --protocol tcp \
  --port 22 \
  --region us-west-2 \
  --cidr 10.19.0.0/16

aws ec2 authorize-security-group-ingress \
  --group-id sg-0ee507287d028b03b \
  --protocol tcp \
  --port 22 \
  --region us-west-2 \
  --cidr 10.19.0.0/16

aws ec2 authorize-security-group-ingress \
  --group-id sg-0b8dbe62e4b4eb7af \
  --protocol tcp \
  --port 22 \
  --region us-west-2 \
  --cidr 10.19.0.0/16

aws ec2 modify-instance-attribute \
  --instance-id i-0b9916524ae9a3281 \
  --region us-west-2 \
  --groups sg-0b8dbe62e4b4eb7af sg-01f0131fb36528559

aws ec2 modify-instance-attribute \
  --instance-id i-021fd8a32f9d437ac \
  --region us-west-2 \
  --groups sg-0b8dbe62e4b4eb7af sg-0dbbcf1fabf7302a7

aws ec2 modify-instance-attribute \
  --instance-id i-02654ec5cde7e3e46 \
  --region us-west-2 \
  --groups sg-04fe729143c846c95 sg-0ee507287d028b03b

aws ec2 modify-instance-attribute \
  --instance-id i-02c9139d4cd737d8f \
  --region us-west-2 \
  --groups sg-0d22fec767a38ebd9 sg-0ee507287d028b03b

aws ec2 modify-instance-attribute \
  --instance-id i-0db1d928bdbed41d4 \
  --region us-west-2 \
  --groups sg-0d5a1a5b08835e190 sg-0f66817e266def576

aws ec2 revoke-security-group-ingress \
  --group-id sg-01f0131fb36528559 \
  --region us-west-2 \
  --protocol tcp \
  --port 22 \
  --cidr 0.0.0.0/0

aws ec2 revoke-security-group-ingress \
  --group-id sg-0dbbcf1fabf7302a7 \
  --region us-west-2 \
  --protocol tcp \
  --port 22 \
  --cidr 0.0.0.0/0

aws ec2 revoke-security-group-ingress \
  --group-id sg-04fe729143c846c95 \
  --region us-west-2 \
  --protocol tcp \
  --port 22 \
  --cidr 0.0.0.0/0

aws ec2 revoke-security-group-ingress \
  --group-id sg-0d22fec767a38ebd9 \
  --region us-west-2 \
  --protocol tcp \
  --port 22 \
  --cidr 0.0.0.0/0

aws ec2 revoke-security-group-ingress \
  --group-id sg-0d5a1a5b08835e190 \
  --region us-west-2 \
  --protocol tcp \
  --port 22 \
  --cidr 0.0.0.0/0
