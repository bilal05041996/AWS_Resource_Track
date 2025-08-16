#!/bin/bash

#This script will report the AWS resource usage

echo "List s3 buckets"
aws s3 ls

echo "List EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "List lambda functions"
aws lambda list-functions

echo "List IAM users"
aws iam list-users
