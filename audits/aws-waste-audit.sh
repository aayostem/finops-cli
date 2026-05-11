#!/bin/bash
# Note: Uses GNU date format. On macOS, use 'brew install coreutils'
echo "🚀 Starting AWS Waste Audit..."

echo "🔍 Checking for unattached EBS volumes..."
aws ec2 describe-volumes --filters Name=status,Values=available --query 'Volumes[*].VolumeId' --output table

echo "🔍 Checking for idle Load Balancers..."
aws elbv2 describe-load-balancers --query 'LoadBalancers[?State.Code==`active`].LoadBalancerArn' --output table
