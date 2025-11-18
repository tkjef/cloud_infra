#!/bin/bash

aws cloudformation deploy --template-file alarms/lb_5xx_alarms.yaml --stack-name lb-5xx-alarms --region us-west-2

aws cloudformation deploy --template-file alarms/lambda_error_alarms.yaml --stack-name lambda-error-alarms --region us-west-2

aws cloudformation deploy --template-file alarms/lb_unhealthy_hosts_alarms.yaml --stack-name lb-unhealthy-hosts --region us-west-2

aws cloudformation deploy --template-file alarms/ec2_cpu_alarms.yaml --stack-name ec2-cpu-alarms --region us-west-2

aws cloudformation deploy --template-file alarms/rds_alarms.yaml --stack-name rds-alarms --region us-west-2

aws cloudformation deploy --template-file alarms/people-ai_db_alarms.yaml --stack-name people-ai-db-alarms --region us-west-2

aws cloudformation deploy --template-file alarms/guard_duty.yaml --stack-name guard-duty --region us-west-1

aws cloudformation deploy --template-file alarms/guard_duty.yaml --stack-name guard-duty --region us-west-2

aws cloudformation deploy --template-file alarms/people-ai_db_alarms.yaml --stack-name people-ai-db-alarms --region us-west-2

aws cloudformation deploy --template-file alarms/lb_latency_alarms.yaml --stack-name latency-alarms --region us-west-2

aws cloudformation deploy --template-file alarms/dynamodb_read_capacity_alarms.yaml --stack-name dynamodb-read-capacity --region us-west-2

aws cloudformation deploy --template-file alarms/dynamodb_write_capacity_alarms.yaml --stack-name dynamodb-write-capacity-alarms --region us-west-2

aws cloudformation deploy --template-file alarms/pdf-extraction-alb_alarms.yaml --stack-name pdf-extraction-alb-alarms --region us-west-2
