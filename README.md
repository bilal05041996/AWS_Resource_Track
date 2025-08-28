# AWS Resource Usage Reporter

This is a simple Bash script that reports basic AWS resource usage using the AWS CLI. It lists S3 buckets, EC2 instances, Lambda functions, and IAM users in your AWS account.

## Prerequisites

Before using this script, ensure the following are set up:

- **AWS CLI** installed and configured  
  [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)  
  Run `aws configure` to set up your credentials.

- **jq** installed  
  `jq` is used to parse JSON output from AWS CLI.  
  [Install jq](https://stedolan.github.io/jq/download/)

- Appropriate **IAM permissions** to list the following:
  - S3 buckets
  - EC2 instances
  - Lambda functions
  - IAM users

## Usage

1. Save the script to a file, e.g. `aws_resource_report.sh`.
2. Make it executable:

   ```bash
   chmod +x aws_resource_report.sh

3. Run the script:

./aws_resource_report.sh

## What It Does

This script performs the following actions:

1. Lists all S3 buckets in your AWS account

2. Lists all EC2 instance IDs

3. Lists all Lambda functions

4. Lists all IAM users

## Example Output:-

List s3 buckets
2025-08-25 14:22:10 my-first-bucket
2025-08-26 09:18:03 project-data-storage

List EC2 instances
"i-0abcd1234efgh5678"
"i-0ijkl9012mnop3456"

List lambda functions
{
    "Functions": [
        {
            "FunctionName": "my-function",
            ...
        },
        ...
    ]
}

List IAM users
{
    "Users": [
        {
            "UserName": "admin",
            ...
        },
        ...
    ]
}

