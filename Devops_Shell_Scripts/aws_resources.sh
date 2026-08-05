#!/bin/bash
#########################################################################
# Author : Ravindra Reddy
# Date   : 05/08/2026
#
# This script displays the AWS resources available in your AWS account.
# Currently, it lists EC2 instances, S3 buckets, and Lambda functions.
#
# Version : V1
#########################################################################

set -e # Exit the script when there is an error.

echo -e "EC2 Instances:\n"
aws ec2 describe-instances \
  --query "Reservations[].Instances[].Tags[?Key=='Name']|[].Value" \
  --output table

echo -e "S3 Buckets:\n"
aws s3 ls

echo -e "Lambda Functions:\n"
aws lambda list-functions \
    --query "Functions[].FunctionName" \
    --output table


# Add this script to crontab and redirect its output to a file.
# It runs daily and stores the AWS resource details in the specified file.